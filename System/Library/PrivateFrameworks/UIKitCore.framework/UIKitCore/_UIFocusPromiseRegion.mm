@interface _UIFocusPromiseRegion
- (BOOL)isEqual:(id)equal;
- (_UIFocusPromiseRegion)initWithFrame:(CGRect)frame coordinateSpace:(id)space identifier:(id)identifier;
- (id)_descriptionBuilder;
- (id)_focusRegionWithAdjustedFrame:(CGRect)frame coordinateSpace:(id)space;
- (id)_nextFocusedItemForFocusMovementRequest:(id)request inMap:(id)map withSnapshot:(id)snapshot;
- (unint64_t)_focusableBoundaries;
@end

@implementation _UIFocusPromiseRegion

- (_UIFocusPromiseRegion)initWithFrame:(CGRect)frame coordinateSpace:(id)space identifier:(id)identifier
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = _UIFocusPromiseRegion;
  height = [(_UIFocusRegion *)&v16 initWithFrame:space coordinateSpace:x, y, width, height];
  v14 = height;
  if (height)
  {
    objc_storeStrong(&height->_identifier, identifier);
  }

  return v14;
}

- (id)_focusRegionWithAdjustedFrame:(CGRect)frame coordinateSpace:(id)space
{
  v8.receiver = self;
  v8.super_class = _UIFocusPromiseRegion;
  v5 = [(_UIFocusRegion *)&v8 _focusRegionWithAdjustedFrame:space coordinateSpace:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  contentFulfillmentHandler = [(_UIFocusPromiseRegion *)self contentFulfillmentHandler];
  [v5 setContentFulfillmentHandler:contentFulfillmentHandler];

  objc_storeStrong(v5 + 6, self->_identifier);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = _UIFocusPromiseRegion;
  if ([(_UIFocusRegion *)&v13 isEqual:equalCopy])
  {
    v5 = equalCopy;
    v6 = v5[6];
    v7 = self->_identifier;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
      v11 = 1;
    }

    else
    {
      if (v7)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        v11 = 0;
      }

      else
      {
        v11 = [v7 isEqual:v8];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_nextFocusedItemForFocusMovementRequest:(id)request inMap:(id)map withSnapshot:(id)snapshot
{
  requestCopy = request;
  mapCopy = map;
  snapshotCopy = snapshot;
  contentFulfillmentHandler = self->_contentFulfillmentHandler;
  if (!contentFulfillmentHandler)
  {
    v13 = 0;
LABEL_8:
    v32 = 0;
    self->_contentFulfillmentHandler = 0;
    goto LABEL_12;
  }

  v12 = contentFulfillmentHandler[2](contentFulfillmentHandler, self);
  if (!v12)
  {
    v13 = self->_contentFulfillmentHandler;
    goto LABEL_8;
  }

  v13 = v12;
  [snapshotCopy snapshotFrameForRegion:self];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [_UIFocusMapSnapshotter alloc];
  focusSystem = [requestCopy focusSystem];
  coordinateSpace = [mapCopy coordinateSpace];
  searchInfo = [requestCopy searchInfo];
  v26 = [(_UIFocusMapSnapshotter *)v22 initWithFocusSystem:focusSystem rootContainer:v13 coordinateSpace:coordinateSpace searchInfo:searchInfo ignoresRootContainerClippingRect:0];

  [(_UIFocusMapSnapshotter *)v26 setSnapshotFrame:v15, v17, v19, v21];
  captureSnapshot = [(_UIFocusMapSnapshotter *)v26 captureSnapshot];
  regions = [captureSnapshot regions];
  if ([regions count] == 1)
  {
    regions2 = [captureSnapshot regions];
    [regions2 firstObject];
    v30 = v37 = v26;
    [captureSnapshot snapshotFrameForRegion:v30];
    v40.origin.x = v15;
    v40.origin.y = v17;
    v40.size.width = v19;
    v40.size.height = v21;
    v31 = CGRectEqualToRect(v39, v40);

    v26 = v37;
    if (v31)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  [mapCopy _trackExternalSnapshot:captureSnapshot];
LABEL_11:
  v33 = [snapshotCopy occludingRegionsForRegion:self];
  [captureSnapshot consumeRegionInformationForRegions:v33 fromSnapshot:snapshotCopy];
  regions3 = [captureSnapshot regions];
  v35 = [_UIFocusRegionEvaluator regionsByOccludingRegions:regions3 beneathRegions:v33 inSnapshot:captureSnapshot];

  v32 = [mapCopy _nextFocusedItemForFocusMovementRequest:requestCopy inRegions:v35 withSnapshot:captureSnapshot];

LABEL_12:

  return v32;
}

- (unint64_t)_focusableBoundaries
{
  contentFulfillmentHandler = [(_UIFocusPromiseRegion *)self contentFulfillmentHandler];
  v3 = contentFulfillmentHandler != 0;

  return 32 * v3;
}

- (id)_descriptionBuilder
{
  v6.receiver = self;
  v6.super_class = _UIFocusPromiseRegion;
  _descriptionBuilder = [(_UIFocusRegion *)&v6 _descriptionBuilder];
  v4 = [_descriptionBuilder appendObject:self->_identifier withName:@"identifier"];

  return _descriptionBuilder;
}

@end