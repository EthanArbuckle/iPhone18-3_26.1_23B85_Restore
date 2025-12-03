@interface PLEditSource
- (PLEditSource)initWithResolvedSource:(id)source mediaType:(int64_t)type;
- (void)setIdentifier:(id)identifier;
- (void)setResolvedSource:(id)source mediaType:(int64_t)type;
@end

@implementation PLEditSource

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  resolvedSource = [(PLEditSource *)self resolvedSource];
  [resolvedSource setAssetIdentifier:identifierCopy];
}

- (void)setResolvedSource:(id)source mediaType:(int64_t)type
{
  sourceCopy = source;
  if (sourceCopy)
  {
    if (type)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLEditSource.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"resolvedSource != nil"}];

    if (type)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLEditSource.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"mediaType != NUMediaTypeUnknown"}];

LABEL_3:
  resolvedSource = self->_resolvedSource;
  self->_resolvedSource = sourceCopy;
  self->_mediaType = type;
}

- (PLEditSource)initWithResolvedSource:(id)source mediaType:(int64_t)type
{
  sourceCopy = source;
  if (!sourceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLEditSource.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"source != nil"}];

    if (type)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLEditSource.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"mediaType != NUMediaTypeUnknown"}];

    goto LABEL_3;
  }

  if (!type)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13.receiver = self;
  v13.super_class = PLEditSource;
  v8 = [(PLEditSource *)&v13 init];
  resolvedSource = v8->_resolvedSource;
  v8->_resolvedSource = sourceCopy;
  v8->_mediaType = type;

  return v8;
}

@end