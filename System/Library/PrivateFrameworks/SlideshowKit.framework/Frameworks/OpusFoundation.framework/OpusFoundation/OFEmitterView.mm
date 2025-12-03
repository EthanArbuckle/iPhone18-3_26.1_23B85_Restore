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
- (void)setBirthRate:(double)rate;
- (void)setEmitterCells:(id)cells;
- (void)setEmitterDepth:(double)depth;
- (void)setEmitterMode:(id)mode;
- (void)setEmitterPosition:(CGPoint)position;
- (void)setEmitterShape:(id)shape;
- (void)setEmitterSize:(CGSize)size;
- (void)setEmitterZPosition:(double)position;
- (void)setLifetime:(double)lifetime;
- (void)setRenderMode:(id)mode;
- (void)setScale:(double)scale;
- (void)setSeed:(unsigned int)seed;
- (void)setSpin:(double)spin;
- (void)setVelocity:(double)velocity;
@end

@implementation OFEmitterView

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OFEmitterView;
  [(OFUIView *)&v2 dealloc];
}

- (void)setBirthRate:(double)rate
{
  rateCopy = rate;
  emitterLayer = [(OFEmitterView *)self emitterLayer];
  *&v5 = rateCopy;

  [emitterLayer setBirthRate:v5];
}

- (void)setEmitterCells:(id)cells
{
  emitterLayer = [(OFEmitterView *)self emitterLayer];

  [emitterLayer setEmitterCells:cells];
}

- (NSArray)emitterCells
{
  emitterLayer = [(OFEmitterView *)self emitterLayer];

  return [emitterLayer emitterCells];
}

- (void)setEmitterDepth:(double)depth
{
  emitterLayer = [(OFEmitterView *)self emitterLayer];

  [emitterLayer setEmitterDepth:depth];
}

- (double)emitterDepth
{
  emitterLayer = [(OFEmitterView *)self emitterLayer];

  [emitterLayer emitterDepth];
  return result;
}

- (void)setEmitterMode:(id)mode
{
  emitterLayer = [(OFEmitterView *)self emitterLayer];

  [emitterLayer setEmitterMode:mode];
}

- (NSString)emitterMode
{
  emitterLayer = [(OFEmitterView *)self emitterLayer];

  return [emitterLayer emitterMode];
}

- (void)setEmitterPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  emitterLayer = [(OFEmitterView *)self emitterLayer];

  [emitterLayer setEmitterPosition:{x, y}];
}

- (CGPoint)emitterPosition
{
  emitterLayer = [(OFEmitterView *)self emitterLayer];

  [emitterLayer emitterPosition];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setEmitterShape:(id)shape
{
  emitterLayer = [(OFEmitterView *)self emitterLayer];

  [emitterLayer setEmitterShape:shape];
}

- (NSString)emitterShape
{
  emitterLayer = [(OFEmitterView *)self emitterLayer];

  return [emitterLayer emitterShape];
}

- (void)setEmitterSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  emitterLayer = [(OFEmitterView *)self emitterLayer];

  [emitterLayer setEmitterSize:{width, height}];
}

- (CGSize)emitterSize
{
  emitterLayer = [(OFEmitterView *)self emitterLayer];

  [emitterLayer emitterSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setEmitterZPosition:(double)position
{
  emitterLayer = [(OFEmitterView *)self emitterLayer];

  [emitterLayer setEmitterZPosition:position];
}

- (double)emitterZPosition
{
  emitterLayer = [(OFEmitterView *)self emitterLayer];

  [emitterLayer emitterZPosition];
  return result;
}

- (void)setLifetime:(double)lifetime
{
  lifetimeCopy = lifetime;
  emitterLayer = [(OFEmitterView *)self emitterLayer];
  *&v5 = lifetimeCopy;

  [emitterLayer setLifetime:v5];
}

- (void)setRenderMode:(id)mode
{
  emitterLayer = [(OFEmitterView *)self emitterLayer];

  [emitterLayer setRenderMode:mode];
}

- (NSString)renderMode
{
  emitterLayer = [(OFEmitterView *)self emitterLayer];

  return [emitterLayer renderMode];
}

- (void)setScale:(double)scale
{
  scaleCopy = scale;
  emitterLayer = [(OFEmitterView *)self emitterLayer];
  *&v5 = scaleCopy;

  [emitterLayer setScale:v5];
}

- (void)setSeed:(unsigned int)seed
{
  v3 = *&seed;
  emitterLayer = [(OFEmitterView *)self emitterLayer];

  [emitterLayer setSeed:v3];
}

- (unsigned)seed
{
  emitterLayer = [(OFEmitterView *)self emitterLayer];

  return [emitterLayer seed];
}

- (void)setSpin:(double)spin
{
  spinCopy = spin;
  emitterLayer = [(OFEmitterView *)self emitterLayer];
  *&v5 = spinCopy;

  [emitterLayer setSpin:v5];
}

- (void)setVelocity:(double)velocity
{
  velocityCopy = velocity;
  emitterLayer = [(OFEmitterView *)self emitterLayer];
  *&v5 = velocityCopy;

  [emitterLayer setVelocity:v5];
}

@end