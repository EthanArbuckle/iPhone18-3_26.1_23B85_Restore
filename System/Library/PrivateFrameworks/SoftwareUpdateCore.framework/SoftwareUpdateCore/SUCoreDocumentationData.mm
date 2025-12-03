@interface SUCoreDocumentationData
- (SUCoreDocumentationData)initWithCoder:(id)coder;
- (SUCoreDocumentationData)initWithDocumentationDataDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCoreDocumentationData

- (SUCoreDocumentationData)initWithDocumentationDataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = SUCoreDocumentationData;
  v5 = [(SUCoreDocumentationData *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ReadMe"];
    readme = v5->_readme;
    v5->_readme = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ReadMeSummary"];
    readmeSummary = v5->_readmeSummary;
    v5->_readmeSummary = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"License"];
    license = v5->_license;
    v5->_license = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"HumanReadableUpdateName"];
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v12 encoding:4];
      humanReadableUpdateName = v5->_humanReadableUpdateName;
      v5->_humanReadableUpdateName = v13;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"HumanReadableUpdateTitle"];
    if (v15)
    {
      v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v15 encoding:4];
      humanReadableUpdateTitle = v5->_humanReadableUpdateTitle;
      v5->_humanReadableUpdateTitle = v16;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"HumanReadableUpdateVersion"];
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
  humanReadableUpdateName = [(SUCoreDocumentationData *)self humanReadableUpdateName];
  if (humanReadableUpdateName)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v17 = v3;
  humanReadableUpdateTitle = [(SUCoreDocumentationData *)self humanReadableUpdateTitle];
  if (humanReadableUpdateTitle)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v16 = v5;
  humanReadableUpdateVersion = [(SUCoreDocumentationData *)self humanReadableUpdateVersion];
  if (humanReadableUpdateVersion)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  readme = [(SUCoreDocumentationData *)self readme];
  if (readme)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  readmeSummary = [(SUCoreDocumentationData *)self readmeSummary];
  if (readmeSummary)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  license = [(SUCoreDocumentationData *)self license];
  if (license)
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
  humanReadableUpdateName = [(SUCoreDocumentationData *)self humanReadableUpdateName];
  [v3 appendFormat:@"humanReadableUpdateName:\n%@\n", humanReadableUpdateName];

  humanReadableUpdateTitle = [(SUCoreDocumentationData *)self humanReadableUpdateTitle];
  [v3 appendFormat:@"humanReadableUpdateTitle:\n%@\n", humanReadableUpdateTitle];

  humanReadableUpdateVersion = [(SUCoreDocumentationData *)self humanReadableUpdateVersion];
  [v3 appendFormat:@"humanReadableUpdateVersion:\n%@\n", humanReadableUpdateVersion];

  readme = [(SUCoreDocumentationData *)self readme];
  [v3 appendFormat:@"readme:\n%@\n", readme];

  readmeSummary = [(SUCoreDocumentationData *)self readmeSummary];
  [v3 appendFormat:@"readmeSummary:\n%@\n", readmeSummary];

  license = [(SUCoreDocumentationData *)self license];
  [v3 appendFormat:@"license:\n%@\n", license];

  return v3;
}

- (SUCoreDocumentationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = SUCoreDocumentationData;
  v5 = [(SUCoreDocumentationData *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HumanReadableUpdateName"];
    humanReadableUpdateName = v5->_humanReadableUpdateName;
    v5->_humanReadableUpdateName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HumanReadableUpdateTitle"];
    humanReadableUpdateTitle = v5->_humanReadableUpdateTitle;
    v5->_humanReadableUpdateTitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HumanReadableUpdateVersion"];
    humanReadableUpdateVersion = v5->_humanReadableUpdateVersion;
    v5->_humanReadableUpdateVersion = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ReadMe"];
    readme = v5->_readme;
    v5->_readme = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ReadMeSummary"];
    readmeSummary = v5->_readmeSummary;
    v5->_readmeSummary = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"License"];
    license = v5->_license;
    v5->_license = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  humanReadableUpdateName = [(SUCoreDocumentationData *)self humanReadableUpdateName];
  [coderCopy encodeObject:humanReadableUpdateName forKey:@"HumanReadableUpdateName"];

  humanReadableUpdateTitle = [(SUCoreDocumentationData *)self humanReadableUpdateTitle];
  [coderCopy encodeObject:humanReadableUpdateTitle forKey:@"HumanReadableUpdateTitle"];

  humanReadableUpdateVersion = [(SUCoreDocumentationData *)self humanReadableUpdateVersion];
  [coderCopy encodeObject:humanReadableUpdateVersion forKey:@"HumanReadableUpdateVersion"];

  readme = [(SUCoreDocumentationData *)self readme];
  [coderCopy encodeObject:readme forKey:@"ReadMe"];

  readmeSummary = [(SUCoreDocumentationData *)self readmeSummary];
  [coderCopy encodeObject:readmeSummary forKey:@"ReadMeSummary"];

  license = [(SUCoreDocumentationData *)self license];
  [coderCopy encodeObject:license forKey:@"License"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  humanReadableUpdateName = [(SUCoreDocumentationData *)self humanReadableUpdateName];
  v7 = [humanReadableUpdateName copyWithZone:zone];
  [v5 setHumanReadableUpdateName:v7];

  humanReadableUpdateTitle = [(SUCoreDocumentationData *)self humanReadableUpdateTitle];
  v9 = [humanReadableUpdateTitle copyWithZone:zone];
  [v5 setHumanReadableUpdateTitle:v9];

  humanReadableUpdateVersion = [(SUCoreDocumentationData *)self humanReadableUpdateVersion];
  v11 = [humanReadableUpdateVersion copyWithZone:zone];
  [v5 setHumanReadableUpdateVersion:v11];

  readme = [(SUCoreDocumentationData *)self readme];
  v13 = [readme copyWithZone:zone];
  [v5 setReadme:v13];

  readmeSummary = [(SUCoreDocumentationData *)self readmeSummary];
  v15 = [readmeSummary copyWithZone:zone];
  [v5 setReadmeSummary:v15];

  license = [(SUCoreDocumentationData *)self license];
  v17 = [license copyWithZone:zone];
  [v5 setLicense:v17];

  return v5;
}

@end