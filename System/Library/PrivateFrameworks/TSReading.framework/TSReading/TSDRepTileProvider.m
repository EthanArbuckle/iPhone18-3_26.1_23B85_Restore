@interface TSDRepTileProvider
- (TSDRepTileProvider)initWithRep:(id)a3;
- (void)drawTargetInLayer:(id)a3 context:(CGContext *)a4;
@end

@implementation TSDRepTileProvider

- (TSDRepTileProvider)initWithRep:(id)a3
{
  v5 = [a3 interactiveCanvasController];
  v6 = [a3 i_queueForTileProvider];
  v7 = [v5 i_tileStorage];
  v8 = [v5 accessController];

  return [(TSDTileProvider *)self initWithTarget:a3 queue:v6 storage:v7 accessController:v8];
}

- (void)drawTargetInLayer:(id)a3 context:(CGContext *)a4
{
  mTarget = self->super.mTarget;
  v7 = [mTarget interactiveCanvasController];

  [v7 i_drawRepWithReadLock:mTarget inContext:a4 forLayer:a3];
}

@end