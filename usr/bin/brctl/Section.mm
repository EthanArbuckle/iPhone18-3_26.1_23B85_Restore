@interface Section
- (Section)initWithUUID:(id)a3 kind:(int)a4 depth:(int)a5 parent:(id)a6;
- (id)sectionRoot;
- (void)_dumpPrefix:(const char *)a3 depth:(int)a4 to:(id)a5;
- (void)dumpEndSectionTo:(id)a3;
- (void)dumpPrefixWithKind:(int)a3 depth:(int)a4 to:(id)a5;
@end

@implementation Section

- (Section)initWithUUID:(id)a3 kind:(int)a4 depth:(int)a5 parent:(id)a6
{
  v10 = a6;
  v16.receiver = self;
  v16.super_class = Section;
  v11 = [(Section *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_parent, a6);
    v12->_kind = a4;
    v12->_depth = a5;
    if (a4 == 4 || !v10)
    {
      v14 = (dword_10002A7B0 + 1) & 7;
      dword_10002A7B0 = (dword_10002A7B0 + 1) & 7;
      v12->_color = dword_100019B10[v14];
    }

    else
    {
      v13 = [(Section *)v12 sectionRoot];
      v12->_color = v13[2];
    }
  }

  return v12;
}

- (id)sectionRoot
{
  v2 = self;
  parent = v2->_parent;
  if (parent)
  {
    while (v2->_kind != 4)
    {
      v4 = parent;

      parent = v4->_parent;
      v2 = v4;
      if (!parent)
      {
        goto LABEL_6;
      }
    }
  }

  v4 = v2;
LABEL_6:

  return v4;
}

- (void)_dumpPrefix:(const char *)a3 depth:(int)a4 to:(id)a5
{
  v8 = a5;
  if (a4 >= 1)
  {
    v9 = v8;
    if (self->_kind != 4)
    {
      [(Section *)self->_parent _dumpPrefix:a3 depth:(a4 - 1) to:v8];
      v8 = v9;
    }

    [v8 startFgColor:self->_color attr:2];
    [v9 puts:a3 len:strlen(a3)];
    [v9 reset];
    v8 = v9;
  }
}

- (void)dumpPrefixWithKind:(int)a3 depth:(int)a4 to:(id)a5
{
  v8 = a5;
  v9 = "┃  ";
  v11 = v8;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v10 = "[ ";
LABEL_14:
      [(Section *)self->_parent _dumpPrefix:v9 depth:(a4 - 1) to:v8];
      v8 = v11;
      goto LABEL_15;
    }

    if (a3 != 5)
    {
      goto LABEL_18;
    }

    v10 = " o ";
  }

  else
  {
    if (a3)
    {
      if (a3 == 2)
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
  if (a3 == 5)
  {
    v9 = v10;
  }

  if (self->_kind != 4)
  {
    goto LABEL_14;
  }

LABEL_15:
  [v8 startFgColor:self->_color attr:2];
  [v11 puts:v10 len:strlen(v10)];
  [v11 reset];
}

- (void)dumpEndSectionTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_kind != 4)
  {
    [(Section *)self->_parent _dumpPrefix:"┃  " depth:(self->_depth - 1) to:v4];
    v4 = v5;
  }

  [v4 startFgColor:self->_color attr:2];
  [v5 write:{"%send\n", "┗  "}];
  [v5 reset];
}

@end