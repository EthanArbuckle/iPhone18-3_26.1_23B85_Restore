@interface WiFiAwarePublishServiceSpecificInfo
- (BOOL)blobEquals:(id)equals;
- (BOOL)instanceNameEquals:(id)equals;
- (BOOL)isEqual:(id)equal;
- (BOOL)txtRecordEquals:(id)equals;
- (WiFiAwarePublishServiceSpecificInfo)init;
- (WiFiAwarePublishServiceSpecificInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WiFiAwarePublishServiceSpecificInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  blob = [(WiFiAwarePublishServiceSpecificInfo *)self blob];
  [coderCopy encodeObject:blob forKey:@"WiFiAwarePublishServiceSpecificInfo.blob"];

  txtRecordData = [(WiFiAwarePublishServiceSpecificInfo *)self txtRecordData];
  [coderCopy encodeObject:txtRecordData forKey:@"WiFiAwarePublishServiceSpecificInfo.txt"];

  instanceName = [(WiFiAwarePublishServiceSpecificInfo *)self instanceName];
  [coderCopy encodeObject:instanceName forKey:@"WiFiAwarePublishServiceSpecificInfo.instanceName"];
}

- (WiFiAwarePublishServiceSpecificInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(WiFiAwarePublishServiceSpecificInfo *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishServiceSpecificInfo.blob"];
  [(WiFiAwarePublishServiceSpecificInfo *)v5 setBlob:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishServiceSpecificInfo.txt"];
  [(WiFiAwarePublishServiceSpecificInfo *)v5 setTxtRecordData:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishServiceSpecificInfo.instanceName"];

  [(WiFiAwarePublishServiceSpecificInfo *)v5 setInstanceName:v8];
  return v5;
}

- (WiFiAwarePublishServiceSpecificInfo)init
{
  v4.receiver = self;
  v4.super_class = WiFiAwarePublishServiceSpecificInfo;
  v2 = [(WiFiAwarePublishServiceSpecificInfo *)&v4 init];
  [(WiFiAwarePublishServiceSpecificInfo *)v2 setBlob:0];
  [(WiFiAwarePublishServiceSpecificInfo *)v2 setTxtRecordData:0];
  [(WiFiAwarePublishServiceSpecificInfo *)v2 setInstanceName:0];
  return v2;
}

- (BOOL)blobEquals:(id)equals
{
  equalsCopy = equals;
  blob = [(WiFiAwarePublishServiceSpecificInfo *)self blob];
  blob2 = [equalsCopy blob];
  if (blob == blob2)
  {
    v9 = 1;
  }

  else
  {
    blob3 = [(WiFiAwarePublishServiceSpecificInfo *)self blob];
    blob4 = [equalsCopy blob];
    v9 = [blob3 isEqual:blob4];
  }

  return v9;
}

- (BOOL)txtRecordEquals:(id)equals
{
  equalsCopy = equals;
  txtRecordData = [(WiFiAwarePublishServiceSpecificInfo *)self txtRecordData];
  txtRecordData2 = [equalsCopy txtRecordData];
  if (txtRecordData == txtRecordData2)
  {
    v9 = 1;
  }

  else
  {
    txtRecordData3 = [(WiFiAwarePublishServiceSpecificInfo *)self txtRecordData];
    txtRecordData4 = [equalsCopy txtRecordData];
    v9 = [txtRecordData3 isEqual:txtRecordData4];
  }

  return v9;
}

- (BOOL)instanceNameEquals:(id)equals
{
  equalsCopy = equals;
  instanceName = [(WiFiAwarePublishServiceSpecificInfo *)self instanceName];
  instanceName2 = [equalsCopy instanceName];
  if (instanceName == instanceName2)
  {
    v9 = 1;
  }

  else
  {
    instanceName3 = [(WiFiAwarePublishServiceSpecificInfo *)self instanceName];
    instanceName4 = [equalsCopy instanceName];
    v9 = [instanceName3 isEqual:instanceName4];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 0;
LABEL_8:
    v6 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_10;
  }

  v5 = equalCopy;
  if ([(WiFiAwarePublishServiceSpecificInfo *)self blobEquals:v5]&& [(WiFiAwarePublishServiceSpecificInfo *)self txtRecordEquals:v5]&& [(WiFiAwarePublishServiceSpecificInfo *)self instanceNameEquals:v5])
  {
    goto LABEL_8;
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  blob = [(WiFiAwarePublishServiceSpecificInfo *)self blob];
  txtRecordData = [(WiFiAwarePublishServiceSpecificInfo *)self txtRecordData];
  instanceName = [(WiFiAwarePublishServiceSpecificInfo *)self instanceName];
  v7 = [v3 stringWithFormat:@"<WiFiAwarePublishServiceSpecificInfo: blob=%@, txtRecordData=%@, instanceName=%@>", blob, txtRecordData, instanceName];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(WiFiAwarePublishServiceSpecificInfo);
  blob = [(WiFiAwarePublishServiceSpecificInfo *)self blob];
  [(WiFiAwarePublishServiceSpecificInfo *)v4 setBlob:blob];

  txtRecordData = [(WiFiAwarePublishServiceSpecificInfo *)self txtRecordData];
  [(WiFiAwarePublishServiceSpecificInfo *)v4 setTxtRecordData:txtRecordData];

  instanceName = [(WiFiAwarePublishServiceSpecificInfo *)self instanceName];
  [(WiFiAwarePublishServiceSpecificInfo *)v4 setInstanceName:instanceName];

  return v4;
}

@end