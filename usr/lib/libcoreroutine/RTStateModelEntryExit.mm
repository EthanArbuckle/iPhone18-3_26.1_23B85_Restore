@interface RTStateModelEntryExit
- (BOOL)isEqual:(id)equal;
- (RTStateModelEntryExit)init;
- (RTStateModelEntryExit)initWithCoder:(id)coder;
- (RTStateModelEntryExit)initWithEntry:(double)entry exit:(double)exit;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTStateModelEntryExit

- (RTStateModelEntryExit)init
{
  v5.receiver = self;
  v5.super_class = RTStateModelEntryExit;
  v2 = [(RTStateModelEntryExit *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(RTStateModelEntryExit *)v2 setEntry_s:-1.0];
    [(RTStateModelEntryExit *)v3 setExit_s:-1.0];
  }

  return v3;
}

- (RTStateModelEntryExit)initWithEntry:(double)entry exit:(double)exit
{
  v9.receiver = self;
  v9.super_class = RTStateModelEntryExit;
  v6 = [(RTStateModelEntryExit *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(RTStateModelEntryExit *)v6 setEntry_s:entry];
    [(RTStateModelEntryExit *)v7 setExit_s:exit];
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(RTStateModelEntryExit *)self entry_s];
  [coderCopy encodeDouble:@"entry_s" forKey:?];
  [(RTStateModelEntryExit *)self exit_s];
  [coderCopy encodeDouble:@"exit_s" forKey:?];
}

- (RTStateModelEntryExit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = RTStateModelEntryExit;
  v5 = [(RTStateModelEntryExit *)&v7 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"entry_s"];
    [(RTStateModelEntryExit *)v5 setEntry_s:?];
    [coderCopy decodeDoubleForKey:@"exit_s"];
    [(RTStateModelEntryExit *)v5 setExit_s:?];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (equalCopy == self)
    {
      v12 = 1;
    }

    else
    {
      v5 = equalCopy;
      [(RTStateModelEntryExit *)self entry_s];
      v7 = v6;
      [(RTStateModelEntryExit *)v5 entry_s];
      if (v7 == v8)
      {
        [(RTStateModelEntryExit *)self exit_s];
        v10 = v9;
        [(RTStateModelEntryExit *)v5 exit_s];
        v12 = v10 == v11;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(RTStateModelEntryExit *)self entry_s];
  v5 = v4;
  if (v4 == -1.0)
  {
    v7 = 0;
  }

  else
  {
    v6 = MEMORY[0x277CBEAA8];
    [(RTStateModelEntryExit *)self entry_s];
    v7 = [v6 stringFromTimestamp:?];
  }

  [(RTStateModelEntryExit *)self exit_s];
  if (v8 == -1.0)
  {
    v11 = [v3 stringWithFormat:@"entry, %@, exit, %@", v7, 0];
  }

  else
  {
    v9 = MEMORY[0x277CBEAA8];
    [(RTStateModelEntryExit *)self exit_s];
    v10 = [v9 stringFromTimestamp:?];
    v11 = [v3 stringWithFormat:@"entry, %@, exit, %@", v7, v10];
  }

  if (v5 != -1.0)
  {
  }

  return v11;
}

@end