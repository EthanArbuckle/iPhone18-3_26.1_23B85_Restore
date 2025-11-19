@interface PUTileIdentifier
- (BOOL)isEqual:(id)a3;
- (PUTileIdentifier)initWithIndexPath:(id)a3 tileKind:(id)a4 dataSourceIdentifier:(id)a5;
- (id)description;
@end

@implementation PUTileIdentifier

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PUTileIdentifier *)self indexPath];
  v7 = [v6 pu_shortDescription];
  v8 = [(PUTileIdentifier *)self tileKind];
  v9 = [(PUTileIdentifier *)self dataSourceIdentifier];
  v10 = [v3 stringWithFormat:@"<%@: %p indexPath: %@; tileKind: %@; dataSourceIdentifier: %@>", v5, self, v7, v8, v9];;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 hash];
  v6 = v5 == [(PUTileIdentifier *)self hash]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(NSIndexPath *)self->_indexPath isEqual:v4[2]]&& [(NSString *)self->_tileKind isEqualToString:v4[3]]&& [(NSString *)self->_dataSourceIdentifier isEqualToString:v4[4]];

  return v6;
}

- (PUTileIdentifier)initWithIndexPath:(id)a3 tileKind:(id)a4 dataSourceIdentifier:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_8:
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PUTileLayoutInfo.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"tileKind != nil"}];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"PUTileLayoutInfo.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];

  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_9:
  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"PUTileLayoutInfo.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"dataSourceIdentifier != nil"}];

LABEL_4:
  v21.receiver = self;
  v21.super_class = PUTileIdentifier;
  v13 = [(PUTileIdentifier *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_indexPath, a3);
    objc_storeStrong(&v14->_tileKind, a4);
    objc_storeStrong(&v14->_dataSourceIdentifier, a5);
    v15 = [v12 hash];
    v16 = [v11 hash] - v15 + 32 * v15;
    v14->_hash = [v10 hash] - v16 + 32 * v16 + 29791;
  }

  return v14;
}

@end