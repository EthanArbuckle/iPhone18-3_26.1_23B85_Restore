@interface RBSProcessStateDescriptor
+ (id)descriptor;
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (RBSProcessStateDescriptor)init;
- (RBSProcessStateDescriptor)initWithRBSXPCCoder:(id)a3;
- (id)_endowmentNamespaces;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithRBSXPCCoder:(id)a3;
- (void)filterState:(id)a3;
- (void)setEndowmentNamespaces:(id)a3;
@end

@implementation RBSProcessStateDescriptor

+ (id)descriptor
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (id)_endowmentNamespaces
{
  if (a1)
  {
    a1 = a1[1];
    v1 = vars8;
  }

  return a1;
}

- (RBSProcessStateDescriptor)init
{
  v3.receiver = self;
  v3.super_class = RBSProcessStateDescriptor;
  result = [(RBSProcessStateDescriptor *)&v3 init];
  if (result)
  {
    result->_values = 1;
  }

  return result;
}

- (NSString)debugDescription
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [objc_opt_class() description];
  values = self->_values;
  if ([(NSSet *)self->_endowmentNamespaces count])
  {
    v7 = @" namespaces:[";
  }

  else
  {
    v7 = &stru_1F01CD8F0;
  }

  v8 = [(NSSet *)self->_endowmentNamespaces count];
  if (v8)
  {
    v2 = [(NSSet *)self->_endowmentNamespaces allObjects];
    v9 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v9 = &stru_1F01CD8F0;
  }

  v10 = [(NSSet *)self->_endowmentNamespaces count];
  v11 = @"]";
  if (!v10)
  {
    v11 = &stru_1F01CD8F0;
  }

  v12 = [v4 initWithFormat:@"<%@| values:%llx%@%@%@>", v5, values, v7, v9, v11];
  if (v8)
  {
  }

  return v12;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| values:%llx>", v4, self->_values];

  return v5;
}

- (void)setEndowmentNamespaces:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E695DFD8] setWithArray:?];
  }

  else
  {
    v4 = 0;
  }

  endowmentNamespaces = self->_endowmentNamespaces;
  self->_endowmentNamespaces = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)filterState:(id)a3
{
  v4 = a3;
  v5 = v4;
  values = self->_values;
  if (values)
  {
    if ((values & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [v4 setTaskState:0];
    [v5 setDebugState:0];
    if ((values & 4) != 0)
    {
LABEL_3:
      if ((values & 0x40) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  [v5 setTerminationResistance:0];
  if ((values & 0x40) != 0)
  {
LABEL_4:
    if ((values & 0x8000) != 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (-[NSSet count](self->_endowmentNamespaces, "count") && ([v5 endowmentNamespaces], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      v8 = [(NSSet *)self->_endowmentNamespaces mutableCopy];
      v9 = [v5 endowmentNamespaces];
      [v8 intersectSet:v9];

      if ([v8 count])
      {
        v10 = v8;
      }

      else
      {
        v10 = 0;
      }

      [v5 setEndowmentNamespaces:v10];

      if ((values & 2) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      [v5 setEndowmentNamespaces:0];
      if ((values & 2) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_6:
    if ((values & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_12:
  [v5 setCpuRole:0];
  if ((values & 0x8000) == 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((values & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_21:
  [v5 setTags:0];
  if ((values & 8) != 0)
  {
LABEL_7:
    if ((values & 0x10) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v5 setLegacyAssertions:0];
  if ((values & 0x10) != 0)
  {
LABEL_8:
    if ((values & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v5 setPrimitiveAssertions:0];
  if ((values & 0x20) == 0)
  {
LABEL_28:
    [v5 setEndowmentInfos:0];
    goto LABEL_29;
  }

LABEL_24:
  if (![(NSSet *)self->_endowmentNamespaces count])
  {
    goto LABEL_28;
  }

  v11 = [v5 endowmentInfos];

  if (!v11)
  {
    goto LABEL_28;
  }

  v12 = [(NSSet *)self->_endowmentNamespaces mutableCopy];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2;
  v26 = __Block_byref_object_dispose__2;
  v27 = [MEMORY[0x1E695DFA8] set];
  v13 = [v5 endowmentInfos];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __41__RBSProcessStateDescriptor_filterState___block_invoke;
  v19 = &unk_1E7276990;
  v14 = v12;
  v20 = v14;
  v21 = &v22;
  [v13 enumerateObjectsUsingBlock:&v16];

  if ([v23[5] count])
  {
    v15 = v23[5];
  }

  else
  {
    v15 = 0;
  }

  [v5 setEndowmentInfos:v15];

  _Block_object_dispose(&v22, 8);
LABEL_29:
}

void __41__RBSProcessStateDescriptor_filterState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695DFD8];
  v7 = v3;
  v5 = [v3 endowmentNamespace];
  v6 = [v4 setWithObject:v5];

  if ([*(a1 + 32) intersectsSet:v6])
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v7];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
    goto LABEL_14;
  }

  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    v8 = v7;
    if (self->_values != v7->_values)
    {
      goto LABEL_11;
    }

    endowmentNamespaces = self->_endowmentNamespaces;
    v10 = v7->_endowmentNamespaces;
    if (endowmentNamespaces == v10)
    {
      v6 = 1;
      goto LABEL_13;
    }

    v6 = 0;
    if (!endowmentNamespaces || !v10)
    {
      goto LABEL_13;
    }

    Count = CFSetGetCount(endowmentNamespaces);
    if (Count == CFSetGetCount(v10))
    {
      v6 = [(NSSet *)endowmentNamespaces isEqualToSet:v10];
    }

    else
    {
LABEL_11:
      v6 = 0;
    }

LABEL_13:

    goto LABEL_14;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[RBSProcessStateDescriptor allocWithZone:?]];
  v4->_values = self->_values;
  v5 = [(NSSet *)self->_endowmentNamespaces copy];
  endowmentNamespaces = v4->_endowmentNamespaces;
  v4->_endowmentNamespaces = v5;

  return v4;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  values = self->_values;
  v5 = a3;
  [v5 encodeUInt64:values forKey:@"_values"];
  v6 = [(RBSProcessStateDescriptor *)self endowmentNamespaces];
  [v5 encodeObject:v6 forKey:@"_endowmentNamespaces"];
}

- (RBSProcessStateDescriptor)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(RBSProcessStateDescriptor *)self init];
  if (v5)
  {
    v5->_values = [v4 decodeUInt64ForKey:@"_values"];
    v6 = objc_opt_class();
    v7 = [v4 decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"_endowmentNamespaces"];
    endowmentNamespaces = v5->_endowmentNamespaces;
    v5->_endowmentNamespaces = v7;
  }

  return v5;
}

@end