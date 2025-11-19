@interface VUIDocumentContextDataMovie
- (BOOL)isEqual:(id)a3;
- (VUIDocumentContextDataMovie)initWithMovieID:(id)a3;
- (id)jsonData;
@end

@implementation VUIDocumentContextDataMovie

- (VUIDocumentContextDataMovie)initWithMovieID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VUIDocumentContextDataMovie;
  v6 = [(VUIDocumentContextDataMovie *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_movieID, a3);
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
  v6 = [(VUIDocumentContextData *)self extensionContextData];
  v7 = [v6 jsonData];
  [v5 setObject:v7 forKeyedSubscript:@"tvExtensionConfig"];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(VUIDocumentContextDataMovie *)self movieID];
    v7 = [v5 movieID];
    if ([v6 isEqual:v7])
    {
      v8 = [(VUIDocumentContextData *)self extensionContextData];
      v9 = [v5 extensionContextData];
      v10 = [v8 isEqual:v9];
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