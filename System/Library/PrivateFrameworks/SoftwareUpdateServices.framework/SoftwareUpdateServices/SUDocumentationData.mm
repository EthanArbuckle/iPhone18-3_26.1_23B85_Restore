@interface SUDocumentationData
- (SUDocumentationData)initWithCoder:(id)coder;
- (SUDocumentationData)initWithSUCoreDocumentationData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUDocumentationData

- (SUDocumentationData)initWithSUCoreDocumentationData:(id)data
{
  dataCopy = data;
  v19.receiver = self;
  v19.super_class = SUDocumentationData;
  v5 = [(SUDocumentationData *)&v19 init];
  if (v5)
  {
    readme = [dataCopy readme];
    v7 = [readme copy];
    readme = v5->_readme;
    v5->_readme = v7;

    readmeSummary = [dataCopy readmeSummary];
    v10 = [readmeSummary copy];
    readmeSummary = v5->_readmeSummary;
    v5->_readmeSummary = v10;

    license = [dataCopy license];
    v13 = [license copy];
    license = v5->_license;
    v5->_license = v13;

    humanReadableUpdateName = [dataCopy humanReadableUpdateName];
    v16 = [humanReadableUpdateName copy];
    humanReadableUpdateName = v5->_humanReadableUpdateName;
    v5->_humanReadableUpdateName = v16;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  humanReadableUpdateName = [(SUDocumentationData *)self humanReadableUpdateName];
  readme = [(SUDocumentationData *)self readme];
  readmeSummary = [(SUDocumentationData *)self readmeSummary];
  license = [(SUDocumentationData *)self license];
  v8 = [v3 stringWithFormat:@"\n            SUDocumentationData\n            humanReadableUpdateName: %@\n            readme: %@\n            readmeSummary: %@\n            license: %@", humanReadableUpdateName, readme, readmeSummary, license];

  return v8;
}

- (SUDocumentationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SUDocumentationData;
  v5 = [(SUDocumentationData *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"humanReadableUpdateName"];
    [(SUDocumentationData *)v5 setHumanReadableUpdateName:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readMe"];
    [(SUDocumentationData *)v5 setReadme:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readMeSummary"];
    [(SUDocumentationData *)v5 setReadmeSummary:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"license"];
    [(SUDocumentationData *)v5 setLicense:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  humanReadableUpdateName = self->_humanReadableUpdateName;
  coderCopy = coder;
  [coderCopy encodeObject:humanReadableUpdateName forKey:@"humanReadableUpdateName"];
  [coderCopy encodeObject:self->_readme forKey:@"readMe"];
  [coderCopy encodeObject:self->_readmeSummary forKey:@"readMeSummary"];
  [coderCopy encodeObject:self->_license forKey:@"license"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setHumanReadableUpdateName:self->_humanReadableUpdateName];
  [v4 setReadme:self->_readme];
  [v4 setReadmeSummary:self->_readmeSummary];
  [v4 setLicense:self->_license];
  return v4;
}

@end