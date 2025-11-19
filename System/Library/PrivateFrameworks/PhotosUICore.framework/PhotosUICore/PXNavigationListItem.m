@interface PXNavigationListItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNavigationListItem:(id)a3;
- (NSString)description;
- (NSString)visualDescription;
- (PXNavigationListItem)initWithIdentifier:(id)a3 title:(id)a4 accessoryTitle:(id)a5 reorderable:(BOOL)a6 topLevelIdentifier:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PXNavigationListItem

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = [(PXNavigationListItem *)self title];
  v6 = [(PXNavigationListItem *)self identifier];
  v7 = [(PXNavigationListItem *)self isReorderable];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = v8;
  v10 = [v3 stringWithFormat:@"<%@: %p title = %@, identifier = %@, reorderable = %@", v4, self, v5, v6, v9];;

  v11 = [(PXNavigationListItem *)self topLevelIdentifier];

  if (v11)
  {
    v12 = [(PXNavigationListItem *)self topLevelIdentifier];
    [v10 appendFormat:@", topLevelIdentifier = %@", v12];
  }

  v13 = [(PXNavigationListItem *)self glyphImageName];

  if (v13)
  {
    v14 = [(PXNavigationListItem *)self glyphImageName];
    [v10 appendFormat:@", glyphImageName = %@", v14];
  }

  v15 = [(PXNavigationListItem *)self accessoryTitle];

  if (v15)
  {
    v16 = [(PXNavigationListItem *)self accessoryTitle];
    [v10 appendFormat:@", accessoryTitle = %@", v16];
  }

  v17 = [(PXNavigationListItem *)self lockState];
  if (v17 > 2)
  {
    v18 = @"Unknown";
  }

  else
  {
    v18 = off_1E77363C0[v17];
  }

  [v10 appendFormat:@", lockState = %@>", v18];

  return v10;
}

- (unint64_t)hash
{
  v3 = [(PXNavigationListItem *)self identifier];
  v4 = [v3 hash];

  v5 = [(PXNavigationListItem *)self title];
  v6 = [v5 hash] ^ v4;

  v7 = [(PXNavigationListItem *)self accessoryTitle];
  v8 = [v7 hash];

  v9 = [(PXNavigationListItem *)self glyphImageName];
  v10 = v6 ^ v8 ^ [v9 hash];

  v11 = [(PXNavigationListItem *)self topLevelIdentifier];
  v12 = [v11 hash];

  v13 = [(PXNavigationListItem *)self isDraggable];
  v14 = 2;
  if (!v13)
  {
    v14 = 0;
  }

  v15 = v10 ^ v12 ^ v14;
  if ([(PXNavigationListItem *)self isRemovable])
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(PXNavigationListItem *)self isRenamable];
  v18 = 8;
  if (!v17)
  {
    v18 = 0;
  }

  v19 = v16 ^ v18;
  v20 = [(PXNavigationListItem *)self isExpandable];
  v21 = 16;
  if (!v20)
  {
    v21 = 0;
  }

  v22 = v15 ^ v19 ^ v21;
  v23 = [(PXNavigationListItem *)self isGroup];
  v24 = 32;
  if (!v23)
  {
    v24 = 0;
  }

  v25 = v22 ^ v24 ^ ([(PXNavigationListItem *)self indentationLevel]<< 6);
  if ([(PXNavigationListItem *)self isReorderable])
  {
    v26 = 128;
  }

  else
  {
    v26 = 0;
  }

  v27 = [(PXNavigationListItem *)self isDeletable];
  v28 = 256;
  if (!v27)
  {
    v28 = 0;
  }

  v29 = v26 ^ v28;
  v30 = [(PXNavigationListItem *)self displayInline];
  v31 = 512;
  if (!v30)
  {
    v31 = 0;
  }

  v32 = v25 ^ v29 ^ v31 ^ ([(PXNavigationListItem *)self lockState]<< 10);
  v33 = [(PXNavigationListItem *)self collection];
  v34 = [v33 hash];

  return v32 ^ v34;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PXNavigationListItem *)self isEqualToNavigationListItem:v4];
  }

  return v5;
}

- (BOOL)isEqualToNavigationListItem:(id)a3
{
  v4 = a3;
  v5 = [(PXNavigationListItem *)self identifier];
  v6 = [v4 identifier];
  v7 = [v5 isEqualToString:v6];

  if (!v7)
  {
    goto LABEL_29;
  }

  v8 = [(PXNavigationListItem *)self title];
  v9 = [v4 title];
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    v11 = [v8 isEqualToString:v9];

    if ((v11 & 1) == 0)
    {
LABEL_29:
      v37 = 0;
      goto LABEL_30;
    }
  }

  v12 = [(PXNavigationListItem *)self accessoryTitle];
  v13 = [v4 accessoryTitle];
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    v15 = [v12 isEqualToString:v13];

    if ((v15 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v16 = [(PXNavigationListItem *)self glyphImageName];
  v17 = [v4 glyphImageName];
  v18 = v17;
  if (v16 == v17)
  {
  }

  else
  {
    v19 = [v16 isEqualToString:v17];

    if ((v19 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v20 = [(PXNavigationListItem *)self topLevelIdentifier];
  v21 = [v4 topLevelIdentifier];
  v22 = v21;
  if (v20 == v21)
  {
  }

  else
  {
    v23 = [v20 isEqualToString:v21];

    if ((v23 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v24 = [(PXNavigationListItem *)self isDraggable];
  if (v24 != [v4 isDraggable])
  {
    goto LABEL_29;
  }

  v25 = [(PXNavigationListItem *)self isReorderable];
  if (v25 != [v4 isReorderable])
  {
    goto LABEL_29;
  }

  v26 = [(PXNavigationListItem *)self isRemovable];
  if (v26 != [v4 isRemovable])
  {
    goto LABEL_29;
  }

  v27 = [(PXNavigationListItem *)self isRenamable];
  if (v27 != [v4 isRenamable])
  {
    goto LABEL_29;
  }

  v28 = [(PXNavigationListItem *)self isExpandable];
  if (v28 != [v4 isExpandable])
  {
    goto LABEL_29;
  }

  v29 = [(PXNavigationListItem *)self isDeletable];
  if (v29 != [v4 isDeletable])
  {
    goto LABEL_29;
  }

  v30 = [(PXNavigationListItem *)self isGroup];
  if (v30 != [v4 isGroup])
  {
    goto LABEL_29;
  }

  v31 = [(PXNavigationListItem *)self indentationLevel];
  if (v31 != [v4 indentationLevel])
  {
    goto LABEL_29;
  }

  v32 = [(PXNavigationListItem *)self lockState];
  if (v32 != [v4 lockState])
  {
    goto LABEL_29;
  }

  v33 = [(PXNavigationListItem *)self collection];
  v34 = [v4 collection];
  if (v33 == v34)
  {
    v37 = 1;
  }

  else
  {
    v35 = v34;
    v36 = [v33 isEqual:v34];
    v34 = v35;
    v37 = v36;
  }

LABEL_30:
  return v37;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(PXNavigationListItem *)self identifier];
  v6 = [(PXNavigationListItem *)self title];
  v7 = [(PXNavigationListItem *)self accessoryTitle];
  v8 = [(PXNavigationListItem *)self isReorderable];
  v9 = [(PXNavigationListItem *)self topLevelIdentifier];
  v10 = [v4 initWithIdentifier:v5 title:v6 accessoryTitle:v7 reorderable:v8 topLevelIdentifier:v9];

  return v10;
}

- (NSString)visualDescription
{
  v3 = @" ";
  v4 = [&stru_1F1741150 stringByPaddingToLength:-[PXNavigationListItem indentationLevel](self withString:"indentationLevel") startingAtIndex:{@" ", 0}];
  if ([(PXNavigationListItem *)self isExpandable])
  {
    if ([(PXNavigationListItem *)self isExpanded])
    {
      v3 = @"▾";
    }

    else
    {
      v3 = @"▸";
    }
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = v3;
  v7 = [(PXNavigationListItem *)self title];
  v8 = [(PXNavigationListItem *)self accessoryTitle];
  v9 = [v5 stringWithFormat:@"<%p> %@%@%@ (%@)", self, v4, v6, v7, v8];

  return v9;
}

- (PXNavigationListItem)initWithIdentifier:(id)a3 title:(id)a4 accessoryTitle:(id)a5 reorderable:(BOOL)a6 topLevelIdentifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v27.receiver = self;
  v27.super_class = PXNavigationListItem;
  v16 = [(PXNavigationListItem *)&v27 init];
  if (v16)
  {
    v17 = [v12 copy];
    identifier = v16->_identifier;
    v16->_identifier = v17;

    v19 = [v13 copy];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = &stru_1F1741150;
    }

    objc_storeStrong(&v16->_title, v21);

    v22 = [v14 copy];
    accessoryTitle = v16->_accessoryTitle;
    v16->_accessoryTitle = v22;

    v16->_reorderable = a6;
    v24 = [v15 copy];
    topLevelIdentifier = v16->_topLevelIdentifier;
    v16->_topLevelIdentifier = v24;
  }

  return v16;
}

@end