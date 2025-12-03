@interface PLUniformTypeIdentifier
+ (BOOL)isPlayableVideoTypeIdentifierString:(id)string;
+ (id)jpegUniformTypeIdentifier;
+ (id)plistUniformTypeIdentifier;
+ (id)quicktimeUniformTypeIdentifier;
+ (id)utiWithCompactRepresentation:(id)representation conformanceHint:(signed __int16)hint;
+ (id)utiWithIdentifier:(id)identifier;
- (BOOL)conformsToAudio;
- (BOOL)conformsToData;
- (BOOL)isDynamic;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUniformTypeIdentifier:(id)identifier;
- (BOOL)isLosslessEncoding;
- (BOOL)isPlayableVideo;
- (BOOL)isPrimaryImageFormat;
- (NSString)compactRepresentation;
- (PLUniformTypeIdentifier)initWithIdentifier:(id)identifier conformanceHint:(signed __int16)hint;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)preferredExtension;
- (unint64_t)hash;
@end

@implementation PLUniformTypeIdentifier

- (BOOL)isDynamic
{
  v2 = MEMORY[0x1E69C08F0];
  identifier = [(PLUniformTypeIdentifier *)self identifier];
  v4 = [v2 typeWithIdentifier:identifier];
  isDynamic = [v4 isDynamic];

  return isDynamic;
}

- (BOOL)isLosslessEncoding
{
  if ([(PLUniformTypeIdentifier *)self conformsToRawImage])
  {
    return 1;
  }

  if ([(PLUniformTypeIdentifier *)self conformsToImage])
  {
    return self->_wellKnownFileType - 6 < 3;
  }

  if ([(PLUniformTypeIdentifier *)self conformsToMovie])
  {
    return 0;
  }

  return ![(PLUniformTypeIdentifier *)self conformsToAudio];
}

- (id)preferredExtension
{
  identifier = [(PLUniformTypeIdentifier *)self identifier];
  v3 = [PLManagedAsset preferredFileExtensionForType:identifier];

  return v3;
}

- (BOOL)conformsToData
{
  identifier = [(PLUniformTypeIdentifier *)self identifier];
  supplementalResourceAAEType = [MEMORY[0x1E69C08F0] supplementalResourceAAEType];
  identifier2 = [supplementalResourceAAEType identifier];
  if ([identifier isEqualToString:identifier2])
  {
    v6 = 1;
  }

  else
  {
    identifier3 = [(PLUniformTypeIdentifier *)self identifier];
    supplementalResourceXMPType = [MEMORY[0x1E69C08F0] supplementalResourceXMPType];
    identifier4 = [supplementalResourceXMPType identifier];
    v6 = [identifier3 isEqualToString:identifier4];
  }

  identifier5 = [(PLUniformTypeIdentifier *)self identifier];
  if (v6)
  {
    v11 = 1;
  }

  else
  {
    v12 = [MEMORY[0x1E69C08F0] typeWithIdentifier:identifier5];
    v11 = [v12 conformsToType:*MEMORY[0x1E6982D60]];
  }

  return v11;
}

- (BOOL)conformsToAudio
{
  v2 = MEMORY[0x1E69C08F0];
  identifier = [(PLUniformTypeIdentifier *)self identifier];
  v4 = [v2 typeWithIdentifier:identifier];
  v5 = [v4 conformsToType:*MEMORY[0x1E6982CD0]];

  return v5;
}

- (BOOL)isPlayableVideo
{
  v3 = objc_opt_class();
  identifier = [(PLUniformTypeIdentifier *)self identifier];
  LOBYTE(v3) = [v3 isPlayableVideoTypeIdentifierString:identifier];

  return v3;
}

- (BOOL)isPrimaryImageFormat
{
  identifier = [(PLUniformTypeIdentifier *)self identifier];
  v3 = [PLManagedAsset isPrimaryImageFormatForUTI:identifier];

  return v3;
}

- (NSString)compactRepresentation
{
  identifier = [(PLUniformTypeIdentifier *)self identifier];
  v3 = [PLUniformTypeIdentifierIntegratedLookup compactRepresentationForIdentifier:identifier];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PLUniformTypeIdentifier alloc];
  identifier = [(PLUniformTypeIdentifier *)self identifier];
  v6 = [(PLUniformTypeIdentifier *)v4 initWithIdentifier:identifier conformanceHint:[(PLUniformTypeIdentifier *)self conformanceHint]];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PLUniformTypeIdentifier;
  v4 = [(PLUniformTypeIdentifier *)&v8 description];
  identifier = [(PLUniformTypeIdentifier *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, identifier];

  return v6;
}

- (unint64_t)hash
{
  identifier = [(PLUniformTypeIdentifier *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [(PLUniformTypeIdentifier *)self isEqualToUniformTypeIdentifier:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToUniformTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifier = [(PLUniformTypeIdentifier *)self identifier];
  identifier2 = [identifierCopy identifier];

  LOBYTE(identifierCopy) = [identifier isEqualToString:identifier2];
  return identifierCopy;
}

- (PLUniformTypeIdentifier)initWithIdentifier:(id)identifier conformanceHint:(signed __int16)hint
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = PLUniformTypeIdentifier;
  v8 = [(PLUniformTypeIdentifier *)&v13 init];
  if (v8)
  {
    if (![identifierCopy length])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v8 file:@"PLUniformTypeIdentifier.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"identifier.length > 0"}];
    }

    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v8->_conformanceHint = hint;
    v8->_wellKnownFileType = PLFileTypeFromIdentifier(identifierCopy);
  }

  return v8;
}

+ (id)plistUniformTypeIdentifier
{
  identifier = [*MEMORY[0x1E6982F68] identifier];
  v4 = [self utiWithIdentifier:identifier];

  return v4;
}

+ (id)quicktimeUniformTypeIdentifier
{
  identifier = [*MEMORY[0x1E6982F80] identifier];
  v4 = [self utiWithIdentifier:identifier];

  return v4;
}

+ (id)jpegUniformTypeIdentifier
{
  identifier = [*MEMORY[0x1E6982E58] identifier];
  v4 = [self utiWithIdentifier:identifier];

  return v4;
}

+ (BOOL)isPlayableVideoTypeIdentifierString:(id)string
{
  v14 = *MEMORY[0x1E69E9840];
  if (string)
  {
    v3 = [MEMORY[0x1E69C08F0] typeWithIdentifier:?];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    supportedMovieTypes = [MEMORY[0x1E69C08F0] supportedMovieTypes];
    v5 = [supportedMovieTypes countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(supportedMovieTypes);
          }

          if ([v3 conformsToType:*(*(&v9 + 1) + 8 * i)])
          {
            LOBYTE(v5) = 1;
            goto LABEL_12;
          }
        }

        v5 = [supportedMovieTypes countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (id)utiWithCompactRepresentation:(id)representation conformanceHint:(signed __int16)hint
{
  hintCopy = hint;
  representationCopy = representation;
  if ([representationCopy length])
  {
    v7 = [PLUniformTypeIdentifierIntegratedLookup identifierFromCompactRepresentation:representationCopy];
    if ([v7 length])
    {
      v8 = [[self alloc] initWithIdentifier:v7 conformanceHint:hintCopy];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)utiWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v5 = [[self alloc] initWithIdentifier:identifierCopy conformanceHint:{+[PLUniformTypeIdentifierIntegratedLookup conformanceHintForIdentifier:](PLUniformTypeIdentifierIntegratedLookup, "conformanceHintForIdentifier:", identifierCopy)}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end