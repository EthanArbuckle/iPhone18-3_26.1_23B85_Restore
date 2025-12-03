@interface _SCRCThreadTask
+ (id)newThreadTaskWithTarget:(id)target selector:(SEL)selector cancelMask:(unsigned int)mask count:(unsigned int)count firstObject:(id)object moreObjects:(char *)objects;
- (_SCRCThreadTask)initWithTarget:(id)target selector:(SEL)selector cancelMask:(unsigned int)mask count:(unsigned int)count firstObject:(id)object moreObjects:(char *)objects;
- (void)dealloc;
- (void)fire;
- (void)setWaitLock:(id)lock;
@end

@implementation _SCRCThreadTask

+ (id)newThreadTaskWithTarget:(id)target selector:(SEL)selector cancelMask:(unsigned int)mask count:(unsigned int)count firstObject:(id)object moreObjects:(char *)objects
{
  v9 = *&count;
  v10 = *&mask;
  objectCopy = object;
  targetCopy = target;
  v15 = [[_SCRCThreadTask alloc] initWithTarget:targetCopy selector:selector cancelMask:v10 count:v9 firstObject:objectCopy moreObjects:objects];

  return v15;
}

- (_SCRCThreadTask)initWithTarget:(id)target selector:(SEL)selector cancelMask:(unsigned int)mask count:(unsigned int)count firstObject:(id)object moreObjects:(char *)objects
{
  targetCopy = target;
  objectCopy = object;
  v32.receiver = self;
  v32.super_class = _SCRCThreadTask;
  objectsCopy = objects;
  v17 = [(_SCRCThreadTask *)&v32 init];
  v18 = v17;
  if (count < 9)
  {
    if (v17)
    {
      objc_storeStrong(&v17->_target, target);
      v19 = selector ? selector : 0;
      v18->_selector = v19;
      v18->_mask = mask;
      v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
      objectArray = v18->_objectArray;
      v18->_objectArray = v20;

      if (count)
      {
        v22 = v18->_objectArray;
        if (objectCopy)
        {
          [(NSMutableArray *)v18->_objectArray addObject:objectCopy];
        }

        else
        {
          null = [MEMORY[0x277CBEB68] null];
          [(NSMutableArray *)v22 addObject:null];
        }

        v24 = count - 1;
        if (count != 1)
        {
          do
          {
            v25 = objectsCopy;
            objectsCopy += 8;
            v26 = *v25;
            v27 = v18->_objectArray;
            if (*v25)
            {
              [(NSMutableArray *)v27 addObject:v26];
            }

            else
            {
              v28 = MEMORY[0x277CBEB68];
              v29 = 0;
              null2 = [v28 null];
              [(NSMutableArray *)v27 addObject:null2];
            }

            --v24;
          }

          while (v24);
        }
      }
    }
  }

  else
  {

    v18 = 0;
  }

  return v18;
}

- (void)dealloc
{
  waitLock = self->_waitLock;
  if (waitLock)
  {
    [(NSConditionLock *)waitLock unlockWithCondition:1];
  }

  v4.receiver = self;
  v4.super_class = _SCRCThreadTask;
  [(_SCRCThreadTask *)&v4 dealloc];
}

- (void)setWaitLock:(id)lock
{
  lockCopy = lock;
  waitLock = self->_waitLock;
  p_waitLock = &self->_waitLock;
  v6 = waitLock;
  if (waitLock != lockCopy)
  {
    if (v6)
    {
      [(NSConditionLock *)v6 unlockWithCondition:1];
    }

    objc_storeStrong(p_waitLock, lock);
  }

  MEMORY[0x2821F96F8]();
}

- (void)fire
{
  if (!self->_target || !self->_selector)
  {
    return;
  }

  v133 = objc_autoreleasePoolPush();
  v3 = [(NSMutableArray *)self->_objectArray count];
  if (v3 <= 3)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        target = self->_target;
        if (self->_selector)
        {
          selector = self->_selector;
        }

        else
        {
          selector = 0;
        }

        v11 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
        null = [MEMORY[0x277CBEB68] null];
        if (v11 == null)
        {
          v17 = 0;
        }

        else
        {
          v17 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
        }

        v24 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
        null2 = [MEMORY[0x277CBEB68] null];
        if (v24 == null2)
        {
          v26 = 0;
        }

        else
        {
          v26 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
        }

        selector = [target selector];
        if (v24 != null2)
        {
        }

        if (v11 != null)
        {
        }
      }

      else
      {
        v131 = self->_target;
        if (self->_selector)
        {
          v128 = self->_selector;
        }

        else
        {
          v128 = 0;
        }

        v11 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
        null = [MEMORY[0x277CBEB68] null];
        if (v11 == null)
        {
          v15 = 0;
        }

        else
        {
          v15 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
        }

        v20 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
        null3 = [MEMORY[0x277CBEB68] null];
        if (v20 == null3)
        {
          v22 = 0;
        }

        else
        {
          v22 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
        }

        v29 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
        null4 = [MEMORY[0x277CBEB68] null];
        if (v29 == null4)
        {
          v31 = 0;
        }

        else
        {
          v31 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
        }

        v128 = [v131 v128];
        if (v29 != null4)
        {
        }

        if (v20 != null3)
        {
        }

        if (v11 != null)
        {
        }
      }
    }

    else
    {
      if (!v3)
      {
        v6 = self->_target;
        v7 = self->_selector;
        if (v7)
        {
          v8 = [v6 v7];
        }

        else
        {
          v8 = [v6 0];
        }

        v16 = v8;
        goto LABEL_229;
      }

      if (v3 != 1)
      {
        goto LABEL_229;
      }

      v4 = self->_target;
      if (self->_selector)
      {
        v5 = self->_selector;
      }

      else
      {
        v5 = 0;
      }

      v11 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
      null5 = [MEMORY[0x277CBEB68] null];
      if (v11 == null5)
      {
        v13 = 0;
      }

      else
      {
        v13 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
      }

      v19 = [v4 v5];
      if (v11 != null5)
      {
      }
    }

    goto LABEL_229;
  }

  if (v3 <= 5)
  {
    if (v3 == 4)
    {
      v118 = self->_target;
      if (self->_selector)
      {
        v113 = self->_selector;
      }

      else
      {
        v113 = 0;
      }

      v132 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
      null6 = [MEMORY[0x277CBEB68] null];
      if (v132 == null6)
      {
        v130 = 0;
      }

      else
      {
        v130 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
      }

      v27 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
      null7 = [MEMORY[0x277CBEB68] null];
      if (v27 == null7)
      {
        v125 = 0;
      }

      else
      {
        v125 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
      }

      v36 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
      null8 = [MEMORY[0x277CBEB68] null];
      if (v36 == null8)
      {
        v38 = 0;
      }

      else
      {
        v38 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
      }

      v45 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:3];
      null9 = [MEMORY[0x277CBEB68] null];
      if (v45 == null9)
      {
        v47 = 0;
      }

      else
      {
        v47 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:3];
      }

      v113 = [v118 v113];
      if (v45 != null9)
      {
      }

      if (v36 != null8)
      {
      }

      if (v27 != null7)
      {
      }

      if (v132 != null6)
      {
      }

      goto LABEL_228;
    }

    v105 = self->_target;
    if (self->_selector)
    {
      v101 = self->_selector;
    }

    else
    {
      v101 = 0;
    }

    v132 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
    null10 = [MEMORY[0x277CBEB68] null];
    if (v132 == null10)
    {
      v119 = 0;
    }

    else
    {
      v119 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
    }

    v123 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
    null11 = [MEMORY[0x277CBEB68] null];
    if (v123 == null11)
    {
      v114 = 0;
    }

    else
    {
      v114 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
    }

    v32 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
    null12 = [MEMORY[0x277CBEB68] null];
    if (v32 == null12)
    {
      v110 = 0;
    }

    else
    {
      v110 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
    }

    v40 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:3];
    null13 = [MEMORY[0x277CBEB68] null];
    if (v40 == null13)
    {
      v42 = 0;
    }

    else
    {
      v42 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:3];
    }

    v49 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:4];
    null14 = [MEMORY[0x277CBEB68] null];
    if (v49 == null14)
    {
      v51 = 0;
    }

    else
    {
      v51 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:4];
    }

    v101 = [v105 v101];
    if (v49 != null14)
    {
    }

    if (v40 != null13)
    {
    }

    if (v32 != null12)
    {
    }

    if (v123 != null11)
    {
    }

    if (v132 == null10)
    {
LABEL_227:

LABEL_228:
      goto LABEL_229;
    }

    v60 = v119;
LABEL_226:

    goto LABEL_227;
  }

  switch(v3)
  {
    case 6:
      v95 = self->_target;
      if (self->_selector)
      {
        v92 = self->_selector;
      }

      else
      {
        v92 = 0;
      }

      v132 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
      null10 = [MEMORY[0x277CBEB68] null];
      if (v132 == null10)
      {
        v109 = 0;
      }

      else
      {
        v109 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
      }

      v124 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
      null15 = [MEMORY[0x277CBEB68] null];
      if (v124 == null15)
      {
        v106 = 0;
      }

      else
      {
        v106 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
      }

      v115 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
      null16 = [MEMORY[0x277CBEB68] null];
      if (v115 == null16)
      {
        v103 = 0;
      }

      else
      {
        v103 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
      }

      v43 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:3];
      null17 = [MEMORY[0x277CBEB68] null];
      if (v43 == null17)
      {
        v99 = 0;
      }

      else
      {
        v99 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:3];
      }

      v52 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:4];
      null18 = [MEMORY[0x277CBEB68] null];
      if (v52 == null18)
      {
        v54 = 0;
      }

      else
      {
        v54 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:4];
      }

      v61 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:5];
      null19 = [MEMORY[0x277CBEB68] null];
      if (v61 == null19)
      {
        v63 = 0;
      }

      else
      {
        v63 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:5];
      }

      v69 = [v95 v92];
      if (v61 != null19)
      {
      }

      if (v52 != null18)
      {
      }

      if (v43 != null17)
      {
      }

      if (v115 != null16)
      {
      }

      if (v124 != null15)
      {
      }

      if (v132 == null10)
      {
        goto LABEL_227;
      }

      v60 = v109;
      goto LABEL_226;
    case 7:
      v86 = self->_target;
      if (self->_selector)
      {
        v88 = self->_selector;
      }

      else
      {
        v88 = 0;
      }

      v132 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
      null10 = [MEMORY[0x277CBEB68] null];
      if (v132 == null10)
      {
        v102 = 0;
      }

      else
      {
        v102 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
      }

      v127 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
      null20 = [MEMORY[0x277CBEB68] null];
      if (v127 == null20)
      {
        v98 = 0;
      }

      else
      {
        v98 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
      }

      v117 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
      null21 = [MEMORY[0x277CBEB68] null];
      if (v117 == null21)
      {
        v97 = 0;
      }

      else
      {
        v97 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
      }

      v108 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:3];
      null22 = [MEMORY[0x277CBEB68] null];
      if (v108 == null22)
      {
        v94 = 0;
      }

      else
      {
        v94 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:3];
      }

      v57 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:4];
      null23 = [MEMORY[0x277CBEB68] null];
      if (v57 == null23)
      {
        v91 = 0;
      }

      else
      {
        v91 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:4];
      }

      v66 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:5];
      null24 = [MEMORY[0x277CBEB68] null];
      if (v66 == null24)
      {
        v68 = 0;
      }

      else
      {
        v68 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:5];
      }

      v73 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:6];
      null25 = [MEMORY[0x277CBEB68] null];
      if (v73 == null25)
      {
        v75 = 0;
      }

      else
      {
        v75 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:6];
      }

      v79 = [v86 v88];
      if (v73 != null25)
      {
      }

      if (v66 != null24)
      {
      }

      if (v57 != null23)
      {
      }

      if (v108 != null22)
      {
      }

      if (v117 != null21)
      {
      }

      if (v127 != null20)
      {
      }

      if (v132 == null10)
      {
        goto LABEL_227;
      }

      v60 = v102;
      goto LABEL_226;
    case 8:
      v84 = self->_target;
      if (self->_selector)
      {
        v83 = self->_selector;
      }

      else
      {
        v83 = 0;
      }

      v132 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
      null10 = [MEMORY[0x277CBEB68] null];
      if (v132 == null10)
      {
        v96 = 0;
      }

      else
      {
        v96 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
      }

      v126 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
      null26 = [MEMORY[0x277CBEB68] null];
      if (v126 == null26)
      {
        v93 = 0;
      }

      else
      {
        v93 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
      }

      v116 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
      null27 = [MEMORY[0x277CBEB68] null];
      if (v116 == null27)
      {
        v90 = 0;
      }

      else
      {
        v90 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
      }

      v107 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:3];
      null28 = [MEMORY[0x277CBEB68] null];
      if (v107 == null28)
      {
        v89 = 0;
      }

      else
      {
        v89 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:3];
      }

      v100 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:4];
      null29 = [MEMORY[0x277CBEB68] null];
      if (v100 == null29)
      {
        v87 = 0;
      }

      else
      {
        v87 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:4];
      }

      v64 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:5];
      null30 = [MEMORY[0x277CBEB68] null];
      if (v64 == null30)
      {
        v85 = 0;
      }

      else
      {
        v85 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:5];
      }

      v70 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:6];
      null31 = [MEMORY[0x277CBEB68] null];
      if (v70 == null31)
      {
        v72 = 0;
      }

      else
      {
        v72 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:6];
      }

      v76 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:7];
      null32 = [MEMORY[0x277CBEB68] null];
      if (v76 == null32)
      {
        v78 = 0;
      }

      else
      {
        v78 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:7];
      }

      v80 = [v84 v83];
      if (v76 != null32)
      {
      }

      if (v70 != null31)
      {
      }

      if (v64 != null30)
      {
      }

      if (v100 != null29)
      {
      }

      if (v107 != null28)
      {
      }

      if (v116 != null27)
      {
      }

      if (v126 != null26)
      {
      }

      if (v132 == null10)
      {
        goto LABEL_227;
      }

      v60 = v96;
      goto LABEL_226;
  }

LABEL_229:
  waitLock = self->_waitLock;
  if (waitLock)
  {
    [(NSConditionLock *)waitLock lock];
    [(NSConditionLock *)self->_waitLock unlockWithCondition:1];
    v82 = self->_waitLock;
    self->_waitLock = 0;
  }

  objc_autoreleasePoolPop(v133);
}

@end