@interface PXSharedLibraryMockDataSourceManager
+ (PXSharedLibraryMockDataSourceManager)invitationsDataSourceManager;
+ (PXSharedLibraryMockDataSourceManager)ownerExitingDataSourceManager;
+ (PXSharedLibraryMockDataSourceManager)ownerPreviewDataSourceManager;
+ (PXSharedLibraryMockDataSourceManager)ownerSharedLibraryDataSourceManager;
+ (PXSharedLibraryMockDataSourceManager)participantExitingDataSourceManager;
+ (PXSharedLibraryMockDataSourceManager)participantPreviewDataSourceManager;
+ (PXSharedLibraryMockDataSourceManager)participantSharedLibraryDataSourceManager;
+ (id)_sharedLibraryMockWithType:(int64_t)a3;
- (PXSharedLibraryMockDataSourceManager)init;
- (PXSharedLibraryMockDataSourceManager)initWithDataSourceType:(int64_t)a3;
- (id)createInitialDataSource;
- (id)fetchExiting;
- (id)fetchPreview;
- (id)fetchSharedLibrary;
- (void)fetchSharedLibraryForURL:(id)a3 completionHandler:(id)a4;
@end

@implementation PXSharedLibraryMockDataSourceManager

- (id)createInitialDataSource
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() _sharedLibraryMockWithType:self->_type];
  v3 = [PXSharedLibraryMockDataSource alloc];
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [(PXSharedLibraryMockDataSource *)v3 initWithMocks:v4];

  return v5;
}

- (id)fetchExiting
{
  if ((self->_type - 7) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryMockDataSource.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"_type == _PXSharedLibraryMockDataSourceTypeExitingOwner || _type == _PXSharedLibraryMockDataSourceTypeExitingParticipant"}];
  }

  v3 = objc_opt_class();
  type = self->_type;

  return [v3 _sharedLibraryMockWithType:type];
}

- (id)fetchSharedLibrary
{
  if ((self->_type - 5) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryMockDataSource.m" lineNumber:159 description:{@"Invalid parameter not satisfying: %@", @"(_type == _PXSharedLibraryMockDataSourceTypeSharedLibraryOwner) || (_type == _PXSharedLibraryMockDataSourceTypeSharedLibraryParticipant)"}];
  }

  v3 = objc_opt_class();
  type = self->_type;

  return [v3 _sharedLibraryMockWithType:type];
}

- (id)fetchPreview
{
  if ((self->_type - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryMockDataSource.m" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"(_type == _PXSharedLibraryMockDataSourceTypePreviewOwner) || (_type == _PXSharedLibraryMockDataSourceTypePreviewParticipant)"}];
  }

  v3 = objc_opt_class();
  type = self->_type;

  return [v3 _sharedLibraryMockWithType:type];
}

- (void)fetchSharedLibraryForURL:(id)a3 completionHandler:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (v11)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryMockDataSource.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"shareURL"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryMockDataSource.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v8 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 debugDescription:@"Failed to shared library for URL in the PXSharedLibraryMockDataSourceManager"];
  v7[2](v7, 0, v8);
}

- (PXSharedLibraryMockDataSourceManager)initWithDataSourceType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PXSharedLibraryMockDataSourceManager;
  result = [(PXSectionedDataSourceManager *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (PXSharedLibraryMockDataSourceManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryMockDataSource.m" lineNumber:87 description:{@"%s is not available as initializer", "-[PXSharedLibraryMockDataSourceManager init]"}];

  abort();
}

+ (id)_sharedLibraryMockWithType:(int64_t)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(PXSharedLibraryMock);
  v5 = v4;
  if (a3 > 2)
  {
    if (a3 <= 4)
    {
      if (a3 == 3)
      {
        [(PXSharedLibraryMock *)v4 setIsOwned:1];
      }

      goto LABEL_13;
    }

    if (a3 != 5)
    {
      if (a3 == 6)
      {
        [(PXSharedLibraryMock *)v4 setIsPublished:1];
        [(PXSharedLibraryMock *)v5 setIsExiting:1];
      }

      goto LABEL_17;
    }

    [(PXSharedLibraryMock *)v4 setIsPublished:1];
    [(PXSharedLibraryMock *)v5 setIsExiting:1];
LABEL_16:
    [(PXSharedLibraryMock *)v5 setIsOwned:1];
    goto LABEL_17;
  }

  switch(a3)
  {
    case 0:
LABEL_13:
      [(PXSharedLibraryMock *)v5 setIsPublished:1];
      break;
    case 1:
      [(PXSharedLibraryMock *)v4 setIsInPreview:1];
      goto LABEL_16;
    case 2:
      [(PXSharedLibraryMock *)v4 setIsInPreview:1];
      break;
  }

LABEL_17:
  v6 = objc_alloc_init(PXSharedLibraryMockParticipant);
  [(PXSharedLibraryMockParticipant *)v6 setEmailAddress:@"owner.doe@email.com"];
  v7 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  [v7 setGivenName:@"Sender"];
  [v7 setFamilyName:@"Doe"];
  [(PXSharedLibraryMockParticipant *)v6 setNameComponents:v7];
  [(PXSharedLibraryMockParticipant *)v6 setIsCurrentUser:[(PXSharedLibraryMock *)v5 isOwned]];
  v8 = objc_alloc_init(PXSharedLibraryMockParticipant);
  [(PXSharedLibraryMockParticipant *)v8 setEmailAddress:@"receiver.doe@email.com"];
  v9 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  [v9 setGivenName:@"Receiver"];
  [v9 setFamilyName:@"Doe"];
  [(PXSharedLibraryMockParticipant *)v8 setNameComponents:v9];
  [(PXSharedLibraryMockParticipant *)v8 setIsCurrentUser:[(PXSharedLibraryMock *)v5 isOwned]^ 1];
  [(PXSharedLibraryMock *)v5 setOwner:v6];
  v14[0] = v6;
  v14[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [(PXSharedLibraryMock *)v5 setParticipants:v10];

  v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-604800.0];
  v12 = [PXSharedLibraryRule customizedRuleWithStartDate:v11 personUUIDs:&unk_1F1910000];
  [(PXSharedLibraryMock *)v5 setRule:v12];

  return v5;
}

+ (PXSharedLibraryMockDataSourceManager)participantExitingDataSourceManager
{
  v2 = [[a1 alloc] initWithDataSourceType:6];

  return v2;
}

+ (PXSharedLibraryMockDataSourceManager)ownerExitingDataSourceManager
{
  v2 = [[a1 alloc] initWithDataSourceType:5];

  return v2;
}

+ (PXSharedLibraryMockDataSourceManager)participantSharedLibraryDataSourceManager
{
  v2 = [[a1 alloc] initWithDataSourceType:4];

  return v2;
}

+ (PXSharedLibraryMockDataSourceManager)ownerSharedLibraryDataSourceManager
{
  v2 = [[a1 alloc] initWithDataSourceType:3];

  return v2;
}

+ (PXSharedLibraryMockDataSourceManager)participantPreviewDataSourceManager
{
  v2 = [[a1 alloc] initWithDataSourceType:2];

  return v2;
}

+ (PXSharedLibraryMockDataSourceManager)ownerPreviewDataSourceManager
{
  v2 = [[a1 alloc] initWithDataSourceType:1];

  return v2;
}

+ (PXSharedLibraryMockDataSourceManager)invitationsDataSourceManager
{
  v2 = [[a1 alloc] initWithDataSourceType:0];

  return v2;
}

@end