@interface PGDisplayLink
- (PGDisplayLink)initWithOwner:(id)a3 linkFired:(id)a4;
- (id)owner;
- (void)_linkFired:(id)a3;
- (void)invalidate;
- (void)setPreferredFramesPerSecond:(unint64_t)a3;
@end

@implementation PGDisplayLink

- (PGDisplayLink)initWithOwner:(id)a3 linkFired:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PGDisplayLink;
  v8 = [(PGDisplayLink *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_owner, v6);
    v10 = MEMORY[0x1BFB0C680](v7);
    linkFired = v9->_linkFired;
    v9->_linkFired = v10;
  }

  return v9;
}

- (void)setPreferredFramesPerSecond:(unint64_t)a3
{
  if (self->_preferredFramesPerSecond == a3)
  {
    return;
  }

  self->_preferredFramesPerSecond = a3;
  if (self->_invalidated)
  {
    return;
  }

  link = self->_link;
  if (!a3)
  {
    v6 = 1;
LABEL_9:

    [(CADisplayLink *)link setPaused:v6];
    return;
  }

  if (link)
  {
    [(CADisplayLink *)link setPreferredFramesPerSecond:a3];
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

  [(CADisplayLink *)self->_link setPreferredFramesPerSecond:a3];
  v9 = self->_link;
  v10 = [MEMORY[0x1E695DFD0] mainRunLoop];
  [(CADisplayLink *)v9 addToRunLoop:v10 forMode:*MEMORY[0x1E695DA28]];
}

- (void)invalidate
{
  self->_invalidated = 1;
  [(CADisplayLink *)self->_link invalidate];
  link = self->_link;
  self->_link = 0;
}

- (void)_linkFired:(id)a3
{
  v5 = [(PGDisplayLink *)self owner];
  if (v5)
  {
    v4 = [(PGDisplayLink *)self linkFired];
    (v4)[2](v4, v5, self);
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