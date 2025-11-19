@interface SXAXCustomRotor
+ (id)rotorWithName:(id)a3;
- (SXAXCustomRotor)initWithName:(id)a3;
- (id)description;
- (id)rotorItemAfter:(id)a3;
- (id)rotorItemBefore:(id)a3;
- (int64_t)indexOfRotorItem:(id)a3;
@end

@implementation SXAXCustomRotor

+ (id)rotorWithName:(id)a3
{
  v3 = a3;
  v4 = __rotors;
  if (!__rotors)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v6 = __rotors;
    __rotors = v5;

    v4 = __rotors;
  }

  v7 = [v4 objectForKey:v3];
  if (!v7)
  {
    v7 = [[SXAXCustomRotor alloc] initWithName:v3];
    [__rotors setObject:v7 forKey:v3];
  }

  return v7;
}

- (SXAXCustomRotor)initWithName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SXAXCustomRotor;
  v5 = [(SXAXCustomRotor *)&v10 initWithName:v4 itemSearchBlock:&__block_literal_global_62];
  objc_initWeak(&location, v5);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__SXAXCustomRotor_initWithName___block_invoke_2;
  v7[3] = &unk_1E8500E80;
  objc_copyWeak(&v8, &location);
  [(SXAXCustomRotor *)v5 setItemSearchBlock:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

id __32__SXAXCustomRotor_initWithName___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 searchDirection];
  if (v4 == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = [v3 currentItem];
    v7 = [WeakRetained rotorItemAfter:v6];
    goto LABEL_5;
  }

  if (!v4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = [v3 currentItem];
    v7 = [WeakRetained rotorItemBefore:v6];
LABEL_5:
    v8 = v7;

    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)rotorItemBefore:(id)a3
{
  v4 = [(SXAXCustomRotor *)self indexOfRotorItem:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(SXAXCustomRotor *)self rotorItems];
    v6 = [(SXAXCustomRotor *)self rotorItems];
    v7 = [v5 objectAtIndexedSubscript:{objc_msgSend(v6, "count") - 1}];

LABEL_5:
    goto LABEL_6;
  }

  v8 = v4 - 1;
  if (v4 >= 1)
  {
    v5 = [(SXAXCustomRotor *)self rotorItems];
    v7 = [v5 objectAtIndexedSubscript:v8];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:
  v9 = [v7 targetElement];

  if (!v9)
  {

    v7 = 0;
  }

  return v7;
}

- (id)rotorItemAfter:(id)a3
{
  v4 = [(SXAXCustomRotor *)self indexOfRotorItem:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
LABEL_4:
    v8 = [(SXAXCustomRotor *)self rotorItems];
    v9 = [v8 objectAtIndexedSubscript:v5];

    goto LABEL_6;
  }

  v5 = v4 + 1;
  v6 = [(SXAXCustomRotor *)self rotorItems];
  v7 = [v6 count];

  if (v5 < v7)
  {
    goto LABEL_4;
  }

  v9 = 0;
LABEL_6:
  v10 = [v9 targetElement];

  if (!v10)
  {

    v9 = 0;
  }

  return v9;
}

- (int64_t)indexOfRotorItem:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v5 = [(SXAXCustomRotor *)self rotorItems];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__SXAXCustomRotor_indexOfRotorItem___block_invoke;
  v9[3] = &unk_1E8500EA8;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __36__SXAXCustomRotor_indexOfRotorItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v7 = [*(a1 + 32) targetElement];
  v8 = [v15 targetElement];
  v9 = [v7 isEqual:v8];

  v10 = [*(a1 + 32) targetRange];
  if (v10)
  {

LABEL_4:
    v12 = [*(a1 + 32) targetRange];
    v13 = [v15 targetRange];
    v14 = [v12 isEqual:v13];

    goto LABEL_5;
  }

  v11 = [v15 targetRange];

  if (v11)
  {
    goto LABEL_4;
  }

  v14 = 1;
LABEL_5:
  if ((v9 & v14) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SXAXCustomRotor *)self name];
  v7 = [(SXAXCustomRotor *)self rotorItems];
  v8 = [v3 stringWithFormat:@"<%@: %p %@; items={%@}>", v5, self, v6, v7];;

  return v8;
}

@end