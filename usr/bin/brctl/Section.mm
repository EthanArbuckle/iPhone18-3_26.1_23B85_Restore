@interface Section
- (Section)initWithUUID:(id)d kind:(int)kind depth:(int)depth parent:(id)parent;
- (id)sectionRoot;
- (void)_dumpPrefix:(const char *)prefix depth:(int)depth to:(id)to;
- (void)dumpEndSectionTo:(id)to;
- (void)dumpPrefixWithKind:(int)kind depth:(int)depth to:(id)to;
@end

@implementation Section

- (Section)initWithUUID:(id)d kind:(int)kind depth:(int)depth parent:(id)parent
{
  parentCopy = parent;
  v16.receiver = self;
  v16.super_class = Section;
  v11 = [(Section *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_parent, parent);
    v12->_kind = kind;
    v12->_depth = depth;
    if (kind == 4 || !parentCopy)
    {
      v14 = (dword_10002A7B0 + 1) & 7;
      dword_10002A7B0 = (dword_10002A7B0 + 1) & 7;
      v12->_color = dword_100019B10[v14];
    }

    else
    {
      sectionRoot = [(Section *)v12 sectionRoot];
      v12->_color = sectionRoot[2];
    }
  }

  return v12;
}

- (id)sectionRoot
{
  selfCopy = self;
  parent = selfCopy->_parent;
  if (parent)
  {
    while (selfCopy->_kind != 4)
    {
      v4 = parent;

      parent = v4->_parent;
      selfCopy = v4;
      if (!parent)
      {
        goto LABEL_6;
      }
    }
  }

  v4 = selfCopy;
LABEL_6:

  return v4;
}

- (void)_dumpPrefix:(const char *)prefix depth:(int)depth to:(id)to
{
  toCopy = to;
  if (depth >= 1)
  {
    v9 = toCopy;
    if (self->_kind != 4)
    {
      [(Section *)self->_parent _dumpPrefix:prefix depth:(depth - 1) to:toCopy];
      toCopy = v9;
    }

    [toCopy startFgColor:self->_color attr:2];
    [v9 puts:prefix len:strlen(prefix)];
    [v9 reset];
    toCopy = v9;
  }
}

- (void)dumpPrefixWithKind:(int)kind depth:(int)depth to:(id)to
{
  toCopy = to;
  v9 = "┃  ";
  v11 = toCopy;
  if (kind > 3)
  {
    if (kind == 4)
    {
      v10 = "[ ";
LABEL_14:
      [(Section *)self->_parent _dumpPrefix:v9 depth:(depth - 1) to:toCopy];
      toCopy = v11;
      goto LABEL_15;
    }

    if (kind != 5)
    {
      goto LABEL_18;
    }

    v10 = " o ";
  }

  else
  {
    if (kind)
    {
      if (kind == 2)
      {
        v10 = "┏  ";
        goto LABEL_9;
      }

LABEL_18:
      sub_1000150A8();
    }

    v10 = "┃  ";
  }

LABEL_9:
  if (kind == 5)
  {
    v9 = v10;
  }

  if (self->_kind != 4)
  {
    goto LABEL_14;
  }

LABEL_15:
  [toCopy startFgColor:self->_color attr:2];
  [v11 puts:v10 len:strlen(v10)];
  [v11 reset];
}

- (void)dumpEndSectionTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_kind != 4)
  {
    [(Section *)self->_parent _dumpPrefix:"┃  " depth:(self->_depth - 1) to:toCopy];
    toCopy = v5;
  }

  [toCopy startFgColor:self->_color attr:2];
  [v5 write:{"%send\n", "┗  "}];
  [v5 reset];
}

@end