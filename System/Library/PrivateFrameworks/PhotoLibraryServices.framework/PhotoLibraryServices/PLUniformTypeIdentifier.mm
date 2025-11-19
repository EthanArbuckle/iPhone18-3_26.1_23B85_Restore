@interface PLUniformTypeIdentifier
+ (BOOL)isPlayableVideoTypeIdentifierString:(id)a3;
+ (id)jpegUniformTypeIdentifier;
+ (id)plistUniformTypeIdentifier;
+ (id)quicktimeUniformTypeIdentifier;
+ (id)utiWithCompactRepresentation:(id)a3 conformanceHint:(signed __int16)a4;
+ (id)utiWithIdentifier:(id)a3;
- (BOOL)conformsToAudio;
- (BOOL)conformsToData;
- (BOOL)isDynamic;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUniformTypeIdentifier:(id)a3;
- (BOOL)isLosslessEncoding;
- (BOOL)isPlayableVideo;
- (BOOL)isPrimaryImageFormat;
- (NSString)compactRepresentation;
- (PLUniformTypeIdentifier)initWithIdentifier:(id)a3 conformanceHint:(signed __int16)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)preferredExtension;
- (unint64_t)hash;
@end

@implementation PLUniformTypeIdentifier

- (BOOL)isDynamic
{
  v2 = MEMORY[0x1E69C08F0];
  v3 = [(PLUniformTypeIdentifier *)self identifier];
  v4 = [v2 typeWithIdentifier:v3];
  v5 = [v4 isDynamic];

  return v5;
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
  v2 = [(PLUniformTypeIdentifier *)self identifier];
  v3 = [PLManagedAsset preferredFileExtensionForType:v2];

  return v3;
}

- (BOOL)conformsToData
{
  v3 = [(PLUniformTypeIdentifier *)self identifier];
  v4 = [MEMORY[0x1E69C08F0] supplementalResourceAAEType];
  v5 = [v4 identifier];
  if ([v3 isEqualToString:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(PLUniformTypeIdentifier *)self identifier];
    v8 = [MEMORY[0x1E69C08F0] supplementalResourceXMPType];
    v9 = [v8 identifier];
    v6 = [v7 isEqualToString:v9];
  }

  v10 = [(PLUniformTypeIdentifier *)self identifier];
  if (v6)
  {
    v11 = 1;
  }

  else
  {
    v12 = [MEMORY[0x1E69C08F0] typeWithIdentifier:v10];
    v11 = [v12 conformsToType:*MEMORY[0x1E6982D60]];
  }

  return v11;
}

- (BOOL)conformsToAudio
{
  v2 = MEMORY[0x1E69C08F0];
  v3 = [(PLUniformTypeIdentifier *)self identifier];
  v4 = [v2 typeWithIdentifier:v3];
  v5 = [v4 conformsToType:*MEMORY[0x1E6982CD0]];

  return v5;
}

- (BOOL)isPlayableVideo
{
  v3 = objc_opt_class();
  v4 = [(PLUniformTypeIdentifier *)self identifier];
  LOBYTE(v3) = [v3 isPlayableVideoTypeIdentifierString:v4];

  return v3;
}

- (BOOL)isPrimaryImageFormat
{
  v2 = [(PLUniformTypeIdentifier *)self identifier];
  v3 = [PLManagedAsset isPrimaryImageFormatForUTI:v2];

  return v3;
}

- (NSString)compactRepresentation
{
  v2 = [(PLUniformTypeIdentifier *)self identifier];
  v3 = [PLUniformTypeIdentifierIntegratedLookup compactRepresentationForIdentifier:v2];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PLUniformTypeIdentifier alloc];
  v5 = [(PLUniformTypeIdentifier *)self identifier];
  v6 = [(PLUniformTypeIdentifier *)v4 initWithIdentifier:v5 conformanceHint:[(PLUniformTypeIdentifier *)self conformanceHint]];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PLUniformTypeIdentifier;
  v4 = [(PLUniformTypeIdentifier *)&v8 description];
  v5 = [(PLUniformTypeIdentifier *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (unint64_t)hash
{
  v2 = [(PLUniformTypeIdentifier *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [(PLUniformTypeIdentifier *)self isEqualToUniformTypeIdentifier:v4];
  }

  return v5;
}

- (BOOL)isEqualToUniformTypeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PLUniformTypeIdentifier *)self identifier];
  v6 = [v4 identifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (PLUniformTypeIdentifier)initWithIdentifier:(id)a3 conformanceHint:(signed __int16)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = PLUniformTypeIdentifier;
  v8 = [(PLUniformTypeIdentifier *)&v13 init];
  if (v8)
  {
    if (![v7 length])
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:v8 file:@"PLUniformTypeIdentifier.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"identifier.length > 0"}];
    }

    v9 = [v7 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v8->_conformanceHint = a4;
    v8->_wellKnownFileType = PLFileTypeFromIdentifier(v7);
  }

  return v8;
}

+ (id)plistUniformTypeIdentifier
{
  v3 = [*MEMORY[0x1E6982F68] identifier];
  v4 = [a1 utiWithIdentifier:v3];

  return v4;
}

+ (id)quicktimeUniformTypeIdentifier
{
  v3 = [*MEMORY[0x1E6982F80] identifier];
  v4 = [a1 utiWithIdentifier:v3];

  return v4;
}

+ (id)jpegUniformTypeIdentifier
{
  v3 = [*MEMORY[0x1E6982E58] identifier];
  v4 = [a1 utiWithIdentifier:v3];

  return v4;
}

+ (BOOL)isPlayableVideoTypeIdentifierString:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = [MEMORY[0x1E69C08F0] typeWithIdentifier:?];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [MEMORY[0x1E69C08F0] supportedMovieTypes];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          if ([v3 conformsToType:*(*(&v9 + 1) + 8 * i)])
          {
            LOBYTE(v5) = 1;
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

+ (id)utiWithCompactRepresentation:(id)a3 conformanceHint:(signed __int16)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 length])
  {
    v7 = [PLUniformTypeIdentifierIntegratedLookup identifierFromCompactRepresentation:v6];
    if ([v7 length])
    {
      v8 = [[a1 alloc] initWithIdentifier:v7 conformanceHint:v4];
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

+ (id)utiWithIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [[a1 alloc] initWithIdentifier:v4 conformanceHint:{+[PLUniformTypeIdentifierIntegratedLookup conformanceHintForIdentifier:](PLUniformTypeIdentifierIntegratedLookup, "conformanceHintForIdentifier:", v4)}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end