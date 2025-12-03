@interface _RETrainingProxy
- (_RETrainingProxy)initWithServiceName:(id)name;
- (void)availableRelevanceEngines:(id)engines;
- (void)fetchAllElementIdentifiersInRelevanceEngine:(id)engine completion:(id)completion;
- (void)fetchAllElementsInRelevanceEngine:(id)engine completion:(id)completion;
- (void)gatherDiagnosticLogsForRelevanceEngine:(id)engine completion:(id)completion;
- (void)relevanceEngine:(id)engine createElementFromDescription:(id)description completion:(id)completion;
- (void)relevanceEngine:(id)engine encodedObjectAtPath:(id)path completion:(id)completion;
- (void)relevanceEngine:(id)engine performCommand:(id)command withOptions:(id)options completion:(id)completion;
- (void)relevanceEngine:(id)engine runActionOfElementWithDescription1:(id)description1 completion:(id)completion;
@end

@implementation _RETrainingProxy

- (_RETrainingProxy)initWithServiceName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = _RETrainingProxy;
  v6 = [(_RETrainingProxy *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceName, name);
    v8 = [[RETrainingSimulationClient alloc] initWithServiceName:nameCopy delegate:v7];
    client = v7->_client;
    v7->_client = v8;

    v10 = +[RETrainingSimulationServer sharedServer];
    server = v7->_server;
    v7->_server = v10;

    [(RETrainingSimulationServer *)v7->_server addObserver:v7];
  }

  return v7;
}

- (void)availableRelevanceEngines:(id)engines
{
  client = self->_client;
  enginesCopy = engines;
  availableRelevanceEngines = [(RETrainingSimulationClient *)client availableRelevanceEngines];
  enginesCopy[2](enginesCopy, availableRelevanceEngines, 0);
}

- (void)fetchAllElementIdentifiersInRelevanceEngine:(id)engine completion:(id)completion
{
  client = self->_client;
  completionCopy = completion;
  v7 = [(RETrainingSimulationClient *)client fetchAllElementIdentifiersInRelevanceEngine:engine];
  completionCopy[2](completionCopy, v7, 0);
}

- (void)fetchAllElementsInRelevanceEngine:(id)engine completion:(id)completion
{
  client = self->_client;
  completionCopy = completion;
  v7 = [(RETrainingSimulationClient *)client fetchAllElementsInRelevanceEngine:engine];
  completionCopy[2](completionCopy, v7, 0);
}

- (void)gatherDiagnosticLogsForRelevanceEngine:(id)engine completion:(id)completion
{
  client = self->_client;
  completionCopy = completion;
  v7 = [(RETrainingSimulationClient *)client diagnosticLogFileForRelevanceEngine:engine];
  v10 = 0;
  v8 = [v7 bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&v10];
  v9 = v10;
  completionCopy[2](completionCopy, v8, v9);
}

- (void)relevanceEngine:(id)engine createElementFromDescription:(id)description completion:(id)completion
{
  client = self->_client;
  completionCopy = completion;
  [(RETrainingSimulationClient *)client relevanceEngine:engine createElementFromDescription:description];
  completionCopy[2](completionCopy, 0);
}

- (void)relevanceEngine:(id)engine encodedObjectAtPath:(id)path completion:(id)completion
{
  client = self->_client;
  completionCopy = completion;
  v9 = [(RETrainingSimulationClient *)client relevanceEngine:engine encodedObjectAtPath:path];
  completionCopy[2](completionCopy, v9);
}

- (void)relevanceEngine:(id)engine performCommand:(id)command withOptions:(id)options completion:(id)completion
{
  client = self->_client;
  completionCopy = completion;
  [(RETrainingSimulationClient *)client relevanceEngine:engine performCommand:command withOptions:options];
  completionCopy[2](completionCopy, 0);
}

- (void)relevanceEngine:(id)engine runActionOfElementWithDescription1:(id)description1 completion:(id)completion
{
  client = self->_client;
  completionCopy = completion;
  completionCopy[2](completionCopy, [(RETrainingSimulationClient *)client relevanceEngine:engine runActionOfElementWithDescription1:description1], 0);
}

@end