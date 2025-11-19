@interface SHSheetDraggingEvent
+ (id)eventForDraggingDidBeginWithRubberBandCoefficient:(double)a3 dismissible:(BOOL)a4 interruptedOffset:(CGPoint)a5;
+ (id)eventForDraggingDidChangeWithTranslation:(CGPoint)a3 velocity:(CGPoint)a4 animateChange:(BOOL)a5 dismissible:(BOOL)a6;
+ (id)eventForDraggingDidEnd;
- (CGPoint)interruptedOffset;
- (CGPoint)translation;
- (CGPoint)velocity;
- (SHSheetDraggingEvent)initWithBSXPCCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SHSheetDraggingEvent

+ (id)eventForDraggingDidBeginWithRubberBandCoefficient:(double)a3 dismissible:(BOOL)a4 interruptedOffset:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4;
  v9 = objc_alloc_init(SHSheetDraggingEvent);
  [(SHSheetDraggingEvent *)v9 setType:0];
  [(SHSheetDraggingEvent *)v9 setRubberBandCoefficient:a3];
  [(SHSheetDraggingEvent *)v9 setDismissible:v7];
  [(SHSheetDraggingEvent *)v9 setInterruptedOffset:x, y];

  return v9;
}

+ (id)eventForDraggingDidChangeWithTranslation:(CGPoint)a3 velocity:(CGPoint)a4 animateChange:(BOOL)a5 dismissible:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  y = a4.y;
  x = a4.x;
  v10 = a3.y;
  v11 = a3.x;
  v12 = objc_alloc_init(SHSheetDraggingEvent);
  [(SHSheetDraggingEvent *)v12 setType:1];
  [(SHSheetDraggingEvent *)v12 setTranslation:v11, v10];
  [(SHSheetDraggingEvent *)v12 setVelocity:x, y];
  [(SHSheetDraggingEvent *)v12 setShouldAnimate:v7];
  [(SHSheetDraggingEvent *)v12 setDismissible:v6];

  return v12;
}

+ (id)eventForDraggingDidEnd
{
  v2 = objc_alloc_init(SHSheetDraggingEvent);
  [(SHSheetDraggingEvent *)v2 setType:2];

  return v2;
}

- (SHSheetDraggingEvent)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SHSheetDraggingEvent;
  v5 = [(SHSheetDraggingEvent *)&v7 init];
  if (v5)
  {
    -[SHSheetDraggingEvent setType:](v5, "setType:", [v4 decodeInt64ForKey:@"type"]);
    [v4 decodeDoubleForKey:@"rubberBandCoefficient"];
    [(SHSheetDraggingEvent *)v5 setRubberBandCoefficient:?];
    [v4 decodeCGPointForKey:@"interruptedOffset"];
    [(SHSheetDraggingEvent *)v5 setInterruptedOffset:?];
    [v4 decodeCGPointForKey:@"translation"];
    [(SHSheetDraggingEvent *)v5 setTranslation:?];
    [v4 decodeCGPointForKey:@"velocity"];
    [(SHSheetDraggingEvent *)v5 setVelocity:?];
    -[SHSheetDraggingEvent setDismissible:](v5, "setDismissible:", [v4 decodeBoolForKey:@"dismissible"]);
    -[SHSheetDraggingEvent setShouldAnimate:](v5, "setShouldAnimate:", [v4 decodeBoolForKey:@"shouldAnimate"]);
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[SHSheetDraggingEvent type](self forKey:{"type"), @"type"}];
  [(SHSheetDraggingEvent *)self rubberBandCoefficient];
  [v4 encodeDouble:@"rubberBandCoefficient" forKey:?];
  [(SHSheetDraggingEvent *)self interruptedOffset];
  [v4 encodeCGPoint:@"interruptedOffset" forKey:?];
  [(SHSheetDraggingEvent *)self translation];
  [v4 encodeCGPoint:@"translation" forKey:?];
  [(SHSheetDraggingEvent *)self velocity];
  [v4 encodeCGPoint:@"velocity" forKey:?];
  [v4 encodeBool:-[SHSheetDraggingEvent dismissible](self forKey:{"dismissible"), @"dismissible"}];
  [v4 encodeBool:-[SHSheetDraggingEvent shouldAnimate](self forKey:{"shouldAnimate"), @"shouldAnimate"}];
}

- (CGPoint)interruptedOffset
{
  x = self->_interruptedOffset.x;
  y = self->_interruptedOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)translation
{
  x = self->_translation.x;
  y = self->_translation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)velocity
{
  x = self->_velocity.x;
  y = self->_velocity.y;
  result.y = y;
  result.x = x;
  return result;
}

@end