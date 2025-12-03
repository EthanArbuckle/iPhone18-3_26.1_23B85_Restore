@interface _TVRemoteAlertVisualStyle_Pad
- (CGRect)frameForParentView:(id)view;
@end

@implementation _TVRemoteAlertVisualStyle_Pad

- (CGRect)frameForParentView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  v5 = CGRectGetHeight(v27) + -27.0 + -27.0;
  [(_TVRemoteAlertVisualStyle_Pad *)self remoteHeight];
  if (v5 > v6)
  {
    [(_TVRemoteAlertVisualStyle_Pad *)self remoteHeight];
    v5 = v7;
  }

  [viewCopy bounds];
  v8 = CGRectGetWidth(v28) * 0.5;
  [(_TVRemoteAlertVisualStyle_Pad *)self remoteWidth];
  v10 = v8 - v9 * 0.5;
  [viewCopy bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v29.origin.x = v12;
  v29.origin.y = v14;
  v29.size.width = v16;
  v29.size.height = v18;
  v19 = CGRectGetHeight(v29) * 0.5;
  [(_TVRemoteAlertVisualStyle_Pad *)self remoteHeight];
  v21 = v19 - v20 * 0.5;
  [(_TVRemoteAlertVisualStyle_Pad *)self remoteWidth];
  v23 = v22;
  v24 = v10;
  v25 = v21;
  v26 = v5;
  result.size.height = v26;
  result.size.width = v23;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

@end