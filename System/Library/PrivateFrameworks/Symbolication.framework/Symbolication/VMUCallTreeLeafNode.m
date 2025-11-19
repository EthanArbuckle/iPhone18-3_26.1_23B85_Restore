@interface VMUCallTreeLeafNode
- (void)addAddress:(unint64_t)a3;
- (void)getBrowserName:(id)a3;
@end

@implementation VMUCallTreeLeafNode

- (void)addAddress:(unint64_t)a3
{
  addresses = self->_addresses;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [(NSCountedSet *)addresses addObject:v5];

  combinedName = self->_combinedName;
  self->_combinedName = 0;
}

- (void)getBrowserName:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = v5;
  if (!self->_combinedName)
  {
    v26 = v5;
    v28 = v4;
    v39 = 0;
    v40 = 0;
    v37 = 0;
    v38 = 0;
    [(VMUCallTreeNode *)self parseNameIntoSymbol:&v39 library:&v38 loadAddress:0 offset:0 address:&v40 suffix:&v37];
    v25 = v39;
    v24 = v38;
    v23 = v37;
    v7 = [(NSCountedSet *)self->_addresses allObjects];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __38__VMUCallTreeLeafNode_getBrowserName___block_invoke;
    v36[3] = &unk_1E8279EA0;
    v27 = self;
    v36[4] = self;
    v8 = [v7 sortedArrayUsingComparator:v36];

    v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v30 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v33;
      while (2)
      {
        v15 = 0;
        v29 = v13 + v12;
        do
        {
          if (*v33 != v14)
          {
            objc_enumerationMutation(v10);
          }

          if (v13 > 1)
          {
            if (v13 == 2)
            {
              [v9 appendString:{@", ..."}];
              [v30 appendString:{@", ..."}];
              goto LABEL_16;
            }
          }

          else
          {
            v16 = *(*(&v32 + 1) + 8 * v15);
            if (v13 == 1)
            {
              [v9 appendString:{@", "}];
              [v30 appendString:{@", "}];
            }

            v17 = [v16 unsignedLongLongValue];
            [v9 appendFormat:@"%qu", v17 - v40];
            [v30 appendFormat:@"0x%qx", v17];
          }

          ++v13;
          ++v15;
        }

        while (v12 != v15);
        v12 = [v10 countByEnumeratingWithState:&v32 objects:v41 count:16];
        v13 = v29;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    self = v27;
    v18 = [(VMUCallTreeNode *)v27 nameWithStringsForSymbol:v25 library:v24 loadAddress:0 offset:v9 address:v30 suffix:v23];
    combinedName = v27->_combinedName;
    v27->_combinedName = v18;

    v4 = v28;
    v6 = v26;
  }

  v20 = self->super._name;
  objc_storeStrong(&self->super._name, self->_combinedName);
  v31.receiver = self;
  v31.super_class = VMUCallTreeLeafNode;
  [(VMUCallTreeNode *)&v31 getBrowserName:v4];
  name = self->super._name;
  self->super._name = v20;

  objc_autoreleasePoolPop(v6);
  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __38__VMUCallTreeLeafNode_getBrowserName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 56) countForObject:v5];
  v8 = [*(*(a1 + 32) + 56) countForObject:v6];
  if (v7 <= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v7 < v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (v7 == v8)
  {
    v11 = [v5 unsignedLongLongValue];
    if (v11 < [v6 unsignedLongLongValue])
    {
      v12 = -1;
    }

    else
    {
      v12 = v10;
    }

    v13 = [v5 unsignedLongLongValue];
    if (v13 > [v6 unsignedLongLongValue])
    {
      v10 = 1;
    }

    else
    {
      v10 = v12;
    }
  }

  return v10;
}

@end