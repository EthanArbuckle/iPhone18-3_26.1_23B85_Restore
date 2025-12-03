@interface PGDisplayLink
- (PGDisplayLink)initWithOwner:(id)owner linkFired:(id)fired;
- (id)owner;
- (void)_linkFired:(id)fired;
- (void)invalidate;
- (void)setPreferredFramesPerSecond:(unint64_t)second;
@end

@implementation PGDisplayLink

- (PGDisplayLink)initWithOwner:(id)owner linkFired:(id)fired
{
  ownerCopy = owner;
  firedCopy = fired;
  v13.receiver = self;
  v13.super_class = PGDisplayLink;
  v8 = [(PGDisplayLink *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_owner, ownerCopy);
    v10 = MEMORY[0x1BFB0C680](firedCopy);
    linkFired = v9->_linkFired;
    v9->_linkFired = v10;
  }

  return v9;
}

- (void)setPreferredFramesPerSecond:(unint64_t)second
{
  if (self->_preferredFramesPerSecond == second)
  {
    return;
  }

  self->_preferredFramesPerSecond = second;
  if (self->_invalidated)
  {
    return;
  }

  link = self->_link;
  if (!second)
  {
    v6 = 1;
LABEL_9:

    [(CADisplayLink *)link setPaused:v6];
    return;
  }

  if (link)
  {
    [(CADisplayLink *)link setPreferredFramesPerSecond:second];
    if (![(CADisplayLink *)self->_link isPaused])
    {
      return;
    }

    link = self->_link;
    v6 = 0;
    goto LABEL_9;
  }

  v7 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__linkFired_];
  v8 = self->_link;
  self->_link = v7;

  [(CADisplayLink *)self->_link setPreferredFramesPerSecond:second];
  v9 = self->_link;
  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  [(CADisplayLink *)v9 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];
}

- (void)invalidate
{
  self->_invalidated = 1;
  [(CADisplayLink *)self->_link invalidate];
  link = self->_link;
  self->_link = 0;
}

- (void)_linkFired:(id)fired
{
  owner = [(PGDisplayLink *)self owner];
  if (owner)
  {
    linkFired = [(PGDisplayLink *)self linkFired];
    (linkFired)[2](linkFired, owner, self);
  }

  else
  {
    [(PGDisplayLink *)self invalidate];
  }
}

- (id)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

@end