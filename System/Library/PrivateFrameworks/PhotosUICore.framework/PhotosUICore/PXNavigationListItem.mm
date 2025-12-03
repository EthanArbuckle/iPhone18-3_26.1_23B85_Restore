@interface PXNavigationListItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNavigationListItem:(id)item;
- (NSString)description;
- (NSString)visualDescription;
- (PXNavigationListItem)initWithIdentifier:(id)identifier title:(id)title accessoryTitle:(id)accessoryTitle reorderable:(BOOL)reorderable topLevelIdentifier:(id)levelIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PXNavigationListItem

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  title = [(PXNavigationListItem *)self title];
  identifier = [(PXNavigationListItem *)self identifier];
  isReorderable = [(PXNavigationListItem *)self isReorderable];
  v8 = @"NO";
  if (isReorderable)
  {
    v8 = @"YES";
  }

  v9 = v8;
  v10 = [v3 stringWithFormat:@"<%@: %p title = %@, identifier = %@, reorderable = %@", v4, self, title, identifier, v9];;

  topLevelIdentifier = [(PXNavigationListItem *)self topLevelIdentifier];

  if (topLevelIdentifier)
  {
    topLevelIdentifier2 = [(PXNavigationListItem *)self topLevelIdentifier];
    [v10 appendFormat:@", topLevelIdentifier = %@", topLevelIdentifier2];
  }

  glyphImageName = [(PXNavigationListItem *)self glyphImageName];

  if (glyphImageName)
  {
    glyphImageName2 = [(PXNavigationListItem *)self glyphImageName];
    [v10 appendFormat:@", glyphImageName = %@", glyphImageName2];
  }

  accessoryTitle = [(PXNavigationListItem *)self accessoryTitle];

  if (accessoryTitle)
  {
    accessoryTitle2 = [(PXNavigationListItem *)self accessoryTitle];
    [v10 appendFormat:@", accessoryTitle = %@", accessoryTitle2];
  }

  lockState = [(PXNavigationListItem *)self lockState];
  if (lockState > 2)
  {
    v18 = @"Unknown";
  }

  else
  {
    v18 = off_1E77363C0[lockState];
  }

  [v10 appendFormat:@", lockState = %@>", v18];

  return v10;
}

- (unint64_t)hash
{
  identifier = [(PXNavigationListItem *)self identifier];
  v4 = [identifier hash];

  title = [(PXNavigationListItem *)self title];
  v6 = [title hash] ^ v4;

  accessoryTitle = [(PXNavigationListItem *)self accessoryTitle];
  v8 = [accessoryTitle hash];

  glyphImageName = [(PXNavigationListItem *)self glyphImageName];
  v10 = v6 ^ v8 ^ [glyphImageName hash];

  topLevelIdentifier = [(PXNavigationListItem *)self topLevelIdentifier];
  v12 = [topLevelIdentifier hash];

  isDraggable = [(PXNavigationListItem *)self isDraggable];
  v14 = 2;
  if (!isDraggable)
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

  isRenamable = [(PXNavigationListItem *)self isRenamable];
  v18 = 8;
  if (!isRenamable)
  {
    v18 = 0;
  }

  v19 = v16 ^ v18;
  isExpandable = [(PXNavigationListItem *)self isExpandable];
  v21 = 16;
  if (!isExpandable)
  {
    v21 = 0;
  }

  v22 = v15 ^ v19 ^ v21;
  isGroup = [(PXNavigationListItem *)self isGroup];
  v24 = 32;
  if (!isGroup)
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

  isDeletable = [(PXNavigationListItem *)self isDeletable];
  v28 = 256;
  if (!isDeletable)
  {
    v28 = 0;
  }

  v29 = v26 ^ v28;
  displayInline = [(PXNavigationListItem *)self displayInline];
  v31 = 512;
  if (!displayInline)
  {
    v31 = 0;
  }

  v32 = v25 ^ v29 ^ v31 ^ ([(PXNavigationListItem *)self lockState]<< 10);
  collection = [(PXNavigationListItem *)self collection];
  v34 = [collection hash];

  return v32 ^ v34;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PXNavigationListItem *)self isEqualToNavigationListItem:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToNavigationListItem:(id)item
{
  itemCopy = item;
  identifier = [(PXNavigationListItem *)self identifier];
  identifier2 = [itemCopy identifier];
  v7 = [identifier isEqualToString:identifier2];

  if (!v7)
  {
    goto LABEL_29;
  }

  title = [(PXNavigationListItem *)self title];
  title2 = [itemCopy title];
  v10 = title2;
  if (title == title2)
  {
  }

  else
  {
    v11 = [title isEqualToString:title2];

    if ((v11 & 1) == 0)
    {
LABEL_29:
      v37 = 0;
      goto LABEL_30;
    }
  }

  accessoryTitle = [(PXNavigationListItem *)self accessoryTitle];
  accessoryTitle2 = [itemCopy accessoryTitle];
  v14 = accessoryTitle2;
  if (accessoryTitle == accessoryTitle2)
  {
  }

  else
  {
    v15 = [accessoryTitle isEqualToString:accessoryTitle2];

    if ((v15 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  glyphImageName = [(PXNavigationListItem *)self glyphImageName];
  glyphImageName2 = [itemCopy glyphImageName];
  v18 = glyphImageName2;
  if (glyphImageName == glyphImageName2)
  {
  }

  else
  {
    v19 = [glyphImageName isEqualToString:glyphImageName2];

    if ((v19 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  topLevelIdentifier = [(PXNavigationListItem *)self topLevelIdentifier];
  topLevelIdentifier2 = [itemCopy topLevelIdentifier];
  v22 = topLevelIdentifier2;
  if (topLevelIdentifier == topLevelIdentifier2)
  {
  }

  else
  {
    v23 = [topLevelIdentifier isEqualToString:topLevelIdentifier2];

    if ((v23 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  isDraggable = [(PXNavigationListItem *)self isDraggable];
  if (isDraggable != [itemCopy isDraggable])
  {
    goto LABEL_29;
  }

  isReorderable = [(PXNavigationListItem *)self isReorderable];
  if (isReorderable != [itemCopy isReorderable])
  {
    goto LABEL_29;
  }

  isRemovable = [(PXNavigationListItem *)self isRemovable];
  if (isRemovable != [itemCopy isRemovable])
  {
    goto LABEL_29;
  }

  isRenamable = [(PXNavigationListItem *)self isRenamable];
  if (isRenamable != [itemCopy isRenamable])
  {
    goto LABEL_29;
  }

  isExpandable = [(PXNavigationListItem *)self isExpandable];
  if (isExpandable != [itemCopy isExpandable])
  {
    goto LABEL_29;
  }

  isDeletable = [(PXNavigationListItem *)self isDeletable];
  if (isDeletable != [itemCopy isDeletable])
  {
    goto LABEL_29;
  }

  isGroup = [(PXNavigationListItem *)self isGroup];
  if (isGroup != [itemCopy isGroup])
  {
    goto LABEL_29;
  }

  indentationLevel = [(PXNavigationListItem *)self indentationLevel];
  if (indentationLevel != [itemCopy indentationLevel])
  {
    goto LABEL_29;
  }

  lockState = [(PXNavigationListItem *)self lockState];
  if (lockState != [itemCopy lockState])
  {
    goto LABEL_29;
  }

  collection = [(PXNavigationListItem *)self collection];
  collection2 = [itemCopy collection];
  if (collection == collection2)
  {
    v37 = 1;
  }

  else
  {
    v35 = collection2;
    v36 = [collection isEqual:collection2];
    collection2 = v35;
    v37 = v36;
  }

LABEL_30:
  return v37;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = [(PXNavigationListItem *)self identifier];
  title = [(PXNavigationListItem *)self title];
  accessoryTitle = [(PXNavigationListItem *)self accessoryTitle];
  isReorderable = [(PXNavigationListItem *)self isReorderable];
  topLevelIdentifier = [(PXNavigationListItem *)self topLevelIdentifier];
  v10 = [v4 initWithIdentifier:identifier title:title accessoryTitle:accessoryTitle reorderable:isReorderable topLevelIdentifier:topLevelIdentifier];

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
  title = [(PXNavigationListItem *)self title];
  accessoryTitle = [(PXNavigationListItem *)self accessoryTitle];
  v9 = [v5 stringWithFormat:@"<%p> %@%@%@ (%@)", self, v4, v6, title, accessoryTitle];

  return v9;
}

- (PXNavigationListItem)initWithIdentifier:(id)identifier title:(id)title accessoryTitle:(id)accessoryTitle reorderable:(BOOL)reorderable topLevelIdentifier:(id)levelIdentifier
{
  identifierCopy = identifier;
  titleCopy = title;
  accessoryTitleCopy = accessoryTitle;
  levelIdentifierCopy = levelIdentifier;
  v27.receiver = self;
  v27.super_class = PXNavigationListItem;
  v16 = [(PXNavigationListItem *)&v27 init];
  if (v16)
  {
    v17 = [identifierCopy copy];
    identifier = v16->_identifier;
    v16->_identifier = v17;

    v19 = [titleCopy copy];
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

    v22 = [accessoryTitleCopy copy];
    accessoryTitle = v16->_accessoryTitle;
    v16->_accessoryTitle = v22;

    v16->_reorderable = reorderable;
    v24 = [levelIdentifierCopy copy];
    topLevelIdentifier = v16->_topLevelIdentifier;
    v16->_topLevelIdentifier = v24;
  }

  return v16;
}

@end