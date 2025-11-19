@interface _UIResponder_Override_Host_Entry
+ (id)entryWithResponder:(id)a3 forType:(int64_t)a4;
- (UIResponder)overridden;
- (id)description;
- (unint64_t)hash;
@end

@implementation _UIResponder_Override_Host_Entry

+ (id)entryWithResponder:(id)a3 forType:(int64_t)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = v6;
  if (v6)
  {
    objc_storeWeak((v6 + 8), v5);
    v7[2] = a4;
  }

  return v7;
}

- (unint64_t)hash
{
  WeakRetained = objc_loadWeakRetained(&self->_overridden);
  type = self->_type;

  return type ^ WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  WeakRetained = objc_loadWeakRetained(&self->_overridden);
  v5 = NSStringFrom_UI_UIResponder_Override_Type(self->_type);
  v6 = [v3 stringWithFormat:@"<%@ = %@>", WeakRetained, v5];

  return v6;
}

- (UIResponder)overridden
{
  WeakRetained = objc_loadWeakRetained(&self->_overridden);

  return WeakRetained;
}

@end