@interface PUTileIdentifier
- (BOOL)isEqual:(id)equal;
- (PUTileIdentifier)initWithIndexPath:(id)path tileKind:(id)kind dataSourceIdentifier:(id)identifier;
- (id)description;
@end

@implementation PUTileIdentifier

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  indexPath = [(PUTileIdentifier *)self indexPath];
  pu_shortDescription = [indexPath pu_shortDescription];
  tileKind = [(PUTileIdentifier *)self tileKind];
  dataSourceIdentifier = [(PUTileIdentifier *)self dataSourceIdentifier];
  v10 = [v3 stringWithFormat:@"<%@: %p indexPath: %@; tileKind: %@; dataSourceIdentifier: %@>", v5, self, pu_shortDescription, tileKind, dataSourceIdentifier];;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy hash];
  v6 = v5 == [(PUTileIdentifier *)self hash]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(NSIndexPath *)self->_indexPath isEqual:equalCopy[2]]&& [(NSString *)self->_tileKind isEqualToString:equalCopy[3]]&& [(NSString *)self->_dataSourceIdentifier isEqualToString:equalCopy[4]];

  return v6;
}

- (PUTileIdentifier)initWithIndexPath:(id)path tileKind:(id)kind dataSourceIdentifier:(id)identifier
{
  pathCopy = path;
  kindCopy = kind;
  identifierCopy = identifier;
  if (pathCopy)
  {
    if (kindCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTileLayoutInfo.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"tileKind != nil"}];

    if (identifierCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUTileLayoutInfo.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];

  if (!kindCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (identifierCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUTileLayoutInfo.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"dataSourceIdentifier != nil"}];

LABEL_4:
  v21.receiver = self;
  v21.super_class = PUTileIdentifier;
  v13 = [(PUTileIdentifier *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_indexPath, path);
    objc_storeStrong(&v14->_tileKind, kind);
    objc_storeStrong(&v14->_dataSourceIdentifier, identifier);
    v15 = [identifierCopy hash];
    v16 = [kindCopy hash] - v15 + 32 * v15;
    v14->_hash = [pathCopy hash] - v16 + 32 * v16 + 29791;
  }

  return v14;
}

@end