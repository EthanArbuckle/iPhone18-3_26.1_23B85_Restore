@interface _UIScreenFixedCoordinateSpace
- (CGPoint)convertPoint:(CGPoint)a3 fromCoordinateSpace:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 toCoordinateSpace:(id)a4;
- (CGRect)bounds;
- (CGRect)convertRect:(CGRect)a3 fromCoordinateSpace:(id)a4;
- (CGRect)convertRect:(CGRect)a3 toCoordinateSpace:(id)a4;
@end

@implementation _UIScreenFixedCoordinateSpace

- (CGRect)bounds
{
  v2 = [(_UIScreenFixedCoordinateSpace *)self _screen];
  [v2 _referenceBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 toCoordinateSpace:(id)a4
{
  [(_UIScreenFixedCoordinateSpace *)self convertRect:a4 toCoordinateSpace:a3.x, a3.y, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromCoordinateSpace:(id)a4
{
  [(_UIScreenFixedCoordinateSpace *)self convertRect:a4 fromCoordinateSpace:a3.x, a3.y, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 toCoordinateSpace:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a4)
  {
    v9 = a4;
    v10 = [(_UIScreenFixedCoordinateSpace *)self _screen];
    [v10 _referenceBounds];
    v12 = v11;
    v14 = v13;
    v15 = [(_UIScreenFixedCoordinateSpace *)self _screen];
    v16 = _UIWindowConvertRectFromSceneReferenceSpaceToSceneSpace([v15 _interfaceOrientation], x, y, width, height, v12, v14);
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = [(_UIScreenFixedCoordinateSpace *)self _screen];
    [v9 convertRect:v23 fromCoordinateSpace:{v16, v18, v20, v22}];
    x = v24;
    y = v25;
    width = v26;
    height = v27;
  }

  v28 = x;
  v29 = y;
  v30 = width;
  v31 = height;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 fromCoordinateSpace:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a4)
  {
    v9 = a4;
    v10 = [(_UIScreenFixedCoordinateSpace *)self _screen];
    [v9 convertRect:v10 toCoordinateSpace:{x, y, width, height}];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = [(_UIScreenFixedCoordinateSpace *)self _screen];
    [v19 _referenceBounds];
    v21 = v20;
    v23 = v22;
    v24 = [(_UIScreenFixedCoordinateSpace *)self _screen];
    x = _UIWindowConvertRectFromSceneSpaceToSceneReferenceSpace([v24 _interfaceOrientation], v12, v14, v16, v18, v21, v23);
    y = v25;
    width = v26;
    height = v27;
  }

  v28 = x;
  v29 = y;
  v30 = width;
  v31 = height;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

@end