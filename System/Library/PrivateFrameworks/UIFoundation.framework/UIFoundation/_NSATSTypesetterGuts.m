@interface _NSATSTypesetterGuts
- (_DWORD)initWithTypesetter:(void *)a1;
- (void)dealloc;
- (void)finalize;
@end

@implementation _NSATSTypesetterGuts

- (void)dealloc
{
  v3 = [(_NSATSTypesetterGuts *)self zone];
  ctTypesetter = self->_ctTypesetter;
  if (ctTypesetter)
  {
    CFRelease(ctTypesetter);
  }

  lineFragmentRectArgs = self->_lineFragmentRectArgs;
  if (lineFragmentRectArgs)
  {
    NSZoneFree(v3, lineFragmentRectArgs);
  }

  bidiLevels = self->_bidiLevels;
  if (bidiLevels)
  {
    NSZoneFree(v3, bidiLevels);
  }

  v7.receiver = self;
  v7.super_class = _NSATSTypesetterGuts;
  [(_NSATSTypesetterGuts *)&v7 dealloc];
}

- (void)finalize
{
  v3 = [(_NSATSTypesetterGuts *)self zone];
  ctTypesetter = self->_ctTypesetter;
  if (ctTypesetter)
  {
    CFRelease(ctTypesetter);
  }

  bidiLevels = self->_bidiLevels;
  if (bidiLevels)
  {
    NSZoneFree(v3, bidiLevels);
  }

  v6.receiver = self;
  v6.super_class = _NSATSTypesetterGuts;
  [(_NSATSTypesetterGuts *)&v6 finalize];
}

- (_DWORD)initWithTypesetter:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = _NSATSTypesetterGuts;
  v3 = objc_msgSendSuper2(&v7, sel_init);
  if (v3)
  {
    v3[21] = v3[21] & 0xFFFFFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    v3[21] = v3[21] & 0xFFFFFFFD | v4;
    *(v3 + 5) = [a2 _getAuxData];
    if (qword_1ED4DF2D0)
    {
      if (objc_opt_class() != qword_1ED4DF2D8)
      {
        v5 = [a2 methodForSelector:sel_lineFragmentRectForProposedRect_remainingRect_];
        if (v5 != qword_1ED4DF2D0)
        {
          *(v3 + 6) = NSAllocateCollectable(0x20uLL, 0);
        }
      }
    }
  }

  return v3;
}

@end