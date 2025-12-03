@interface UserPathManager
- (BOOL)buildLookupTree;
- (BOOL)computeTranslations:(id)translations;
- (UserPathManager)initWithPathFile:(id)file;
- (id)lookup:(id)lookup keyboardController:(id)controller;
- (id)translateLayoutForKeys:(id)keys keyboardController:(id)controller;
- (void)dealloc;
- (void)setRandomNumberSeed:(unsigned int)seed;
@end

@implementation UserPathManager

- (id)lookup:(id)lookup keyboardController:(id)controller
{
  v48 = *MEMORY[0x277D85DE8];
  lookupCopy = lookup;
  controllerCopy = controller;
  v6 = [(NSMutableDictionary *)self->_lookupTree objectForKey:lookupCopy];
  if (v6 || (lookupTree = self->_lookupTree, [lookupCopy lowercaseString], v8 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKey:](lookupTree, "objectForKey:", v8), v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    v35 = v6;
    v40 = [v6 objectAtIndex:{std::mersenne_twister_engine<unsigned int, 32ul, 624ul, 397ul, 31ul, 2567483615u, 11ul, 4294967295u, 7ul, 2636928640u, 15ul, 4022730752u, 18ul, 1812433253u>::operator()(self->m_generator) % objc_msgSend(v6, "count")}];
    keyplane = [controllerCopy keyplane];
    name = [keyplane name];

    v37 = name;
    v11 = [(NSMutableDictionary *)self->_transforms objectForKey:name];
    if (!v11)
    {
      [(UserPathManager *)self computeTranslations:controllerCopy];
      v11 = [(NSMutableDictionary *)self->_transforms objectForKey:name];
    }

    layout = [v40 layout];
    v13 = [v11 objectForKey:layout];

    v36 = v13;
    if (v13)
    {
      [v13 getValue:v46];
      v14 = objc_alloc_init(TIContinuousPathWithLayoutName);
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      samples = [v40 samples];
      v16 = [samples countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v16)
      {
        v17 = *v43;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v43 != v17)
            {
              objc_enumerationMutation(samples);
            }

            v19 = *(*(&v42 + 1) + 8 * i);
            [v19 point];
            v21 = v20;
            v22 = *v46;
            v23 = *&v46[2];
            [v19 point];
            v25 = v24;
            v41 = *&v46[1];
            v26 = *&v46[3];
            v27 = [TIContinuousPathSample alloc];
            [v19 timeStamp];
            v29 = v28;
            [v19 force];
            v31 = v30;
            [v19 radius];
            v33 = -[TIContinuousPathSample initWithPoint:timeStamp:force:radius:stage:pathIndex:](v27, "initWithPoint:timeStamp:force:radius:stage:pathIndex:", [v19 stage], objc_msgSend(v19, "pathIndex"), v23 + v21 * v22, v26 + v25 * v41, v29, v31, v32);
            [(TIContinuousPath *)v14 addSample:v33];
          }

          v16 = [samples countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v16);
      }
    }

    else
    {
      v14 = v40;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)buildLookupTree
{
  v2 = 0;
  v53 = *MEMORY[0x277D85DE8];
  for (i = self; ; self = i)
  {
    getNextTestCase = [(TTKTestCaseSource *)self->_source getNextTestCase];

    if (!getNextTestCase)
    {
      break;
    }

    records = [getNextTestCase records];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = records;
    v28 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v28)
    {
      v30 = *v47;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v47 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v46 + 1) + 8 * j);
          primaryIntendedText = [v4 primaryIntendedText];
          v5 = [TIContinuousPathWithLayoutName alloc];
          layoutName = [v4 layoutName];
          v7 = [(TIContinuousPathWithLayoutName *)v5 initWithLayout:layoutName];

          touchDataCollection = [v4 touchDataCollection];
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v35 = touchDataCollection;
          v9 = [v35 countByEnumeratingWithState:&v42 objects:v51 count:16];
          if (v9)
          {
            v36 = *v43;
            v10 = -1.0;
            do
            {
              v37 = v9;
              for (k = 0; k != v37; ++k)
              {
                if (*v43 != v36)
                {
                  objc_enumerationMutation(v35);
                }

                v12 = *(*(&v42 + 1) + 8 * k);
                v38 = 0u;
                v39 = 0u;
                v40 = 0u;
                v41 = 0u;
                samples = [v12 samples];
                v14 = [samples countByEnumeratingWithState:&v38 objects:v50 count:16];
                if (v14)
                {
                  v15 = *v39;
                  do
                  {
                    for (m = 0; m != v14; ++m)
                    {
                      if (*v39 != v15)
                      {
                        objc_enumerationMutation(samples);
                      }

                      v17 = *(*(&v38 + 1) + 8 * m);
                      if (v10 < 0.0)
                      {
                        [*(*(&v38 + 1) + 8 * m) timeStamp];
                        v10 = v18;
                      }

                      v19 = [TIContinuousPathSample alloc];
                      [v17 point];
                      v21 = v20;
                      v23 = v22;
                      [v17 timeStamp];
                      v25 = -[TIContinuousPathSample initWithPoint:timeStamp:force:radius:stage:pathIndex:](v19, "initWithPoint:timeStamp:force:radius:stage:pathIndex:", [v17 stage], objc_msgSend(v17, "pathIndex"), v21, v23, v24 - v10, 0.0, 0.0);
                      [(TIContinuousPath *)v7 addSample:v25];
                    }

                    v14 = [samples countByEnumeratingWithState:&v38 objects:v50 count:16];
                  }

                  while (v14);
                }
              }

              v9 = [v35 countByEnumeratingWithState:&v42 objects:v51 count:16];
            }

            while (v9);
          }

          array = [(NSMutableDictionary *)i->_lookupTree objectForKey:primaryIntendedText];
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
            [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
          }

          [array addObject:v7];
        }

        v28 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v28);
    }

    v2 = getNextTestCase;
  }

  return 1;
}

- (id)translateLayoutForKeys:(id)keys keyboardController:(id)controller
{
  v74 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  controllerCopy = controller;
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x5012000000;
  v66[3] = __Block_byref_object_copy__1432;
  v66[4] = __Block_byref_object_dispose__1433;
  v66[5] = &unk_26D4F599A;
  v6 = *(MEMORY[0x277CBF398] + 16);
  v67 = *MEMORY[0x277CBF398];
  v68 = v6;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3032000000;
  v64[3] = __Block_byref_object_copy__15;
  v64[4] = __Block_byref_object_dispose__16;
  v65 = 0;
  keyplane = [controllerCopy keyplane];
  keys = [keyplane keys];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __61__UserPathManager_translateLayoutForKeys_keyboardController___block_invoke;
  v63[3] = &unk_279DA0EB8;
  v63[4] = v64;
  v63[5] = v66;
  [keys enumerateObjectsUsingBlock:v63];

  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = keysCopy;
  v9 = [obj countByEnumeratingWithState:&v59 objects:v73 count:16];
  if (v9)
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v10 = *v60;
    v11 = 1000000000.0;
    v12 = 1000000000.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v60 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v59 + 1) + 8 * i);
        string = [v14 string];
        layoutUtils = [controllerCopy layoutUtils];
        keyplane2 = [controllerCopy keyplane];
        v18 = [layoutUtils exactKeyForString:string keyplane:keyplane2];

        if (v18)
        {
          [v18 frame];
          [TITesterMathUtils distanceBetween:"distanceBetween:andPoint:" andPoint:?];
          v20 = v19;
          [v18 frame];
          [TITesterMathUtils distanceBetween:"distanceBetween:andPoint:" andPoint:?];
          v22 = v21;
          if (v12 > v20)
          {
            v23 = v18;

            v24 = v14;
            v12 = v20;
            v55 = v23;
            v57 = v24;
          }

          if (v11 > v22)
          {
            v25 = v18;

            v26 = v14;
            v11 = v22;
            v54 = v25;
            v56 = v26;
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v59 objects:v73 count:16];
    }

    while (v9);

    v27 = 0;
    if (v57 && v56)
    {
      [v55 frame];
      v51 = v28;
      [v55 frame];
      v50 = v29;
      [v55 frame];
      [v55 frame];
      [v54 frame];
      v31 = v30;
      [v54 frame];
      v33 = v32;
      [v54 frame];
      [v54 frame];
      [v57 frame];
      x = v77.origin.x;
      y = v77.origin.y;
      width = v77.size.width;
      height = v77.size.height;
      MidX = CGRectGetMidX(v77);
      v78.origin.x = x;
      v78.origin.y = y;
      v78.size.width = width;
      v78.size.height = height;
      [v56 frame];
      v39 = v79.origin.x;
      v40 = v79.origin.y;
      v41 = v79.size.width;
      v42 = v79.size.height;
      v43 = CGRectGetMidX(v79);
      v80.origin.x = v39;
      v80.origin.y = v40;
      v80.size.width = v41;
      v80.size.height = v42;
      CGRectGetMidY(v80);
      v44 = v31 + v33 * 0.5;
      *&v39 = MidX;
      v72[0] = LODWORD(v39);
      v72[1] = 1065353216;
      v45 = v43;
      *&v72[2] = v45;
      v72[3] = 1065353216;
      *&v31 = v51 + v50 * 0.5;
      v46 = v44;
      v71 = __PAIR64__(LODWORD(v46), LODWORD(v31));
      if ([TITesterMathUtils solveSystemOfEquations:v72 withBMatrix:&v71 size:2]|| (v70[0] = MidX, v70[1] = 1.0, v70[2] = v45, v70[3] = 1.0, v69.f32[0] = v51 + v50 * 0.5, v69.f32[1] = v46, [TITesterMathUtils solveSystemOfEquations:v70 withBMatrix:&v69 size:2]))
      {
        v27 = 0;
      }

      else
      {
        v76.val[1] = vcvtq_f64_f32(v69);
        v76.val[0] = vcvtq_f64_f32(v71);
        v49 = v58;
        vst2q_f64(v49, v76);
        v27 = [MEMORY[0x277CCAE60] value:v58 withObjCType:"{?=dddd}"];
      }
    }

    v47 = v54;
  }

  else
  {

    v56 = 0;
    v57 = 0;
    v55 = 0;
    v47 = 0;
    v27 = 0;
  }

  _Block_object_dispose(v64, 8);
  _Block_object_dispose(v66, 8);

  return v27;
}

void __61__UserPathManager_translateLayoutForKeys_keyboardController___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  v18 = v4;
  if (!v7)
  {
    objc_storeStrong(v6, a2);
    v4 = v18;
  }

  [v4 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  IsNull = CGRectIsNull(*(*(*(a1 + 40) + 8) + 48));
  v17 = *(*(a1 + 40) + 8);
  if (IsNull)
  {
    *(v17 + 48) = v9;
    *(v17 + 56) = v11;
    *(v17 + 64) = v13;
    *(v17 + 72) = v15;
  }

  else
  {
    v20.origin.x = v9;
    v20.origin.y = v11;
    v20.size.width = v13;
    v20.size.height = v15;
    *(*(*(a1 + 40) + 8) + 48) = CGRectUnion(*(v17 + 48), v20);
  }
}

- (BOOL)computeTranslations:(id)translations
{
  v23 = *MEMORY[0x277D85DE8];
  translationsCopy = translations;
  layouts = [(TTKTestCaseSource *)self->_source layouts];
  keyplane = [translationsCopy keyplane];
  name = [keyplane name];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = layouts;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v6 objectForKey:v10];
        keys = [v11 keys];
        v13 = [(UserPathManager *)self translateLayoutForKeys:keys keyboardController:translationsCopy];
        if (v13)
        {
          [dictionary setObject:v13 forKey:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)self->_transforms setObject:dictionary forKey:name];
  return 1;
}

- (void)setRandomNumberSeed:(unsigned int)seed
{
  m_generator = self->m_generator;
  *m_generator = seed;
  for (i = 1; i != 624; ++i)
  {
    seed = i + 1812433253 * (seed ^ (seed >> 30));
    m_generator[i] = seed;
  }

  *(m_generator + 312) = 0;
}

- (void)dealloc
{
  m_generator = self->m_generator;
  if (m_generator)
  {
    MEMORY[0x26D6C07C0](m_generator, 0x1000C407BAC9B3ELL);
  }

  v4.receiver = self;
  v4.super_class = UserPathManager;
  [(UserPathManager *)&v4 dealloc];
}

- (UserPathManager)initWithPathFile:(id)file
{
  fileCopy = file;
  v16.receiver = self;
  v16.super_class = UserPathManager;
  v6 = [(UserPathManager *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pathFile, file);
    v8 = [TTKTestCaseReader loadFromPath:fileCopy];
    source = v7->_source;
    v7->_source = v8;

    if (v7->_source)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      transforms = v7->_transforms;
      v7->_transforms = dictionary;

      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      lookupTree = v7->_lookupTree;
      v7->_lookupTree = dictionary2;

      [(UserPathManager *)v7 buildLookupTree];
      operator new();
    }

    fprintf(*MEMORY[0x277D85DF8], "Error: Unable to parse user path JSON file '%s'\n\n", [fileCopy cStringUsingEncoding:4]);
    v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end