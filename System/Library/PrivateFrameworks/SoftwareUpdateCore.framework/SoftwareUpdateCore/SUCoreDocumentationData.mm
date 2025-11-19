@interface SUCoreDocumentationData
- (SUCoreDocumentationData)initWithCoder:(id)a3;
- (SUCoreDocumentationData)initWithDocumentationDataDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCoreDocumentationData

- (SUCoreDocumentationData)initWithDocumentationDataDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SUCoreDocumentationData;
  v5 = [(SUCoreDocumentationData *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"ReadMe"];
    readme = v5->_readme;
    v5->_readme = v6;

    v8 = [v4 objectForKeyedSubscript:@"ReadMeSummary"];
    readmeSummary = v5->_readmeSummary;
    v5->_readmeSummary = v8;

    v10 = [v4 objectForKeyedSubscript:@"License"];
    license = v5->_license;
    v5->_license = v10;

    v12 = [v4 objectForKeyedSubscript:@"HumanReadableUpdateName"];
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v12 encoding:4];
      humanReadableUpdateName = v5->_humanReadableUpdateName;
      v5->_humanReadableUpdateName = v13;
    }

    v15 = [v4 objectForKeyedSubscript:@"HumanReadableUpdateTitle"];
    if (v15)
    {
      v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v15 encoding:4];
      humanReadableUpdateTitle = v5->_humanReadableUpdateTitle;
      v5->_humanReadableUpdateTitle = v16;
    }

    v18 = [v4 objectForKeyedSubscript:@"HumanReadableUpdateVersion"];
    if (v18)
    {
      v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v18 encoding:4];
      humanReadableUpdateVersion = v5->_humanReadableUpdateVersion;
      v5->_humanReadableUpdateVersion = v19;
    }
  }

  return v5;
}

- (id)summary
{
  v18 = MEMORY[0x277CCACA8];
  v19 = [(SUCoreDocumentationData *)self humanReadableUpdateName];
  if (v19)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v17 = v3;
  v4 = [(SUCoreDocumentationData *)self humanReadableUpdateTitle];
  if (v4)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v16 = v5;
  v6 = [(SUCoreDocumentationData *)self humanReadableUpdateVersion];
  if (v6)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [(SUCoreDocumentationData *)self readme];
  if (v8)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [(SUCoreDocumentationData *)self readmeSummary];
  if (v10)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [(SUCoreDocumentationData *)self license];
  if (v12)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = [v18 stringWithFormat:@"SUCoreDocumentationData(humanReadableUpdateName:%@|humanReadableUpdateTitle:%@|humanReadableUpdateVersion:%@|readMe:%@|readMeSummary:%@|license:%@)", v17, v16, v7, v9, v11, v13];

  return v14;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithString:@"SUCoreDocumentationData:\n"];
  v4 = [(SUCoreDocumentationData *)self humanReadableUpdateName];
  [v3 appendFormat:@"humanReadableUpdateName:\n%@\n", v4];

  v5 = [(SUCoreDocumentationData *)self humanReadableUpdateTitle];
  [v3 appendFormat:@"humanReadableUpdateTitle:\n%@\n", v5];

  v6 = [(SUCoreDocumentationData *)self humanReadableUpdateVersion];
  [v3 appendFormat:@"humanReadableUpdateVersion:\n%@\n", v6];

  v7 = [(SUCoreDocumentationData *)self readme];
  [v3 appendFormat:@"readme:\n%@\n", v7];

  v8 = [(SUCoreDocumentationData *)self readmeSummary];
  [v3 appendFormat:@"readmeSummary:\n%@\n", v8];

  v9 = [(SUCoreDocumentationData *)self license];
  [v3 appendFormat:@"license:\n%@\n", v9];

  return v3;
}

- (SUCoreDocumentationData)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SUCoreDocumentationData;
  v5 = [(SUCoreDocumentationData *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HumanReadableUpdateName"];
    humanReadableUpdateName = v5->_humanReadableUpdateName;
    v5->_humanReadableUpdateName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HumanReadableUpdateTitle"];
    humanReadableUpdateTitle = v5->_humanReadableUpdateTitle;
    v5->_humanReadableUpdateTitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HumanReadableUpdateVersion"];
    humanReadableUpdateVersion = v5->_humanReadableUpdateVersion;
    v5->_humanReadableUpdateVersion = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ReadMe"];
    readme = v5->_readme;
    v5->_readme = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ReadMeSummary"];
    readmeSummary = v5->_readmeSummary;
    v5->_readmeSummary = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"License"];
    license = v5->_license;
    v5->_license = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreDocumentationData *)self humanReadableUpdateName];
  [v4 encodeObject:v5 forKey:@"HumanReadableUpdateName"];

  v6 = [(SUCoreDocumentationData *)self humanReadableUpdateTitle];
  [v4 encodeObject:v6 forKey:@"HumanReadableUpdateTitle"];

  v7 = [(SUCoreDocumentationData *)self humanReadableUpdateVersion];
  [v4 encodeObject:v7 forKey:@"HumanReadableUpdateVersion"];

  v8 = [(SUCoreDocumentationData *)self readme];
  [v4 encodeObject:v8 forKey:@"ReadMe"];

  v9 = [(SUCoreDocumentationData *)self readmeSummary];
  [v4 encodeObject:v9 forKey:@"ReadMeSummary"];

  v10 = [(SUCoreDocumentationData *)self license];
  [v4 encodeObject:v10 forKey:@"License"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(SUCoreDocumentationData *)self humanReadableUpdateName];
  v7 = [v6 copyWithZone:a3];
  [v5 setHumanReadableUpdateName:v7];

  v8 = [(SUCoreDocumentationData *)self humanReadableUpdateTitle];
  v9 = [v8 copyWithZone:a3];
  [v5 setHumanReadableUpdateTitle:v9];

  v10 = [(SUCoreDocumentationData *)self humanReadableUpdateVersion];
  v11 = [v10 copyWithZone:a3];
  [v5 setHumanReadableUpdateVersion:v11];

  v12 = [(SUCoreDocumentationData *)self readme];
  v13 = [v12 copyWithZone:a3];
  [v5 setReadme:v13];

  v14 = [(SUCoreDocumentationData *)self readmeSummary];
  v15 = [v14 copyWithZone:a3];
  [v5 setReadmeSummary:v15];

  v16 = [(SUCoreDocumentationData *)self license];
  v17 = [v16 copyWithZone:a3];
  [v5 setLicense:v17];

  return v5;
}

@end