@interface OFEmitterView
- (CGPoint)emitterPosition;
- (CGSize)emitterSize;
- (NSArray)emitterCells;
- (NSString)emitterMode;
- (NSString)emitterShape;
- (NSString)renderMode;
- (double)emitterDepth;
- (double)emitterZPosition;
- (unsigned)seed;
- (void)dealloc;
- (void)setBirthRate:(double)a3;
- (void)setEmitterCells:(id)a3;
- (void)setEmitterDepth:(double)a3;
- (void)setEmitterMode:(id)a3;
- (void)setEmitterPosition:(CGPoint)a3;
- (void)setEmitterShape:(id)a3;
- (void)setEmitterSize:(CGSize)a3;
- (void)setEmitterZPosition:(double)a3;
- (void)setLifetime:(double)a3;
- (void)setRenderMode:(id)a3;
- (void)setScale:(double)a3;
- (void)setSeed:(unsigned int)a3;
- (void)setSpin:(double)a3;
- (void)setVelocity:(double)a3;
@end

@implementation OFEmitterView

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OFEmitterView;
  [(OFUIView *)&v2 dealloc];
}

- (void)setBirthRate:(double)a3
{
  v3 = a3;
  v4 = [(OFEmitterView *)self emitterLayer];
  *&v5 = v3;

  [v4 setBirthRate:v5];
}

- (void)setEmitterCells:(id)a3
{
  v4 = [(OFEmitterView *)self emitterLayer];

  [v4 setEmitterCells:a3];
}

- (NSArray)emitterCells
{
  v2 = [(OFEmitterView *)self emitterLayer];

  return [v2 emitterCells];
}

- (void)setEmitterDepth:(double)a3
{
  v4 = [(OFEmitterView *)self emitterLayer];

  [v4 setEmitterDepth:a3];
}

- (double)emitterDepth
{
  v2 = [(OFEmitterView *)self emitterLayer];

  [v2 emitterDepth];
  return result;
}

- (void)setEmitterMode:(id)a3
{
  v4 = [(OFEmitterView *)self emitterLayer];

  [v4 setEmitterMode:a3];
}

- (NSString)emitterMode
{
  v2 = [(OFEmitterView *)self emitterLayer];

  return [v2 emitterMode];
}

- (void)setEmitterPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(OFEmitterView *)self emitterLayer];

  [v5 setEmitterPosition:{x, y}];
}

- (CGPoint)emitterPosition
{
  v2 = [(OFEmitterView *)self emitterLayer];

  [v2 emitterPosition];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setEmitterShape:(id)a3
{
  v4 = [(OFEmitterView *)self emitterLayer];

  [v4 setEmitterShape:a3];
}

- (NSString)emitterShape
{
  v2 = [(OFEmitterView *)self emitterLayer];

  return [v2 emitterShape];
}

- (void)setEmitterSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(OFEmitterView *)self emitterLayer];

  [v5 setEmitterSize:{width, height}];
}

- (CGSize)emitterSize
{
  v2 = [(OFEmitterView *)self emitterLayer];

  [v2 emitterSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setEmitterZPosition:(double)a3
{
  v4 = [(OFEmitterView *)self emitterLayer];

  [v4 setEmitterZPosition:a3];
}

- (double)emitterZPosition
{
  v2 = [(OFEmitterView *)self emitterLayer];

  [v2 emitterZPosition];
  return result;
}

- (void)setLifetime:(double)a3
{
  v3 = a3;
  v4 = [(OFEmitterView *)self emitterLayer];
  *&v5 = v3;

  [v4 setLifetime:v5];
}

- (void)setRenderMode:(id)a3
{
  v4 = [(OFEmitterView *)self emitterLayer];

  [v4 setRenderMode:a3];
}

- (NSString)renderMode
{
  v2 = [(OFEmitterView *)self emitterLayer];

  return [v2 renderMode];
}

- (void)setScale:(double)a3
{
  v3 = a3;
  v4 = [(OFEmitterView *)self emitterLayer];
  *&v5 = v3;

  [v4 setScale:v5];
}

- (void)setSeed:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [(OFEmitterView *)self emitterLayer];

  [v4 setSeed:v3];
}

- (unsigned)seed
{
  v2 = [(OFEmitterView *)self emitterLayer];

  return [v2 seed];
}

- (void)setSpin:(double)a3
{
  v3 = a3;
  v4 = [(OFEmitterView *)self emitterLayer];
  *&v5 = v3;

  [v4 setSpin:v5];
}

- (void)setVelocity:(double)a3
{
  v3 = a3;
  v4 = [(OFEmitterView *)self emitterLayer];
  *&v5 = v3;

  [v4 setVelocity:v5];
}

@end