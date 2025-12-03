@interface BKTouchAnnotationController
+ (id)workQueue;
- (BKTouchAnnotationController)initWithDisplayUUID:(id)d;
- (BOOL)shouldVisualizeHitTestRegions;
- (BOOL)shouldVisualizeTouches;
- (id)_stringByRemovingPrefix:(id)prefix fromString:(id)string;
- (void)annotateTouch:(unsigned int)touch withString:(id)string uniqueIdentifier:(id)identifier;
- (void)annotateTouch:(unsigned int)touch withString:(id)string uniqueIdentifier:(id)identifier fromPID:(int)d;
- (void)annotateTouch:(unsigned int)touch withUniqueString:(id)string;
- (void)hitTestRegionsDidChange:(id)change;
- (void)hitTestRegionsDidChangeSwift:(id)swift displayAnnotationController:(id)controller;
- (void)setShouldVisualizeHitTestRegions:(BOOL)regions;
- (void)setShouldVisualizeTouches:(BOOL)touches;
- (void)touch:(unsigned int)touch didAlwaysRouteToContext:(unsigned int)context clientPort:(unsigned int)port;
- (void)touch:(unsigned int)touch didHitTestToDestination:(id)destination hostingChainIndex:(int64_t)index;
- (void)touch:(unsigned int)touch didMoveToPoint:(CGPoint)point eventMask:(unsigned int)mask z:(double)z maxZ:(double)maxZ;
- (void)touch:(unsigned int)touch pathIndex:(int64_t)index downAtPoint:(CGPoint)point eventMask:(unsigned int)mask transducerType:(unsigned int)type;
- (void)touch:(unsigned int)touch pathIndex:(int64_t)index rangeInAtPoint:(CGPoint)point eventMask:(unsigned int)mask z:(double)z maxZ:(double)maxZ transducerType:(unsigned int)type;
- (void)touch:(unsigned int)touch pathIndex:(int64_t)index rangeOutAtPoint:(CGPoint)point;
- (void)touch:(unsigned int)touch pathIndex:(int64_t)index upAtPoint:(CGPoint)point detached:(BOOL)detached;
- (void)touchDidDetach:(unsigned int)detach destinations:(id)destinations;
- (void)touchDidHIDCancel:(unsigned int)cancel;
- (void)touchDidSoftCancel:(unsigned int)cancel;
- (void)touchDidTransfer:(unsigned int)transfer destination:(id)destination;
@end

@implementation BKTouchAnnotationController

- (void)hitTestRegionsDidChangeSwift:(id)swift displayAnnotationController:(id)controller
{
  sub_10000B60C();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  sub_10000B850(v6, controllerCopy);
}

- (id)_stringByRemovingPrefix:(id)prefix fromString:(id)string
{
  prefixCopy = prefix;
  stringCopy = string;
  v7 = [prefixCopy length];
  if ([stringCopy length] > v7 && objc_msgSend(stringCopy, "hasPrefix:", prefixCopy))
  {
    v8 = [stringCopy substringFromIndex:v7];
  }

  else
  {
    v8 = stringCopy;
  }

  v9 = v8;

  return v9;
}

- (void)hitTestRegionsDidChange:(id)change
{
  changeCopy = change;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033B28;
  v7[3] = &unk_1000FD128;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(workQueue, v7);
}

- (void)touchDidSoftCancel:(unsigned int)cancel
{
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100033C18;
  v4[3] = &unk_1000FCD68;
  v4[4] = self;
  cancelCopy = cancel;
  dispatch_async(workQueue, v4);
}

- (void)touch:(unsigned int)touch didAlwaysRouteToContext:(unsigned int)context clientPort:(unsigned int)port
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033CA4;
  block[3] = &unk_1000FAC68;
  block[4] = self;
  contextCopy = context;
  portCopy = port;
  touchCopy = touch;
  dispatch_async(workQueue, block);
}

- (void)touchDidHIDCancel:(unsigned int)cancel
{
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100033DE8;
  v4[3] = &unk_1000FCD68;
  v4[4] = self;
  cancelCopy = cancel;
  dispatch_async(workQueue, v4);
}

- (void)touch:(unsigned int)touch pathIndex:(int64_t)index rangeOutAtPoint:(CGPoint)point
{
  workQueue = self->_workQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100033E70;
  v6[3] = &unk_1000FCD68;
  v6[4] = self;
  touchCopy = touch;
  dispatch_async(workQueue, v6);
}

- (void)touch:(unsigned int)touch pathIndex:(int64_t)index upAtPoint:(CGPoint)point detached:(BOOL)detached
{
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033F48;
  v7[3] = &unk_1000FCD68;
  v7[4] = self;
  touchCopy = touch;
  dispatch_async(workQueue, v7);
}

- (void)touch:(unsigned int)touch didMoveToPoint:(CGPoint)point eventMask:(unsigned int)mask z:(double)z maxZ:(double)maxZ
{
  workQueue = self->_workQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003401C;
  v8[3] = &unk_1000FAC40;
  v8[4] = self;
  pointCopy = point;
  touchCopy = touch;
  maxZCopy = maxZ;
  zCopy = z;
  dispatch_async(workQueue, v8);
}

- (void)touchDidTransfer:(unsigned int)transfer destination:(id)destination
{
  destinationCopy = destination;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034128;
  block[3] = &unk_1000FD1A0;
  transferCopy = transfer;
  block[4] = self;
  v10 = destinationCopy;
  v8 = destinationCopy;
  dispatch_async(workQueue, block);
}

- (void)touchDidDetach:(unsigned int)detach destinations:(id)destinations
{
  workQueue = self->_workQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003421C;
  v5[3] = &unk_1000FCD68;
  v5[4] = self;
  detachCopy = detach;
  dispatch_async(workQueue, v5);
}

- (void)touch:(unsigned int)touch didHitTestToDestination:(id)destination hostingChainIndex:(int64_t)index
{
  destinationCopy = destination;
  workQueue = self->_workQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000342E4;
  v11[3] = &unk_1000FBA90;
  v11[4] = self;
  v12 = destinationCopy;
  touchCopy = touch;
  indexCopy = index;
  v10 = destinationCopy;
  dispatch_async(workQueue, v11);
}

- (void)touch:(unsigned int)touch pathIndex:(int64_t)index downAtPoint:(CGPoint)point eventMask:(unsigned int)mask transducerType:(unsigned int)type
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034418;
  block[3] = &unk_1000FAC18;
  block[4] = self;
  pointCopy = point;
  indexCopy = index;
  touchCopy = touch;
  maskCopy = mask;
  dispatch_async(workQueue, block);
}

- (void)touch:(unsigned int)touch pathIndex:(int64_t)index rangeInAtPoint:(CGPoint)point eventMask:(unsigned int)mask z:(double)z maxZ:(double)maxZ transducerType:(unsigned int)type
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000345F0;
  block[3] = &unk_1000FABF0;
  block[4] = self;
  pointCopy = point;
  touchCopy = touch;
  indexCopy = index;
  zCopy = z;
  maxZCopy = maxZ;
  dispatch_async(workQueue, block);
}

- (void)annotateTouch:(unsigned int)touch withString:(id)string uniqueIdentifier:(id)identifier fromPID:(int)d
{
  stringCopy = string;
  identifierCopy = identifier;
  workQueue = self->_workQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100034850;
  v15[3] = &unk_1000FD238;
  v15[4] = self;
  v16 = stringCopy;
  v17 = identifierCopy;
  touchCopy = touch;
  dCopy = d;
  v13 = identifierCopy;
  v14 = stringCopy;
  dispatch_async(workQueue, v15);
}

- (void)annotateTouch:(unsigned int)touch withString:(id)string uniqueIdentifier:(id)identifier
{
  stringCopy = string;
  identifierCopy = identifier;
  workQueue = self->_workQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100034930;
  v13[3] = &unk_1000FABC8;
  touchCopy = touch;
  v13[4] = self;
  v14 = stringCopy;
  v15 = identifierCopy;
  v11 = identifierCopy;
  v12 = stringCopy;
  dispatch_async(workQueue, v13);
}

- (void)annotateTouch:(unsigned int)touch withUniqueString:(id)string
{
  stringCopy = string;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000349F0;
  block[3] = &unk_1000FD1A0;
  touchCopy = touch;
  block[4] = self;
  v10 = stringCopy;
  v8 = stringCopy;
  dispatch_async(workQueue, block);
}

- (void)setShouldVisualizeHitTestRegions:(BOOL)regions
{
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100034A78;
  v4[3] = &unk_1000FCD90;
  v4[4] = self;
  regionsCopy = regions;
  dispatch_async(workQueue, v4);
}

- (void)setShouldVisualizeTouches:(BOOL)touches
{
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100034B6C;
  v4[3] = &unk_1000FCD90;
  v4[4] = self;
  touchesCopy = touches;
  dispatch_async(workQueue, v4);
}

- (BOOL)shouldVisualizeHitTestRegions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = self->_workQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100034C50;
  v5[3] = &unk_1000FD178;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)shouldVisualizeTouches
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = self->_workQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100034D10;
  v5[3] = &unk_1000FD178;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BKTouchAnnotationController)initWithDisplayUUID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = BKTouchAnnotationController;
  v5 = [(BKTouchAnnotationController *)&v12 init];
  if (v5)
  {
    workQueue = [objc_opt_class() workQueue];
    workQueue = v5->_workQueue;
    v5->_workQueue = workQueue;

    v8 = sub_10000A500(dCopy);
    v9 = [BKDisplayAnnotationController annotationControllerForDisplay:v8];
    displayAnnotationController = v5->_displayAnnotationController;
    v5->_displayAnnotationController = v9;
  }

  return v5;
}

+ (id)workQueue
{
  if (qword_100125E30 != -1)
  {
    dispatch_once(&qword_100125E30, &stru_1000FABA0);
  }

  v3 = qword_100125E28;

  return v3;
}

@end