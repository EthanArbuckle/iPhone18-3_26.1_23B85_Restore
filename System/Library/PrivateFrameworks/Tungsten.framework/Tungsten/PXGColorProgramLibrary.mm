@interface PXGColorProgramLibrary
- (PXGColorProgramLibrary)init;
- (PXGColorProgramLibrary)initWithContext:(id)a3 destinationColorSpace:(CGColorSpace *)a4;
- (id)colorProgramForSourceColorSpace:(CGColorSpace *)a3 flags:(unint64_t)a4;
- (id)description;
- (void)dealloc;
@end

@implementation PXGColorProgramLibrary

- (id)colorProgramForSourceColorSpace:(CGColorSpace *)a3 flags:(unint64_t)a4
{
  os_unfair_lock_lock(&self->_lock);
  if (CGColorSpaceGetModel(a3) == kCGColorSpaceModelCMYK)
  {
    a3 = PXGGetReconciledColorSpace(a3);
  }

  if (![(NSMutableArray *)self->_programs count])
  {
    goto LABEL_8;
  }

  v7 = 0;
  while (1)
  {
    v8 = [(NSMutableArray *)self->_programs objectAtIndexedSubscript:v7];
    if ([v8 flags] == a4)
    {
      [v8 sourceColorSpace];
      if (CGColorSpaceEqualToColorSpaceIgnoringRange())
      {
        break;
      }
    }

    if (++v7 >= [(NSMutableArray *)self->_programs count])
    {
      goto LABEL_8;
    }
  }

  if (v7)
  {
    programs = self->_programs;
    v10 = v8;
    [(NSMutableArray *)programs removeObjectAtIndex:v7];
    [(NSMutableArray *)self->_programs insertObject:v10 atIndex:0];
  }

  if (!v8)
  {
LABEL_8:
    if (([(NSMutableSet *)self->_failedColorspaces containsObject:a3]& 1) != 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = [objc_alloc(objc_msgSend(objc_opt_class() "colorProgramClass"))];
      if (v8)
      {
        [(NSMutableArray *)self->_programs insertObject:v8 atIndex:0];
      }

      else
      {
        [(NSMutableSet *)self->_failedColorspaces addObject:a3];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)description
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v16.receiver = self;
  v16.super_class = PXGColorProgramLibrary;
  v4 = [(PXGColorProgramLibrary *)&v16 description];
  v5 = [v3 stringWithFormat:@"<%@ programs:\n", v4];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_programs;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 appendFormat:@"%@\n\n", *(*(&v12 + 1) + 8 * i)];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }

  [v5 appendString:@">"];

  return v5;
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_destinationColorSpace);
  v3.receiver = self;
  v3.super_class = PXGColorProgramLibrary;
  [(PXGColorProgramLibrary *)&v3 dealloc];
}

- (PXGColorProgramLibrary)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGColorProgram.m" lineNumber:689 description:{@"%s is not available as initializer", "-[PXGColorProgramLibrary init]"}];

  abort();
}

- (PXGColorProgramLibrary)initWithContext:(id)a3 destinationColorSpace:(CGColorSpace *)a4
{
  v8 = a3;
  v18.receiver = self;
  v18.super_class = PXGColorProgramLibrary;
  v9 = [(PXGColorProgramLibrary *)&v18 init];
  if (v9)
  {
    v10 = [v8 device];

    if (v10)
    {
      if (a4)
      {
LABEL_4:
        objc_storeStrong(&v9->_metalRenderContext, a3);
        v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
        programs = v9->_programs;
        v9->_programs = v11;

        v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
        failedColorspaces = v9->_failedColorspaces;
        v9->_failedColorspaces = v13;

        v9->_destinationColorSpace = CGColorSpaceRetain(a4);
        v9->_lock._os_unfair_lock_opaque = 0;
        goto LABEL_5;
      }
    }

    else
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:a2 object:v9 file:@"PXGColorProgram.m" lineNumber:677 description:{@"Invalid parameter not satisfying: %@", @"context.device != nil"}];

      if (a4)
      {
        goto LABEL_4;
      }
    }

    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:v9 file:@"PXGColorProgram.m" lineNumber:678 description:{@"Invalid parameter not satisfying: %@", @"destinationColorSpace != nil"}];

    goto LABEL_4;
  }

LABEL_5:

  return v9;
}

@end