@interface UniContext
- (UniContext)init;
- (void)dealloc;
- (void)empty;
@end

@implementation UniContext

- (UniContext)init
{
  v8.receiver = self;
  v8.super_class = UniContext;
  v4 = [(UniContext *)&v8 init];
  if (v4)
  {
    v5 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x29EDBA0A0], v2, v3);
    weakArray = v4->weakArray;
    v4->weakArray = v5;
  }

  return v4;
}

- (void)empty
{
  if (self->weakArray)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    weakArray = self->weakArray;
    if (isKindOfClass)
    {
      v9 = objc_msgSend_count(weakArray, v3, v4);
      weakArray = self->weakArray;
      if (v9)
      {
        v11 = objc_msgSend_count(weakArray, v7, v8) - 1;
        do
        {
          objc_msgSend_removePointerAtIndex_(self->weakArray, v10, v11--);
        }

        while (v11 != -1);
        weakArray = self->weakArray;
      }
    }
  }

  else
  {
    weakArray = 0;
  }

  self->weakArray = 0;
}

- (void)dealloc
{
  objc_msgSend_empty(self, a2, v2);
  v4.receiver = self;
  v4.super_class = UniContext;
  [(UniContext *)&v4 dealloc];
}

@end