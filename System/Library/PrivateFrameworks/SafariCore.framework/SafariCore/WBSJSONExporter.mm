@interface WBSJSONExporter
- (WBSJSONExporter)initWithFileHandle:(id)handle error:(id *)error;
- (WBSJSONExporter)initWithJSONWriter:(id)writer error:(id *)error;
- (WBSJSONExporter)initWithURL:(id)l error:(id *)error;
- (void)finishWithCompletionHandler:(id)handler;
@end

@implementation WBSJSONExporter

- (WBSJSONExporter)initWithURL:(id)l error:(id *)error
{
  v6 = [MEMORY[0x1E696AC00] safari_fileHandleWithURL:l options:1537 createMode:416 error:error];
  if (v6)
  {
    self = [(WBSJSONExporter *)self initWithFileHandle:v6 error:error];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WBSJSONExporter)initWithFileHandle:(id)handle error:(id *)error
{
  handleCopy = handle;
  v7 = [[WBSJSONWriter alloc] initWithFileHandle:handleCopy options:11];

  v8 = [(WBSJSONExporter *)self initWithJSONWriter:v7 error:error];
  return v8;
}

- (WBSJSONExporter)initWithJSONWriter:(id)writer error:(id *)error
{
  writerCopy = writer;
  v16.receiver = self;
  v16.super_class = WBSJSONExporter;
  v8 = [(WBSJSONExporter *)&v16 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v8->_jsonWriter, writer);
  if (![writerCopy beginObjectWithError:error])
  {
    goto LABEL_5;
  }

  dataType = [objc_opt_class() dataType];
  schemaVersion = [objc_opt_class() schemaVersion];
  v12 = WBSCreateExportMetadataDictionary(dataType, schemaVersion);
  v13 = [writerCopy addEntry:v12 forKey:@"metadata" error:error];

  if (v13)
  {
    v14 = v9;
  }

  else
  {
LABEL_5:
    v14 = 0;
  }

  return v14;
}

- (void)finishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  jsonWriter = [(WBSJSONExporter *)self jsonWriter];
  v7 = 0;
  [jsonWriter finishEncodingWithError:&v7];
  v6 = v7;

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v6);
  }
}

@end