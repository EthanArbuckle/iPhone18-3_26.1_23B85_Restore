@interface TSDRepTileProvider
- (TSDRepTileProvider)initWithRep:(id)rep;
- (void)drawTargetInLayer:(id)layer context:(CGContext *)context;
@end

@implementation TSDRepTileProvider

- (TSDRepTileProvider)initWithRep:(id)rep
{
  interactiveCanvasController = [rep interactiveCanvasController];
  i_queueForTileProvider = [rep i_queueForTileProvider];
  i_tileStorage = [interactiveCanvasController i_tileStorage];
  accessController = [interactiveCanvasController accessController];

  return [(TSDTileProvider *)self initWithTarget:rep queue:i_queueForTileProvider storage:i_tileStorage accessController:accessController];
}

- (void)drawTargetInLayer:(id)layer context:(CGContext *)context
{
  mTarget = self->super.mTarget;
  interactiveCanvasController = [mTarget interactiveCanvasController];

  [interactiveCanvasController i_drawRepWithReadLock:mTarget inContext:context forLayer:layer];
}

@end