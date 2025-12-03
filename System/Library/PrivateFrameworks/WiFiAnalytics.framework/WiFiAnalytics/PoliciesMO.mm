@interface PoliciesMO
- (BOOL)setRelationOn:(id)on to:(id)to withError:(id *)error;
@end

@implementation PoliciesMO

- (BOOL)setRelationOn:(id)on to:(id)to withError:(id *)error
{
  v41[1] = *MEMORY[0x1E69E9840];
  onCopy = on;
  toCopy = to;
  entity = [(PoliciesMO *)self entity];
  relationshipsByName = [entity relationshipsByName];
  allKeys = [relationshipsByName allKeys];
  v13 = [allKeys containsObject:onCopy];

  if ((v13 & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_4;
    }

    v22 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A588];
    v23 = MEMORY[0x1E696AEC0];
    entity2 = [(PoliciesMO *)self entity];
    name = [entity2 name];
    v26 = [v23 stringWithFormat:@"relationship %@ does not exist in entity %@", onCopy, name];
    v41[0] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    *error = [v22 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9043 userInfo:v27];

LABEL_9:
    LOBYTE(error) = 0;
    goto LABEL_4;
  }

  entity3 = [toCopy entity];
  entity4 = [(PoliciesMO *)self entity];
  relationshipsByName2 = [entity4 relationshipsByName];
  v17 = [relationshipsByName2 objectForKeyedSubscript:onCopy];
  destinationEntity = [v17 destinationEntity];
  v19 = [entity3 isEqual:destinationEntity];

  if ((v19 & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_4;
    }

    v36 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A588];
    v28 = MEMORY[0x1E696AEC0];
    entity5 = [toCopy entity];
    name2 = [entity5 name];
    entity6 = [(PoliciesMO *)self entity];
    relationshipsByName3 = [entity6 relationshipsByName];
    v32 = [relationshipsByName3 objectForKeyedSubscript:onCopy];
    destinationEntity2 = [v32 destinationEntity];
    v34 = [v28 stringWithFormat:@"obj %@(%@) is not of expected entity (%@)", toCopy, name2, destinationEntity2];
    v39 = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    *error = [v36 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9043 userInfo:v35];

    goto LABEL_9;
  }

  [(PoliciesMO *)self setValue:toCopy forKey:onCopy];
  LOBYTE(error) = 1;
LABEL_4:

  v20 = *MEMORY[0x1E69E9840];
  return error;
}

@end