@interface TRILogTreatmentReader
- (NSString)path;
- (TRILogTreatmentReader)initWithProjectId:(int)a3 paths:(id)a4;
- (id)fetchRolloutLogNamespaces;
- (id)namespaceLoggingTreatmentPath;
- (id)treatments;
@end

@implementation TRILogTreatmentReader

- (id)treatments
{
  v2 = MEMORY[0x277CBEA90];
  v3 = [(TRILogTreatmentReader *)self path];
  v9 = 0;
  v4 = [v2 dataWithContentsOfFile:v3 options:8 error:&v9];

  if ([v4 length])
  {
    v5 = [objc_alloc(MEMORY[0x277D73AF8]) initWithData:v4];
    v6 = v5;
    if (v5 && [v5 treatmentsCount])
    {
      v7 = [v6 treatments];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)path
{
  v10[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = [(TRIPaths *)self->_paths namespaceDescriptorsDir];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", self->_projectId, v4, @"Projects"];
  v10[2] = v5;
  v10[3] = @"treatmentsV2.data";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:4];
  v7 = [v3 pathWithComponents:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (TRILogTreatmentReader)initWithProjectId:(int)a3 paths:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TRILogTreatmentReader;
  v8 = [(TRILogTreatmentReader *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_projectId = a3;
    objc_storeStrong(&v8->_paths, a4);
  }

  return v9;
}

- (id)namespaceLoggingTreatmentPath
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = [(TRIPaths *)self->_paths namespaceDescriptorsDir];
  v8[0] = v3;
  v8[1] = @"logTreamentNamespaceData.data";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v5 = [v2 pathWithComponents:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)fetchRolloutLogNamespaces
{
  v3 = objc_alloc(MEMORY[0x277CBEA90]);
  v4 = [(TRILogTreatmentReader *)self namespaceLoggingTreatmentPath];
  v5 = [v3 initWithContentsOfFile:v4 options:1 error:0];

  if ([v5 length])
  {
    v6 = [objc_alloc(MEMORY[0x277D73B38]) initWithData:v5];
    if ([v6 namespacesCount])
    {
      v7 = [v6 namespaces];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end