@interface CRLayoutListItem
- (BOOL)canBeSucceededByListItem:(id)item;
- (CRLayoutListItem)initWithGroup:(id)group;
- (_NSRange)markerRange;
- (int64_t)markerType;
- (void)appendGroup:(id)group;
@end

@implementation CRLayoutListItem

- (CRLayoutListItem)initWithGroup:(id)group
{
  v13[1] = *MEMORY[0x1E69E9840];
  groupCopy = group;
  v12.receiver = self;
  v12.super_class = CRLayoutListItem;
  v5 = [(CRLayoutListItem *)&v12 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  text = [groupCopy text];
  v7 = [CRListItemMarker listItemMarkerForText:text requiresAdjacentText:1];
  [(CRLayoutListItem *)v5 setMarker:v7];

  marker = [(CRLayoutListItem *)v5 marker];

  if (marker)
  {
    v13[0] = groupCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [(CRLayoutListItem *)v5 setGroups:v9];

    boundingQuad = [groupCopy boundingQuad];
    [(CRLayoutListItem *)v5 setUnionBoundingQuad:boundingQuad];

LABEL_4:
    marker = v5;
  }

  return marker;
}

- (void)appendGroup:(id)group
{
  groupCopy = group;
  groups = [(CRLayoutListItem *)self groups];
  v6 = [groups arrayByAddingObject:groupCopy];
  [(CRLayoutListItem *)self setGroups:v6];

  unionBoundingQuad = [(CRLayoutListItem *)self unionBoundingQuad];
  [unionBoundingQuad baselineAngle];
  v9 = v8;
  boundingQuad = [groupCopy boundingQuad];
  [boundingQuad baselineAngle];
  v12 = v11;
  groups2 = [(CRLayoutListItem *)self groups];
  v14 = [groups2 count];
  v15 = v9 - v12;
  if (v9 - v12 <= 3.14159265)
  {
    if (v15 > -3.14159265)
    {
      goto LABEL_6;
    }

    v16 = 6.28318531;
  }

  else
  {
    v16 = -6.28318531;
  }

  v15 = v15 + v16;
LABEL_6:
  v17 = v12 + v15 * (1.0 / v14);
  if (v17 <= 3.14159265)
  {
    if (v17 > -3.14159265)
    {
      goto LABEL_11;
    }

    v18 = 6.28318531;
  }

  else
  {
    v18 = -6.28318531;
  }

  v17 = v17 + v18;
LABEL_11:

  unionBoundingQuad2 = [(CRLayoutListItem *)self unionBoundingQuad];
  boundingQuad2 = [groupCopy boundingQuad];

  *&v20 = v17;
  v21 = [unionBoundingQuad2 unionWithNormalizedQuad:boundingQuad2 baselineAngle:v20];
  [(CRLayoutListItem *)self setUnionBoundingQuad:v21];
}

- (BOOL)canBeSucceededByListItem:(id)item
{
  itemCopy = item;
  marker = [(CRLayoutListItem *)self marker];
  marker2 = [itemCopy marker];

  LOBYTE(itemCopy) = [marker canBeSucceededByMarker:marker2];
  return itemCopy;
}

- (_NSRange)markerRange
{
  marker = [(CRLayoutListItem *)self marker];
  range = [marker range];
  v5 = v4;

  v6 = range;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (int64_t)markerType
{
  marker = [(CRLayoutListItem *)self marker];
  type = [marker type];

  return type;
}

@end