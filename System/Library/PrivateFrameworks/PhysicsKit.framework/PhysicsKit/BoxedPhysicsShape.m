@interface BoxedPhysicsShape
+ (id)boxPhysicsShape:;
+ (id)boxPhysicsShape:(PKPhysicsShape *)a3;
+ (uint64_t)boxPhysicsShape:;
+ (void)boxPhysicsShape:;
@end

@implementation BoxedPhysicsShape

+ (id)boxPhysicsShape:(PKPhysicsShape *)a3
{
  v40[4] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(BoxedPhysicsShape);
  var0 = a3->var0.var0;
  v6 = *(a3->var0.var0 + 2);
  v4->shapeType = v6;
  LODWORD(v7) = 1;
  if (v6 <= 1)
  {
    if (v6 == 1)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    if (v6)
    {
      LODWORD(v7) = v8;
    }

    else
    {
      LODWORD(v7) = 2;
    }
  }

  else if (v6 == 2 || v6 == 3)
  {
    v7 = (*(var0 + 3) - *(var0 + 2)) >> 3;
  }

  else if (v6 == 4)
  {
    LODWORD(v7) = QuadTree::leafCount(*(var0 + 2));
  }

  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
  objc_storeStrong(&v4->points, v9);
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_32;
      }

      v18 = *(var0 + 4);
      v19 = PKGet_PTM_RATIO();
      v20 = *(var0 + 5);
      v43.y = (v20 * PKGet_PTM_RATIO());
      v43.x = (v18 * v19);
      v21 = valueWithCGPoint(v43);
      [v9 addObject:v21];

      v22 = *(var0 + 6);
      v23 = PKGet_PTM_RATIO();
      v24 = *(var0 + 7);
      v44.y = (v24 * PKGet_PTM_RATIO());
      v44.x = (v22 * v23);
      v25 = valueWithCGPoint(v44);
      [v9 addObject:v25];
    }

    else
    {
      v34 = *(var0 + 4);
      v35 = PKGet_PTM_RATIO();
      v36 = *(var0 + 5);
      v46.y = (v36 * PKGet_PTM_RATIO());
      v46.x = (v34 * v35);
      v37 = valueWithCGPoint(v46);
      [v9 addObject:v37];

      v38 = *(var0 + 3);
      v47.x = (v38 * PKGet_PTM_RATIO());
      v47.y = 0.0;
      v25 = valueWithCGPoint(v47);
      [v9 addObject:v25];
    }
  }

  else
  {
    switch(v6)
    {
      case 4:
        v26 = *(var0 + 2);
        v40[0] = &unk_28707A620;
        v40[1] = v9;
        v40[3] = v40;
        QuadTree::visitLeaves(v26, v40);
        std::__function::__value_func<void ()(float,float,int)>::~__value_func[abi:ne200100](v40);
        break;
      case 3:
        v27 = (*(var0 + 3) - *(var0 + 2)) >> 3;
        if (v27 >= 1)
        {
          v28 = 0;
          do
          {
            Vertex = b2ChainShape::GetVertex(var0, v28);
            v30 = *Vertex;
            v31 = PKGet_PTM_RATIO();
            v32 = Vertex[1];
            v45.y = (v32 * PKGet_PTM_RATIO());
            v45.x = (v30 * v31);
            v33 = valueWithCGPoint(v45);
            [v9 addObject:v33];

            ++v28;
          }

          while (v27 != v28);
        }

        break;
      case 2:
        v10 = *(var0 + 2);
        v11 = *(var0 + 3) - v10;
        if ((v11 >> 3) >= 1)
        {
          v12 = 0;
          v13 = 0;
          do
          {
            if (v13 >= v11 >> 3)
            {
              __assert_rtn("GetVertex", "b2PolygonShape.h", 97, "0 <= index && index < m_vertices.size()");
            }

            v14 = *(v10 + v12);
            v15 = PKGet_PTM_RATIO();
            v16 = *(v10 + v12 + 4);
            v42.y = (v16 * PKGet_PTM_RATIO());
            v42.x = (v14 * v15);
            v17 = valueWithCGPoint(v42);
            [v9 addObject:v17];

            ++v13;
            v10 = *(var0 + 2);
            v11 = *(var0 + 3) - v10;
            v12 += 8;
          }

          while (v13 < (v11 >> 3));
        }

        break;
    }
  }

LABEL_32:

  return v4;
}

+ (void)boxPhysicsShape:
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  v6 = (v3 * PKGet_PTM_RATIO());
  v9.y = (v4 * PKGet_PTM_RATIO());
  v9.x = v6;
  v7 = valueWithCGPoint(v9);
  [v5 addObject:?];
}

+ (id)boxPhysicsShape:
{
  *a2 = &unk_28707A620;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

+ (uint64_t)boxPhysicsShape:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

@end