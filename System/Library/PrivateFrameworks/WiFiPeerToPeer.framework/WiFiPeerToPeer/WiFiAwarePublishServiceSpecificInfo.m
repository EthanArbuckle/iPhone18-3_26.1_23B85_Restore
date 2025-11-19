@interface WiFiAwarePublishServiceSpecificInfo
- (BOOL)blobEquals:(id)a3;
- (BOOL)instanceNameEquals:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)txtRecordEquals:(id)a3;
- (WiFiAwarePublishServiceSpecificInfo)init;
- (WiFiAwarePublishServiceSpecificInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFiAwarePublishServiceSpecificInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwarePublishServiceSpecificInfo *)self blob];
  [v4 encodeObject:v5 forKey:@"WiFiAwarePublishServiceSpecificInfo.blob"];

  v6 = [(WiFiAwarePublishServiceSpecificInfo *)self txtRecordData];
  [v4 encodeObject:v6 forKey:@"WiFiAwarePublishServiceSpecificInfo.txt"];

  v7 = [(WiFiAwarePublishServiceSpecificInfo *)self instanceName];
  [v4 encodeObject:v7 forKey:@"WiFiAwarePublishServiceSpecificInfo.instanceName"];
}

- (WiFiAwarePublishServiceSpecificInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwarePublishServiceSpecificInfo *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishServiceSpecificInfo.blob"];
  [(WiFiAwarePublishServiceSpecificInfo *)v5 setBlob:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishServiceSpecificInfo.txt"];
  [(WiFiAwarePublishServiceSpecificInfo *)v5 setTxtRecordData:v7];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishServiceSpecificInfo.instanceName"];

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

- (BOOL)blobEquals:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwarePublishServiceSpecificInfo *)self blob];
  v6 = [v4 blob];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwarePublishServiceSpecificInfo *)self blob];
    v8 = [v4 blob];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)txtRecordEquals:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwarePublishServiceSpecificInfo *)self txtRecordData];
  v6 = [v4 txtRecordData];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwarePublishServiceSpecificInfo *)self txtRecordData];
    v8 = [v4 txtRecordData];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)instanceNameEquals:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwarePublishServiceSpecificInfo *)self instanceName];
  v6 = [v4 instanceName];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwarePublishServiceSpecificInfo *)self instanceName];
    v8 = [v4 instanceName];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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

  v5 = v4;
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
  v4 = [(WiFiAwarePublishServiceSpecificInfo *)self blob];
  v5 = [(WiFiAwarePublishServiceSpecificInfo *)self txtRecordData];
  v6 = [(WiFiAwarePublishServiceSpecificInfo *)self instanceName];
  v7 = [v3 stringWithFormat:@"<WiFiAwarePublishServiceSpecificInfo: blob=%@, txtRecordData=%@, instanceName=%@>", v4, v5, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(WiFiAwarePublishServiceSpecificInfo);
  v5 = [(WiFiAwarePublishServiceSpecificInfo *)self blob];
  [(WiFiAwarePublishServiceSpecificInfo *)v4 setBlob:v5];

  v6 = [(WiFiAwarePublishServiceSpecificInfo *)self txtRecordData];
  [(WiFiAwarePublishServiceSpecificInfo *)v4 setTxtRecordData:v6];

  v7 = [(WiFiAwarePublishServiceSpecificInfo *)self instanceName];
  [(WiFiAwarePublishServiceSpecificInfo *)v4 setInstanceName:v7];

  return v4;
}

@end