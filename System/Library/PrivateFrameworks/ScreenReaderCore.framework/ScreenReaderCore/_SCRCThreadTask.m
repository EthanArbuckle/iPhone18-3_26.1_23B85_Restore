@interface _SCRCThreadTask
+ (id)newThreadTaskWithTarget:(id)a3 selector:(SEL)a4 cancelMask:(unsigned int)a5 count:(unsigned int)a6 firstObject:(id)a7 moreObjects:(char *)a8;
- (_SCRCThreadTask)initWithTarget:(id)a3 selector:(SEL)a4 cancelMask:(unsigned int)a5 count:(unsigned int)a6 firstObject:(id)a7 moreObjects:(char *)a8;
- (void)dealloc;
- (void)fire;
- (void)setWaitLock:(id)a3;
@end

@implementation _SCRCThreadTask

+ (id)newThreadTaskWithTarget:(id)a3 selector:(SEL)a4 cancelMask:(unsigned int)a5 count:(unsigned int)a6 firstObject:(id)a7 moreObjects:(char *)a8
{
  v9 = *&a6;
  v10 = *&a5;
  v13 = a7;
  v14 = a3;
  v15 = [[_SCRCThreadTask alloc] initWithTarget:v14 selector:a4 cancelMask:v10 count:v9 firstObject:v13 moreObjects:a8];

  return v15;
}

- (_SCRCThreadTask)initWithTarget:(id)a3 selector:(SEL)a4 cancelMask:(unsigned int)a5 count:(unsigned int)a6 firstObject:(id)a7 moreObjects:(char *)a8
{
  v15 = a3;
  v16 = a7;
  v32.receiver = self;
  v32.super_class = _SCRCThreadTask;
  v33 = a8;
  v17 = [(_SCRCThreadTask *)&v32 init];
  v18 = v17;
  if (a6 < 9)
  {
    if (v17)
    {
      objc_storeStrong(&v17->_target, a3);
      v19 = a4 ? a4 : 0;
      v18->_selector = v19;
      v18->_mask = a5;
      v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:a6];
      objectArray = v18->_objectArray;
      v18->_objectArray = v20;

      if (a6)
      {
        v22 = v18->_objectArray;
        if (v16)
        {
          [(NSMutableArray *)v18->_objectArray addObject:v16];
        }

        else
        {
          v23 = [MEMORY[0x277CBEB68] null];
          [(NSMutableArray *)v22 addObject:v23];
        }

        v24 = a6 - 1;
        if (a6 != 1)
        {
          do
          {
            v25 = v33;
            v33 += 8;
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
              v30 = [v28 null];
              [(NSMutableArray *)v27 addObject:v30];
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

- (void)setWaitLock:(id)a3
{
  v5 = a3;
  waitLock = self->_waitLock;
  p_waitLock = &self->_waitLock;
  v6 = waitLock;
  if (waitLock != v5)
  {
    if (v6)
    {
      [(NSConditionLock *)v6 unlockWithCondition:1];
    }

    objc_storeStrong(p_waitLock, a3);
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
        v14 = [MEMORY[0x277CBEB68] null];
        if (v11 == v14)
        {
          v17 = 0;
        }

        else
        {
          v17 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
        }

        v24 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
        v25 = [MEMORY[0x277CBEB68] null];
        if (v24 == v25)
        {
          v26 = 0;
        }

        else
        {
          v26 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
        }

        v34 = [target selector];
        if (v24 != v25)
        {
        }

        if (v11 != v14)
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
        v14 = [MEMORY[0x277CBEB68] null];
        if (v11 == v14)
        {
          v15 = 0;
        }

        else
        {
          v15 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
        }

        v20 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
        v21 = [MEMORY[0x277CBEB68] null];
        if (v20 == v21)
        {
          v22 = 0;
        }

        else
        {
          v22 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
        }

        v29 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
        v30 = [MEMORY[0x277CBEB68] null];
        if (v29 == v30)
        {
          v31 = 0;
        }

        else
        {
          v31 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
        }

        v39 = [v131 v128];
        if (v29 != v30)
        {
        }

        if (v20 != v21)
        {
        }

        if (v11 != v14)
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
      v12 = [MEMORY[0x277CBEB68] null];
      if (v11 == v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
      }

      v19 = [v4 v5];
      if (v11 != v12)
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
      v18 = [MEMORY[0x277CBEB68] null];
      if (v132 == v18)
      {
        v130 = 0;
      }

      else
      {
        v130 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
      }

      v27 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
      v28 = [MEMORY[0x277CBEB68] null];
      if (v27 == v28)
      {
        v125 = 0;
      }

      else
      {
        v125 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
      }

      v36 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
      v37 = [MEMORY[0x277CBEB68] null];
      if (v36 == v37)
      {
        v38 = 0;
      }

      else
      {
        v38 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
      }

      v45 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:3];
      v46 = [MEMORY[0x277CBEB68] null];
      if (v45 == v46)
      {
        v47 = 0;
      }

      else
      {
        v47 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:3];
      }

      v55 = [v118 v113];
      if (v45 != v46)
      {
      }

      if (v36 != v37)
      {
      }

      if (v27 != v28)
      {
      }

      if (v132 != v18)
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
    v129 = [MEMORY[0x277CBEB68] null];
    if (v132 == v129)
    {
      v119 = 0;
    }

    else
    {
      v119 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
    }

    v123 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
    v23 = [MEMORY[0x277CBEB68] null];
    if (v123 == v23)
    {
      v114 = 0;
    }

    else
    {
      v114 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
    }

    v32 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
    v33 = [MEMORY[0x277CBEB68] null];
    if (v32 == v33)
    {
      v110 = 0;
    }

    else
    {
      v110 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
    }

    v40 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:3];
    v41 = [MEMORY[0x277CBEB68] null];
    if (v40 == v41)
    {
      v42 = 0;
    }

    else
    {
      v42 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:3];
    }

    v49 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:4];
    v50 = [MEMORY[0x277CBEB68] null];
    if (v49 == v50)
    {
      v51 = 0;
    }

    else
    {
      v51 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:4];
    }

    v59 = [v105 v101];
    if (v49 != v50)
    {
    }

    if (v40 != v41)
    {
    }

    if (v32 != v33)
    {
    }

    if (v123 != v23)
    {
    }

    if (v132 == v129)
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
      v129 = [MEMORY[0x277CBEB68] null];
      if (v132 == v129)
      {
        v109 = 0;
      }

      else
      {
        v109 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
      }

      v124 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
      v120 = [MEMORY[0x277CBEB68] null];
      if (v124 == v120)
      {
        v106 = 0;
      }

      else
      {
        v106 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
      }

      v115 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
      v35 = [MEMORY[0x277CBEB68] null];
      if (v115 == v35)
      {
        v103 = 0;
      }

      else
      {
        v103 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
      }

      v43 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:3];
      v44 = [MEMORY[0x277CBEB68] null];
      if (v43 == v44)
      {
        v99 = 0;
      }

      else
      {
        v99 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:3];
      }

      v52 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:4];
      v53 = [MEMORY[0x277CBEB68] null];
      if (v52 == v53)
      {
        v54 = 0;
      }

      else
      {
        v54 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:4];
      }

      v61 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:5];
      v62 = [MEMORY[0x277CBEB68] null];
      if (v61 == v62)
      {
        v63 = 0;
      }

      else
      {
        v63 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:5];
      }

      v69 = [v95 v92];
      if (v61 != v62)
      {
      }

      if (v52 != v53)
      {
      }

      if (v43 != v44)
      {
      }

      if (v115 != v35)
      {
      }

      if (v124 != v120)
      {
      }

      if (v132 == v129)
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
      v129 = [MEMORY[0x277CBEB68] null];
      if (v132 == v129)
      {
        v102 = 0;
      }

      else
      {
        v102 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
      }

      v127 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
      v122 = [MEMORY[0x277CBEB68] null];
      if (v127 == v122)
      {
        v98 = 0;
      }

      else
      {
        v98 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
      }

      v117 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
      v112 = [MEMORY[0x277CBEB68] null];
      if (v117 == v112)
      {
        v97 = 0;
      }

      else
      {
        v97 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
      }

      v108 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:3];
      v48 = [MEMORY[0x277CBEB68] null];
      if (v108 == v48)
      {
        v94 = 0;
      }

      else
      {
        v94 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:3];
      }

      v57 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:4];
      v58 = [MEMORY[0x277CBEB68] null];
      if (v57 == v58)
      {
        v91 = 0;
      }

      else
      {
        v91 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:4];
      }

      v66 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:5];
      v67 = [MEMORY[0x277CBEB68] null];
      if (v66 == v67)
      {
        v68 = 0;
      }

      else
      {
        v68 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:5];
      }

      v73 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:6];
      v74 = [MEMORY[0x277CBEB68] null];
      if (v73 == v74)
      {
        v75 = 0;
      }

      else
      {
        v75 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:6];
      }

      v79 = [v86 v88];
      if (v73 != v74)
      {
      }

      if (v66 != v67)
      {
      }

      if (v57 != v58)
      {
      }

      if (v108 != v48)
      {
      }

      if (v117 != v112)
      {
      }

      if (v127 != v122)
      {
      }

      if (v132 == v129)
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
      v129 = [MEMORY[0x277CBEB68] null];
      if (v132 == v129)
      {
        v96 = 0;
      }

      else
      {
        v96 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:0];
      }

      v126 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
      v121 = [MEMORY[0x277CBEB68] null];
      if (v126 == v121)
      {
        v93 = 0;
      }

      else
      {
        v93 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:1];
      }

      v116 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
      v111 = [MEMORY[0x277CBEB68] null];
      if (v116 == v111)
      {
        v90 = 0;
      }

      else
      {
        v90 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:2];
      }

      v107 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:3];
      v104 = [MEMORY[0x277CBEB68] null];
      if (v107 == v104)
      {
        v89 = 0;
      }

      else
      {
        v89 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:3];
      }

      v100 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:4];
      v56 = [MEMORY[0x277CBEB68] null];
      if (v100 == v56)
      {
        v87 = 0;
      }

      else
      {
        v87 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:4];
      }

      v64 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:5];
      v65 = [MEMORY[0x277CBEB68] null];
      if (v64 == v65)
      {
        v85 = 0;
      }

      else
      {
        v85 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:5];
      }

      v70 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:6];
      v71 = [MEMORY[0x277CBEB68] null];
      if (v70 == v71)
      {
        v72 = 0;
      }

      else
      {
        v72 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:6];
      }

      v76 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:7];
      v77 = [MEMORY[0x277CBEB68] null];
      if (v76 == v77)
      {
        v78 = 0;
      }

      else
      {
        v78 = [(NSMutableArray *)self->_objectArray objectAtIndexedSubscript:7];
      }

      v80 = [v84 v83];
      if (v76 != v77)
      {
      }

      if (v70 != v71)
      {
      }

      if (v64 != v65)
      {
      }

      if (v100 != v56)
      {
      }

      if (v107 != v104)
      {
      }

      if (v116 != v111)
      {
      }

      if (v126 != v121)
      {
      }

      if (v132 == v129)
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