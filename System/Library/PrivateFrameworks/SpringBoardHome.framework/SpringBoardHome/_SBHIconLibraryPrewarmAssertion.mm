@interface _SBHIconLibraryPrewarmAssertion
- (BOOL)isEqual:(id)a3;
- (SBHIconLibraryTableViewController)iconLibraryTableViewController;
- (_SBHIconLibraryPrewarmAssertion)initWithReason:(id)a3 iconLibraryTableViewController:(id)a4;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _SBHIconLibraryPrewarmAssertion

- (_SBHIconLibraryPrewarmAssertion)initWithReason:(id)a3 iconLibraryTableViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _SBHIconLibraryPrewarmAssertion;
  v8 = [(_SBHIconLibraryPrewarmAssertion *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    reason = v8->_reason;
    v8->_reason = v9;

    objc_storeWeak(&v8->_iconLibraryTableViewController, v7);
  }

  return v8;
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    [(_SBHIconLibraryPrewarmAssertion *)self invalidate];
  }

  v3.receiver = self;
  v3.super_class = _SBHIconLibraryPrewarmAssertion;
  [(_SBHIconLibraryPrewarmAssertion *)&v3 dealloc];
}

- (void)invalidate
{
  if (self->_invalidated)
  {
    NSLog(&cfstr_ThisAssertionH.isa, a2, 0);
  }

  self->_invalidated = 1;
  WeakRetained = objc_loadWeakRetained(&self->_iconLibraryTableViewController);
  [WeakRetained _invalidatePrewarmAssertion:self];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = v7;
    if (v7)
    {
      WeakRetained = objc_loadWeakRetained(v7 + 3);
      v10 = objc_loadWeakRetained(&self->_iconLibraryTableViewController);
      if (WeakRetained == v10)
      {
        v11 = [v8[2] isEqual:self->_reason];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (SBHIconLibraryTableViewController)iconLibraryTableViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_iconLibraryTableViewController);

  return WeakRetained;
}

@end