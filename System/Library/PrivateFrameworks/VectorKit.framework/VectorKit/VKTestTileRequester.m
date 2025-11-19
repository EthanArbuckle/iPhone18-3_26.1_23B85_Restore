@interface VKTestTileRequester
- (void)start;
@end

@implementation VKTestTileRequester

- (void)start
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = [(GEOTileRequester *)self tileRequest];
  v3 = [v2 keyList];

  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v20 = *v27;
    do
    {
      v21 = v4;
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * i);
        v22 = GEOResourceDevResourcesPath();
        v25 = [v22 stringByAppendingPathComponent:@"Tiles"];
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", *(v6 + 6) & 0x3F];
        v8 = [v25 stringByAppendingPathComponent:v7];
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", *(v6 + 6) >> 6];
        v10 = [v8 stringByAppendingPathComponent:v9];
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", *(v6 + 10) & 0x3FFFFFF];
        v12 = [v10 stringByAppendingPathComponent:v11];
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", (*(v6 + 10) | (*(v6 + 14) << 32)) >> 26];
        v14 = [v12 stringByAppendingPathComponent:v13];
        v24 = [v14 stringByAppendingPathExtension:@"vmp4"];

        v15 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v24];
        v16 = [(GEOTileRequester *)self delegate];
        if (v15)
        {
          v17 = [objc_alloc(MEMORY[0x1E69A2600]) initWithData:v15];
          [v16 tileRequester:self receivedData:v17 tileEdition:1 tileSetDB:1 tileSet:0 etag:0 forKey:*v6 userInfo:{v6[1], 0}];
        }

        else
        {
          v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VKTestTileRequesterDomain" code:42 userInfo:0];
          [v16 tileRequester:self receivedError:v17 forKey:{*v6, v6[1]}];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v4);
  }

  v18 = [(GEOTileRequester *)self delegate];
  [v18 tileRequesterFinished:self];
}

@end