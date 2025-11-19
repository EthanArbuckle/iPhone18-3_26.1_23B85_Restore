@interface CRLayoutListItem
- (BOOL)canBeSucceededByListItem:(id)a3;
- (CRLayoutListItem)initWithGroup:(id)a3;
- (_NSRange)markerRange;
- (int64_t)markerType;
- (void)appendGroup:(id)a3;
@end

@implementation CRLayoutListItem

- (CRLayoutListItem)initWithGroup:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CRLayoutListItem;
  v5 = [(CRLayoutListItem *)&v12 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 text];
  v7 = [CRListItemMarker listItemMarkerForText:v6 requiresAdjacentText:1];
  [(CRLayoutListItem *)v5 setMarker:v7];

  v8 = [(CRLayoutListItem *)v5 marker];

  if (v8)
  {
    v13[0] = v4;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [(CRLayoutListItem *)v5 setGroups:v9];

    v10 = [v4 boundingQuad];
    [(CRLayoutListItem *)v5 setUnionBoundingQuad:v10];

LABEL_4:
    v8 = v5;
  }

  return v8;
}

- (void)appendGroup:(id)a3
{
  v4 = a3;
  v5 = [(CRLayoutListItem *)self groups];
  v6 = [v5 arrayByAddingObject:v4];
  [(CRLayoutListItem *)self setGroups:v6];

  v7 = [(CRLayoutListItem *)self unionBoundingQuad];
  [v7 baselineAngle];
  v9 = v8;
  v10 = [v4 boundingQuad];
  [v10 baselineAngle];
  v12 = v11;
  v13 = [(CRLayoutListItem *)self groups];
  v14 = [v13 count];
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

  v22 = [(CRLayoutListItem *)self unionBoundingQuad];
  v19 = [v4 boundingQuad];

  *&v20 = v17;
  v21 = [v22 unionWithNormalizedQuad:v19 baselineAngle:v20];
  [(CRLayoutListItem *)self setUnionBoundingQuad:v21];
}

- (BOOL)canBeSucceededByListItem:(id)a3
{
  v4 = a3;
  v5 = [(CRLayoutListItem *)self marker];
  v6 = [v4 marker];

  LOBYTE(v4) = [v5 canBeSucceededByMarker:v6];
  return v4;
}

- (_NSRange)markerRange
{
  v2 = [(CRLayoutListItem *)self marker];
  v3 = [v2 range];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (int64_t)markerType
{
  v2 = [(CRLayoutListItem *)self marker];
  v3 = [v2 type];

  return v3;
}

@end