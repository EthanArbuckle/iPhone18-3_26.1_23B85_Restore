@interface PLURL
- (BOOL)startAccessingSecurityScopedResource;
- (id)replacementObjectForCoder:(id)a3;
- (void)dealloc;
- (void)stopAccessingSecurityScopedResource;
@end

@implementation PLURL

- (id)replacementObjectForCoder:(id)a3
{
  v3 = [(PLURL *)self absoluteString];
  v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v3];

  return v4;
}

- (void)stopAccessingSecurityScopedResource
{
  if (atomic_fetch_add(&self->_ssbCounter, 0xFFFFu) == 1)
  {
    v5 = v2;
    v6 = v3;
    v4.receiver = self;
    v4.super_class = PLURL;
    [(PLURL *)&v4 stopAccessingSecurityScopedResource];
  }
}

- (BOOL)startAccessingSecurityScopedResource
{
  p_ssbCounter = &self->_ssbCounter;
  result = 1;
  if (!atomic_fetch_add(p_ssbCounter, 1u))
  {
    v5.receiver = self;
    v5.super_class = PLURL;
    if ([(PLURL *)&v5 startAccessingSecurityScopedResource])
    {
      return 1;
    }

    else
    {
      result = 0;
      atomic_store(0, &self->_ssbCounter);
    }
  }

  return result;
}

- (void)dealloc
{
  if (atomic_load(&self->_ssbCounter))
  {
    v5.receiver = self;
    v5.super_class = PLURL;
    [(PLURL *)&v5 stopAccessingSecurityScopedResource];
  }

  v4.receiver = self;
  v4.super_class = PLURL;
  [(PLURL *)&v4 dealloc];
}

@end