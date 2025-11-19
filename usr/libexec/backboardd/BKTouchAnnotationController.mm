@interface BKTouchAnnotationController
+ (id)workQueue;
- (BKTouchAnnotationController)initWithDisplayUUID:(id)a3;
- (BOOL)shouldVisualizeHitTestRegions;
- (BOOL)shouldVisualizeTouches;
- (id)_stringByRemovingPrefix:(id)a3 fromString:(id)a4;
- (void)annotateTouch:(unsigned int)a3 withString:(id)a4 uniqueIdentifier:(id)a5;
- (void)annotateTouch:(unsigned int)a3 withString:(id)a4 uniqueIdentifier:(id)a5 fromPID:(int)a6;
- (void)annotateTouch:(unsigned int)a3 withUniqueString:(id)a4;
- (void)hitTestRegionsDidChange:(id)a3;
- (void)hitTestRegionsDidChangeSwift:(id)a3 displayAnnotationController:(id)a4;
- (void)setShouldVisualizeHitTestRegions:(BOOL)a3;
- (void)setShouldVisualizeTouches:(BOOL)a3;
- (void)touch:(unsigned int)a3 didAlwaysRouteToContext:(unsigned int)a4 clientPort:(unsigned int)a5;
- (void)touch:(unsigned int)a3 didHitTestToDestination:(id)a4 hostingChainIndex:(int64_t)a5;
- (void)touch:(unsigned int)a3 didMoveToPoint:(CGPoint)a4 eventMask:(unsigned int)a5 z:(double)a6 maxZ:(double)a7;
- (void)touch:(unsigned int)a3 pathIndex:(int64_t)a4 downAtPoint:(CGPoint)a5 eventMask:(unsigned int)a6 transducerType:(unsigned int)a7;
- (void)touch:(unsigned int)a3 pathIndex:(int64_t)a4 rangeInAtPoint:(CGPoint)a5 eventMask:(unsigned int)a6 z:(double)a7 maxZ:(double)a8 transducerType:(unsigned int)a9;
- (void)touch:(unsigned int)a3 pathIndex:(int64_t)a4 rangeOutAtPoint:(CGPoint)a5;
- (void)touch:(unsigned int)a3 pathIndex:(int64_t)a4 upAtPoint:(CGPoint)a5 detached:(BOOL)a6;
- (void)touchDidDetach:(unsigned int)a3 destinations:(id)a4;
- (void)touchDidHIDCancel:(unsigned int)a3;
- (void)touchDidSoftCancel:(unsigned int)a3;
- (void)touchDidTransfer:(unsigned int)a3 destination:(id)a4;
@end

@implementation BKTouchAnnotationController

- (void)hitTestRegionsDidChangeSwift:(id)a3 displayAnnotationController:(id)a4
{
  sub_10000B60C();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  sub_10000B850(v6, v7);
}

- (id)_stringByRemovingPrefix:(id)a3 fromString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 length];
  if ([v6 length] > v7 && objc_msgSend(v6, "hasPrefix:", v5))
  {
    v8 = [v6 substringFromIndex:v7];
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v9;
}

- (void)hitTestRegionsDidChange:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033B28;
  v7[3] = &unk_1000FD128;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

- (void)touchDidSoftCancel:(unsigned int)a3
{
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100033C18;
  v4[3] = &unk_1000FCD68;
  v4[4] = self;
  v5 = a3;
  dispatch_async(workQueue, v4);
}

- (void)touch:(unsigned int)a3 didAlwaysRouteToContext:(unsigned int)a4 clientPort:(unsigned int)a5
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033CA4;
  block[3] = &unk_1000FAC68;
  block[4] = self;
  v7 = a4;
  v8 = a5;
  v9 = a3;
  dispatch_async(workQueue, block);
}

- (void)touchDidHIDCancel:(unsigned int)a3
{
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100033DE8;
  v4[3] = &unk_1000FCD68;
  v4[4] = self;
  v5 = a3;
  dispatch_async(workQueue, v4);
}

- (void)touch:(unsigned int)a3 pathIndex:(int64_t)a4 rangeOutAtPoint:(CGPoint)a5
{
  workQueue = self->_workQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100033E70;
  v6[3] = &unk_1000FCD68;
  v6[4] = self;
  v7 = a3;
  dispatch_async(workQueue, v6);
}

- (void)touch:(unsigned int)a3 pathIndex:(int64_t)a4 upAtPoint:(CGPoint)a5 detached:(BOOL)a6
{
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033F48;
  v7[3] = &unk_1000FCD68;
  v7[4] = self;
  v8 = a3;
  dispatch_async(workQueue, v7);
}

- (void)touch:(unsigned int)a3 didMoveToPoint:(CGPoint)a4 eventMask:(unsigned int)a5 z:(double)a6 maxZ:(double)a7
{
  workQueue = self->_workQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003401C;
  v8[3] = &unk_1000FAC40;
  v8[4] = self;
  v9 = a4;
  v12 = a3;
  v10 = a7;
  v11 = a6;
  dispatch_async(workQueue, v8);
}

- (void)touchDidTransfer:(unsigned int)a3 destination:(id)a4
{
  v6 = a4;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034128;
  block[3] = &unk_1000FD1A0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(workQueue, block);
}

- (void)touchDidDetach:(unsigned int)a3 destinations:(id)a4
{
  workQueue = self->_workQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003421C;
  v5[3] = &unk_1000FCD68;
  v5[4] = self;
  v6 = a3;
  dispatch_async(workQueue, v5);
}

- (void)touch:(unsigned int)a3 didHitTestToDestination:(id)a4 hostingChainIndex:(int64_t)a5
{
  v8 = a4;
  workQueue = self->_workQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000342E4;
  v11[3] = &unk_1000FBA90;
  v11[4] = self;
  v12 = v8;
  v14 = a3;
  v13 = a5;
  v10 = v8;
  dispatch_async(workQueue, v11);
}

- (void)touch:(unsigned int)a3 pathIndex:(int64_t)a4 downAtPoint:(CGPoint)a5 eventMask:(unsigned int)a6 transducerType:(unsigned int)a7
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034418;
  block[3] = &unk_1000FAC18;
  block[4] = self;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a6;
  dispatch_async(workQueue, block);
}

- (void)touch:(unsigned int)a3 pathIndex:(int64_t)a4 rangeInAtPoint:(CGPoint)a5 eventMask:(unsigned int)a6 z:(double)a7 maxZ:(double)a8 transducerType:(unsigned int)a9
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000345F0;
  block[3] = &unk_1000FABF0;
  block[4] = self;
  v11 = a5;
  v15 = a3;
  v12 = a4;
  v13 = a7;
  v14 = a8;
  dispatch_async(workQueue, block);
}

- (void)annotateTouch:(unsigned int)a3 withString:(id)a4 uniqueIdentifier:(id)a5 fromPID:(int)a6
{
  v10 = a4;
  v11 = a5;
  workQueue = self->_workQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100034850;
  v15[3] = &unk_1000FD238;
  v15[4] = self;
  v16 = v10;
  v17 = v11;
  v18 = a3;
  v19 = a6;
  v13 = v11;
  v14 = v10;
  dispatch_async(workQueue, v15);
}

- (void)annotateTouch:(unsigned int)a3 withString:(id)a4 uniqueIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  workQueue = self->_workQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100034930;
  v13[3] = &unk_1000FABC8;
  v16 = a3;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(workQueue, v13);
}

- (void)annotateTouch:(unsigned int)a3 withUniqueString:(id)a4
{
  v6 = a4;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000349F0;
  block[3] = &unk_1000FD1A0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(workQueue, block);
}

- (void)setShouldVisualizeHitTestRegions:(BOOL)a3
{
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100034A78;
  v4[3] = &unk_1000FCD90;
  v4[4] = self;
  v5 = a3;
  dispatch_async(workQueue, v4);
}

- (void)setShouldVisualizeTouches:(BOOL)a3
{
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100034B6C;
  v4[3] = &unk_1000FCD90;
  v4[4] = self;
  v5 = a3;
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

- (BKTouchAnnotationController)initWithDisplayUUID:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = BKTouchAnnotationController;
  v5 = [(BKTouchAnnotationController *)&v12 init];
  if (v5)
  {
    v6 = [objc_opt_class() workQueue];
    workQueue = v5->_workQueue;
    v5->_workQueue = v6;

    v8 = sub_10000A500(v4);
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