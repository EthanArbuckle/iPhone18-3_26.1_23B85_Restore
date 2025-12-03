@interface VUIDocumentContextDataMovie
- (BOOL)isEqual:(id)equal;
- (VUIDocumentContextDataMovie)initWithMovieID:(id)d;
- (id)jsonData;
@end

@implementation VUIDocumentContextDataMovie

- (VUIDocumentContextDataMovie)initWithMovieID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = VUIDocumentContextDataMovie;
  v6 = [(VUIDocumentContextDataMovie *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_movieID, d);
  }

  return v7;
}

- (id)jsonData
{
  v10[2] = *MEMORY[0x1E69E9840];
  movieID = self->_movieID;
  v9[0] = @"id";
  v9[1] = @"type";
  v10[0] = movieID;
  v10[1] = @"Movie";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v5 = [v4 mutableCopy];
  extensionContextData = [(VUIDocumentContextData *)self extensionContextData];
  jsonData = [extensionContextData jsonData];
  [v5 setObject:jsonData forKeyedSubscript:@"tvExtensionConfig"];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    movieID = [(VUIDocumentContextDataMovie *)self movieID];
    movieID2 = [v5 movieID];
    if ([movieID isEqual:movieID2])
    {
      extensionContextData = [(VUIDocumentContextData *)self extensionContextData];
      extensionContextData2 = [v5 extensionContextData];
      v10 = [extensionContextData isEqual:extensionContextData2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end