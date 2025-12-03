@interface IPAGeometryOperatorSequence
+ (id)sequenceWithIdentifier:(id)identifier;
- (BOOL)appendOperator:(id)operator;
- (BOOL)removeOperatorWithIdentifier:(id)identifier;
- (BOOL)replaceOperatorWithIdentifier:(id)identifier withOperator:(id)operator;
- (IPAGeometryOperatorSequence)initWithIdentifier:(id)identifier;
- (id)description;
- (id)subsequenceFrom:(id)from to:(id)to;
- (id)transformForGeometry:(id)geometry;
- (unint64_t)count;
@end

@implementation IPAGeometryOperatorSequence

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@.%p elements:%@>", v5, self, self->_operators];

  return v6;
}

- (id)subsequenceFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v8 = toCopy;
  if (!fromCopy || !toCopy)
  {
    result = _PFAssertFailHandler();
LABEL_24:
    __break(1u);
    return result;
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__1737;
  v45 = __Block_byref_object_dispose__1738;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__1737;
  v39 = __Block_byref_object_dispose__1738;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1737;
  isolationQueue = self->_isolationQueue;
  v33 = __Block_byref_object_dispose__1738;
  v34 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__IPAGeometryOperatorSequence_subsequenceFrom_to___block_invoke;
  block[3] = &unk_279A26490;
  v26 = &v41;
  v27 = &v35;
  block[4] = self;
  v10 = fromCopy;
  v24 = v10;
  v28 = &v29;
  v11 = v8;
  v25 = v11;
  dispatch_sync(isolationQueue, block);
  if (![v42[5] count])
  {
LABEL_23:
    result = _PFAssertFailHandler();
    goto LABEL_24;
  }

  v12 = kIPAImageGeometryInputSpace;
  if (kIPAImageGeometryInputSpace == v10)
  {
    v13 = &unk_287048F88;
  }

  else
  {
    if (kIPAImageGeometryOutputSpace != v10)
    {
      goto LABEL_9;
    }

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v42[5], "count") - 1}];
  }

  v14 = v36[5];
  v36[5] = v13;

  v12 = kIPAImageGeometryInputSpace;
LABEL_9:
  if (v12 == v11)
  {
    v15 = &unk_287048F88;
    goto LABEL_13;
  }

  if (kIPAImageGeometryOutputSpace == v11)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v42[5], "count") - 1}];
LABEL_13:
    v16 = v30[5];
    v30[5] = v15;
  }

  v17 = v36[5];
  if (!v17)
  {
    goto LABEL_23;
  }

  if (!v30[5])
  {
    goto LABEL_23;
  }

  unsignedIntegerValue = [v17 unsignedIntegerValue];
  unsignedIntegerValue2 = [v30[5] unsignedIntegerValue];
  if (unsignedIntegerValue > unsignedIntegerValue2)
  {
    goto LABEL_23;
  }

  v20 = +[IPAGeometryOperatorSequence sequence];
  do
  {
    v21 = [v42[5] objectAtIndexedSubscript:unsignedIntegerValue];
    [v20 appendOperator:v21];

    ++unsignedIntegerValue;
  }

  while (unsignedIntegerValue <= unsignedIntegerValue2);

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);

  return v20;
}

uint64_t __50__IPAGeometryOperatorSequence_subsequenceFrom_to___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 40) copy];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v6 = *(a1[8] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *(*(a1[9] + 8) + 40) = [*(a1[4] + 32) objectForKeyedSubscript:a1[6]];

  return MEMORY[0x2821F96F8]();
}

- (id)transformForGeometry:(id)geometry
{
  v31 = *MEMORY[0x277D85DE8];
  geometryCopy = geometry;
  if (!geometryCopy)
  {
LABEL_15:
    _PFAssertFailHandler();
  }

  intrinsicGeometry = geometryCopy;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1737;
  v28 = __Block_byref_object_dispose__1738;
  v29 = 0;
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__IPAGeometryOperatorSequence_transformForGeometry___block_invoke;
  block[3] = &unk_279A26440;
  block[4] = self;
  block[5] = &v24;
  dispatch_sync(isolationQueue, block);
  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v25[5];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v30 count:16];
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = *v20;
  do
  {
    v11 = 0;
    v12 = intrinsicGeometry;
    do
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v13 = [*(*(&v19 + 1) + 8 * v11) transformForGeometry:v12];
      v14 = v13;
      if (!v13 || ([v13 intrinsicGeometry], v15 = objc_claimAutoreleasedReturnValue(), v16 = v15 == 0, v15, v16))
      {
        _PFAssertFailHandler();
        __break(1u);
        goto LABEL_15;
      }

      [array addObject:v14];
      intrinsicGeometry = [v14 intrinsicGeometry];

      ++v11;
      v12 = intrinsicGeometry;
    }

    while (v9 != v11);
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v30 count:16];
  }

  while (v9);
LABEL_11:

  v17 = [IPAImageTransform compositeTransforms:array];

  _Block_object_dispose(&v24, 8);

  return v17;
}

uint64_t __52__IPAGeometryOperatorSequence_transformForGeometry___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 40) copy];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)removeOperatorWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    isolationQueue = self->_isolationQueue;
    v15 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__IPAGeometryOperatorSequence_removeOperatorWithIdentifier___block_invoke;
    block[3] = &unk_279A26640;
    block[4] = self;
    v10 = identifierCopy;
    v11 = &v12;
    v6 = identifierCopy;
    dispatch_sync(isolationQueue, block);
    LOBYTE(isolationQueue) = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
    return isolationQueue;
  }

  else
  {
    v8 = _PFAssertFailHandler();
    __60__IPAGeometryOperatorSequence_removeOperatorWithIdentifier___block_invoke(v8);
  }

  return result;
}

void __60__IPAGeometryOperatorSequence_removeOperatorWithIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  if (v2)
  {
    v8 = v2;
    v3 = [v2 unsignedIntegerValue];
    [*(a1[4] + 40) removeObjectAtIndex:v3];
    [*(a1[4] + 32) removeObjectForKey:a1[5]];
    [*(a1[4] + 24) removeObjectForKey:a1[5]];
    while (v3 < [*(a1[4] + 40) count])
    {
      v4 = [*(a1[4] + 40) objectAtIndexedSubscript:v3];
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
      v6 = *(a1[4] + 32);
      v7 = [v4 identifier];
      [v6 setObject:v5 forKeyedSubscript:v7];

      ++v3;
    }

    *(*(a1[6] + 8) + 24) = 1;
    v2 = v8;
  }
}

- (BOOL)replaceOperatorWithIdentifier:(id)identifier withOperator:(id)operator
{
  identifierCopy = identifier;
  operatorCopy = operator;
  if (identifierCopy && operatorCopy)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    isolationQueue = self->_isolationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__IPAGeometryOperatorSequence_replaceOperatorWithIdentifier_withOperator___block_invoke;
    block[3] = &unk_279A26468;
    block[4] = self;
    v14 = identifierCopy;
    v15 = operatorCopy;
    v16 = &v17;
    v9 = operatorCopy;
    v10 = identifierCopy;
    dispatch_sync(isolationQueue, block);
    v11 = *(v18 + 24);

    _Block_object_dispose(&v17, 8);
    return v11;
  }

  else
  {
    result = _PFAssertFailHandler();
    __break(1u);
  }

  return result;
}

void __74__IPAGeometryOperatorSequence_replaceOperatorWithIdentifier_withOperator___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  if (v2)
  {
    v3 = v2;
    [*(a1[4] + 40) replaceObjectAtIndex:objc_msgSend(v2 withObject:{"unsignedIntegerValue"), a1[6]}];
    *(*(a1[7] + 8) + 24) = 1;
    v2 = v3;
  }
}

- (BOOL)appendOperator:(id)operator
{
  operatorCopy = operator;
  if (operatorCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    isolationQueue = self->_isolationQueue;
    v15 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__IPAGeometryOperatorSequence_appendOperator___block_invoke;
    block[3] = &unk_279A26640;
    block[4] = self;
    v10 = operatorCopy;
    v11 = &v12;
    v6 = operatorCopy;
    dispatch_sync(isolationQueue, block);
    LOBYTE(isolationQueue) = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
    return isolationQueue;
  }

  else
  {
    v8 = _PFAssertFailHandler();
    __46__IPAGeometryOperatorSequence_appendOperator___block_invoke(v8);
  }

  return result;
}

void __46__IPAGeometryOperatorSequence_appendOperator___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) identifier];
  v12 = [v2 objectForKeyedSubscript:v3];

  v4 = v12;
  if (!v12)
  {
    v5 = [*(*(a1 + 32) + 40) count];
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 24);
    v8 = [v6 identifier];
    [v7 setObject:v6 forKeyedSubscript:v8];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    v10 = *(*(a1 + 32) + 32);
    v11 = [*(a1 + 40) identifier];
    [v10 setObject:v9 forKeyedSubscript:v11];

    [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v4 = 0;
  }
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__IPAGeometryOperatorSequence_count__block_invoke;
  v5[3] = &unk_279A26440;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __36__IPAGeometryOperatorSequence_count__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (IPAGeometryOperatorSequence)initWithIdentifier:(id)identifier
{
  v17.receiver = self;
  v17.super_class = IPAGeometryOperatorSequence;
  v3 = [(IPAGeometryOperator *)&v17 initWithIdentifier:identifier];
  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 stringWithFormat:@"%@.%p._isolationQueue", v6, v3];

    v8 = dispatch_queue_create([v7 UTF8String], 0);
    isolationQueue = v3->_isolationQueue;
    v3->_isolationQueue = v8;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    map_identifierToOperator = v3->map_identifierToOperator;
    v3->map_identifierToOperator = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    map_identifierToIndex = v3->map_identifierToIndex;
    v3->map_identifierToIndex = dictionary2;

    array = [MEMORY[0x277CBEB18] array];
    operators = v3->_operators;
    v3->_operators = array;
  }

  return v3;
}

+ (id)sequenceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[IPAGeometryOperatorSequence alloc] initWithIdentifier:identifierCopy];

  return v4;
}

@end