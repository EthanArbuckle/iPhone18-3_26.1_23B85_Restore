@interface PLEditSource
- (PLEditSource)initWithResolvedSource:(id)a3 mediaType:(int64_t)a4;
- (void)setIdentifier:(id)a3;
- (void)setResolvedSource:(id)a3 mediaType:(int64_t)a4;
@end

@implementation PLEditSource

- (void)setIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PLEditSource *)self resolvedSource];
  [v5 setAssetIdentifier:v4];
}

- (void)setResolvedSource:(id)a3 mediaType:(int64_t)a4
{
  v7 = a3;
  if (v7)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PLEditSource.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"resolvedSource != nil"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"PLEditSource.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"mediaType != NUMediaTypeUnknown"}];

LABEL_3:
  resolvedSource = self->_resolvedSource;
  self->_resolvedSource = v7;
  self->_mediaType = a4;
}

- (PLEditSource)initWithResolvedSource:(id)a3 mediaType:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PLEditSource.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"source != nil"}];

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PLEditSource.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"mediaType != NUMediaTypeUnknown"}];

    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13.receiver = self;
  v13.super_class = PLEditSource;
  v8 = [(PLEditSource *)&v13 init];
  resolvedSource = v8->_resolvedSource;
  v8->_resolvedSource = v7;
  v8->_mediaType = a4;

  return v8;
}

@end