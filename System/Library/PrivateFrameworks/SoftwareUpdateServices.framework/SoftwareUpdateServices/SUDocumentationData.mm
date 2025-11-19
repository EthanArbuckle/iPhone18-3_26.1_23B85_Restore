@interface SUDocumentationData
- (SUDocumentationData)initWithCoder:(id)a3;
- (SUDocumentationData)initWithSUCoreDocumentationData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUDocumentationData

- (SUDocumentationData)initWithSUCoreDocumentationData:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SUDocumentationData;
  v5 = [(SUDocumentationData *)&v19 init];
  if (v5)
  {
    v6 = [v4 readme];
    v7 = [v6 copy];
    readme = v5->_readme;
    v5->_readme = v7;

    v9 = [v4 readmeSummary];
    v10 = [v9 copy];
    readmeSummary = v5->_readmeSummary;
    v5->_readmeSummary = v10;

    v12 = [v4 license];
    v13 = [v12 copy];
    license = v5->_license;
    v5->_license = v13;

    v15 = [v4 humanReadableUpdateName];
    v16 = [v15 copy];
    humanReadableUpdateName = v5->_humanReadableUpdateName;
    v5->_humanReadableUpdateName = v16;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SUDocumentationData *)self humanReadableUpdateName];
  v5 = [(SUDocumentationData *)self readme];
  v6 = [(SUDocumentationData *)self readmeSummary];
  v7 = [(SUDocumentationData *)self license];
  v8 = [v3 stringWithFormat:@"\n            SUDocumentationData\n            humanReadableUpdateName: %@\n            readme: %@\n            readmeSummary: %@\n            license: %@", v4, v5, v6, v7];

  return v8;
}

- (SUDocumentationData)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SUDocumentationData;
  v5 = [(SUDocumentationData *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"humanReadableUpdateName"];
    [(SUDocumentationData *)v5 setHumanReadableUpdateName:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readMe"];
    [(SUDocumentationData *)v5 setReadme:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readMeSummary"];
    [(SUDocumentationData *)v5 setReadmeSummary:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"license"];
    [(SUDocumentationData *)v5 setLicense:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  humanReadableUpdateName = self->_humanReadableUpdateName;
  v5 = a3;
  [v5 encodeObject:humanReadableUpdateName forKey:@"humanReadableUpdateName"];
  [v5 encodeObject:self->_readme forKey:@"readMe"];
  [v5 encodeObject:self->_readmeSummary forKey:@"readMeSummary"];
  [v5 encodeObject:self->_license forKey:@"license"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setHumanReadableUpdateName:self->_humanReadableUpdateName];
  [v4 setReadme:self->_readme];
  [v4 setReadmeSummary:self->_readmeSummary];
  [v4 setLicense:self->_license];
  return v4;
}

@end