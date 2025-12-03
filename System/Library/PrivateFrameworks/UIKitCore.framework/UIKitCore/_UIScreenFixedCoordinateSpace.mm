@interface _UIScreenFixedCoordinateSpace
- (CGPoint)convertPoint:(CGPoint)point fromCoordinateSpace:(id)space;
- (CGPoint)convertPoint:(CGPoint)point toCoordinateSpace:(id)space;
- (CGRect)bounds;
- (CGRect)convertRect:(CGRect)rect fromCoordinateSpace:(id)space;
- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space;
@end

@implementation _UIScreenFixedCoordinateSpace

- (CGRect)bounds
{
  _screen = [(_UIScreenFixedCoordinateSpace *)self _screen];
  [_screen _referenceBounds];
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

- (CGPoint)convertPoint:(CGPoint)point toCoordinateSpace:(id)space
{
  [(_UIScreenFixedCoordinateSpace *)self convertRect:space toCoordinateSpace:point.x, point.y, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromCoordinateSpace:(id)space
{
  [(_UIScreenFixedCoordinateSpace *)self convertRect:space fromCoordinateSpace:point.x, point.y, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (space)
  {
    spaceCopy = space;
    _screen = [(_UIScreenFixedCoordinateSpace *)self _screen];
    [_screen _referenceBounds];
    v12 = v11;
    v14 = v13;
    _screen2 = [(_UIScreenFixedCoordinateSpace *)self _screen];
    v16 = _UIWindowConvertRectFromSceneReferenceSpaceToSceneSpace([_screen2 _interfaceOrientation], x, y, width, height, v12, v14);
    v18 = v17;
    v20 = v19;
    v22 = v21;

    _screen3 = [(_UIScreenFixedCoordinateSpace *)self _screen];
    [spaceCopy convertRect:_screen3 fromCoordinateSpace:{v16, v18, v20, v22}];
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

- (CGRect)convertRect:(CGRect)rect fromCoordinateSpace:(id)space
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (space)
  {
    spaceCopy = space;
    _screen = [(_UIScreenFixedCoordinateSpace *)self _screen];
    [spaceCopy convertRect:_screen toCoordinateSpace:{x, y, width, height}];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    _screen2 = [(_UIScreenFixedCoordinateSpace *)self _screen];
    [_screen2 _referenceBounds];
    v21 = v20;
    v23 = v22;
    _screen3 = [(_UIScreenFixedCoordinateSpace *)self _screen];
    x = _UIWindowConvertRectFromSceneSpaceToSceneReferenceSpace([_screen3 _interfaceOrientation], v12, v14, v16, v18, v21, v23);
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