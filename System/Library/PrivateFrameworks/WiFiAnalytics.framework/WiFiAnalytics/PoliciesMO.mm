@interface PoliciesMO
- (BOOL)setRelationOn:(id)a3 to:(id)a4 withError:(id *)a5;
@end

@implementation PoliciesMO

- (BOOL)setRelationOn:(id)a3 to:(id)a4 withError:(id *)a5
{
  v41[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(PoliciesMO *)self entity];
  v11 = [v10 relationshipsByName];
  v12 = [v11 allKeys];
  v13 = [v12 containsObject:v8];

  if ((v13 & 1) == 0)
  {
    if (!a5)
    {
      goto LABEL_4;
    }

    v22 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A588];
    v23 = MEMORY[0x1E696AEC0];
    v24 = [(PoliciesMO *)self entity];
    v25 = [v24 name];
    v26 = [v23 stringWithFormat:@"relationship %@ does not exist in entity %@", v8, v25];
    v41[0] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    *a5 = [v22 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9043 userInfo:v27];

LABEL_9:
    LOBYTE(a5) = 0;
    goto LABEL_4;
  }

  v14 = [v9 entity];
  v15 = [(PoliciesMO *)self entity];
  v16 = [v15 relationshipsByName];
  v17 = [v16 objectForKeyedSubscript:v8];
  v18 = [v17 destinationEntity];
  v19 = [v14 isEqual:v18];

  if ((v19 & 1) == 0)
  {
    if (!a5)
    {
      goto LABEL_4;
    }

    v36 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A588];
    v28 = MEMORY[0x1E696AEC0];
    v37 = [v9 entity];
    v29 = [v37 name];
    v30 = [(PoliciesMO *)self entity];
    v31 = [v30 relationshipsByName];
    v32 = [v31 objectForKeyedSubscript:v8];
    v33 = [v32 destinationEntity];
    v34 = [v28 stringWithFormat:@"obj %@(%@) is not of expected entity (%@)", v9, v29, v33];
    v39 = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    *a5 = [v36 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9043 userInfo:v35];

    goto LABEL_9;
  }

  [(PoliciesMO *)self setValue:v9 forKey:v8];
  LOBYTE(a5) = 1;
LABEL_4:

  v20 = *MEMORY[0x1E69E9840];
  return a5;
}

@end