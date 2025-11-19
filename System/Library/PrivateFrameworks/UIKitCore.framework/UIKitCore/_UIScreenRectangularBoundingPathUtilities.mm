@interface _UIScreenRectangularBoundingPathUtilities
+ (id)boundingPathForWindow:(id)a3 inScreenCoordinateSpace:(id)a4;
- (id)boundingPathForWindow:(id)a3;
@end

@implementation _UIScreenRectangularBoundingPathUtilities

- (id)boundingPathForWindow:(id)a3
{
  v5 = a3;
  v6 = [(_UIScreenBoundingPathUtilities *)self _screen];
  v7 = [v5 screen];

  if (v7 != v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIScreenRectangularBoundingPathUtilities.m" lineNumber:21 description:@"Cannot provide the bounding path for a window associated with a different screen."];
  }

  v8 = [v6 coordinateSpace];
  v9 = [_UIScreenRectangularBoundingPathUtilities boundingPathForWindow:v5 inScreenCoordinateSpace:v8];

  return v9;
}

+ (id)boundingPathForWindow:(id)a3 inScreenCoordinateSpace:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v5 bounds];
  [v6 convertRect:v5 fromCoordinateSpace:?];
  v36.origin.x = v15;
  v36.origin.y = v16;
  v36.size.width = v17;
  v36.size.height = v18;
  v34.origin.x = v8;
  v34.origin.y = v10;
  v34.size.width = v12;
  v34.size.height = v14;
  v35 = CGRectIntersection(v34, v36);
  x = v35.origin.x;
  y = v35.origin.y;
  width = v35.size.width;
  height = v35.size.height;
  if (CGRectIsNull(v35))
  {
    v23 = *MEMORY[0x1E695F058];
    v24 = *(MEMORY[0x1E695F058] + 8);
    v25 = *(MEMORY[0x1E695F058] + 16);
    v26 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    [v6 convertRect:v5 toCoordinateSpace:{x, y, width, height}];
    v23 = v27;
    v24 = v28;
    v25 = v29;
    v26 = v30;
  }

  v31 = [[_UIRectangularBoundingPath alloc] initWithCoordinateSpace:v5 boundingRect:v23, v24, v25, v26];

  return v31;
}

@end