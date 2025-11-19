@interface PGCameraLibrarySwitchQuestion
- (BOOL)isEquivalentToPersistedQuestion:(id)a3;
- (BOOL)isEquivalentToQuestion:(id)a3;
- (PGCameraLibrarySwitchQuestion)initWithAssetUUID:(id)a3 libraryScopeUUID:(id)a4 previousSwitchState:(id)a5 currentSwitchState:(id)a6;
@end

@implementation PGCameraLibrarySwitchQuestion

- (BOOL)isEquivalentToPersistedQuestion:(id)a3
{
  v4 = a3;
  v5 = [v4 entityIdentifier];
  v6 = [(PGCameraLibrarySwitchQuestion *)self entityIdentifier];
  if ([v5 isEqualToString:v6] && (v7 = objc_msgSend(v4, "entityType"), v7 == -[PGCameraLibrarySwitchQuestion entityType](self, "entityType")))
  {
    v8 = [v4 type];
    v9 = v8 == -[PGCameraLibrarySwitchQuestion type](self, "type") || [v4 type] == 20;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEquivalentToQuestion:(id)a3
{
  v4 = a3;
  v5 = [v4 entityIdentifier];
  v6 = [(PGCameraLibrarySwitchQuestion *)self entityIdentifier];
  if ([v5 isEqualToString:v6] && (v7 = objc_msgSend(v4, "entityType"), v7 == -[PGCameraLibrarySwitchQuestion entityType](self, "entityType")))
  {
    v8 = [v4 type];
    v9 = v8 == [(PGCameraLibrarySwitchQuestion *)self type];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PGCameraLibrarySwitchQuestion)initWithAssetUUID:(id)a3 libraryScopeUUID:(id)a4 previousSwitchState:(id)a5 currentSwitchState:(id)a6
{
  v23[3] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = PGCameraLibrarySwitchQuestion;
  v14 = [(PGCameraLibrarySwitchQuestion *)&v21 init];
  if (v14)
  {
    v15 = [v10 copy];
    entityIdentifier = v14->_entityIdentifier;
    v14->_entityIdentifier = v15;

    v14->_state = 0;
    v22[0] = @"previousCameraLibrarySwitchState";
    v22[1] = @"currentCameraLibrarySwitchState";
    v23[0] = v12;
    v23[1] = v13;
    v22[2] = @"libraryScopeUUID";
    v23[2] = v11;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
    additionalInfo = v14->_additionalInfo;
    v14->_additionalInfo = v17;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

@end