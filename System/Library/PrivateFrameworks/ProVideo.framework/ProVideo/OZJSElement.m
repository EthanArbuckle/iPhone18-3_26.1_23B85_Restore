@interface OZJSElement
+ (id)elementWithElement:(void *)a3;
- (OZJSElement)initWithElement:(void *)a3;
- (SCNVector3)getPosition;
- (SCNVector3)getPositionAtTime:(float)a3;
- (float)getEndTime;
- (float)getStartTime;
- (id)getBehaviorWithName:(id)a3;
- (id)name;
- (void)cloneAtTime:(float)a3;
- (void)setStartTime:(float)a3;
@end

@implementation OZJSElement

+ (id)elementWithElement:(void *)a3
{
  v3 = [[OZJSElement alloc] initWithElement:a3];

  return v3;
}

- (OZJSElement)initWithElement:(void *)a3
{
  v5.receiver = self;
  v5.super_class = OZJSElement;
  result = [(OZJSElement *)&v5 init];
  if (result)
  {
    result->_element = a3;
  }

  return result;
}

- (void)setStartTime:(float)a3
{
  memset(&v4, 0, sizeof(v4));
  PC_CMTimeMakeWithSecondsRoundToNearest(30, &v4, a3);
  (*(*self->_element + 1160))();
}

- (float)getStartTime
{
  (*(*self->_element + 1128))(&v4);
  v3 = v4;
  return CMTimeGetSeconds(&v3);
}

- (float)getEndTime
{
  (*(*self->_element + 1128))(&time);
  v7 = time;
  memset(&v4, 0, sizeof(v4));
  (*(*self->_element + 1128))(&time);
  v8 = v6;
  v9 = v7;
  PC_CMTimeSaferAdd(&v9, &v8, &v4);
  time = v4;
  return CMTimeGetSeconds(&time);
}

- (SCNVector3)getPosition
{
  [(OZJSElement *)self getPositionAtTime:0.0];
  result.z = v4;
  result.y = v3;
  result.x = v2;
  return result;
}

- (SCNVector3)getPositionAtTime:(float)a3
{
  memset(&v10, 0, sizeof(v10));
  PC_CMTimeMakeWithSecondsRoundToNearest(30, &v10, a3);
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  OZTransformNode::getTranslation(self->_element, &v7, &v8, &v9, &v10);
  v4 = v7;
  v5 = v8;
  v6 = v9;
  result.z = v6;
  result.y = v5;
  result.x = v4;
  return result;
}

- (id)name
{
  Name = OZObjectManipulator::getName((self->_element + 16));

  return PCString::ns_str(Name);
}

- (void)cloneAtTime:(float)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = *"";
  v3[2] = __27__OZJSElement_cloneAtTime___block_invoke;
  v3[3] = &unk_279AAA250;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __27__OZJSElement_cloneAtTime___block_invoke(uint64_t a1)
{
  result = (*(**(*(a1 + 32) + 16) + 272))(*(*(a1 + 32) + 16));
  if (result)
  {
    v3 = result;
    printf("[AR]\t\tOZJavaScript clone: cloning %u\n", [*(a1 + 32) ID]);
    OZScene::clearSelection(v3);
    v4 = *(*(a1 + 32) + 16);
    if (v4)
    {
      v5 = (v4 + 16);
    }

    else
    {
      v5 = 0;
    }

    OZScene::selectObject(v3, v5, 0, 0);
    OZScene::duplicateSelected(v3);
    OZScene::begin_all_sel(v3, v19);
    OZScene::end_all_sel(v3, v15);
    v6 = &v20;
    if (v22 == v17[2])
    {
      if (v22 < 2)
      {
        v7 = v15;
        v8 = v19;
      }

      else if (v22 == 3)
      {
        v7 = v17;
        v8 = &v21;
      }

      else
      {
        if (v22 != 2)
        {
          goto LABEL_24;
        }

        v7 = &v16;
        v8 = &v20;
      }

      if (*v8 == *v7)
      {
        goto LABEL_24;
      }
    }

    if (v22 < 2)
    {
      v10 = v19[0];
      if (v19[0] != v19[2])
      {
        v9 = 16;
        goto LABEL_21;
      }
    }

    else
    {
      if (v22 == 2)
      {
        v9 = 48;
        goto LABEL_20;
      }

      if (v22 == 3)
      {
        v9 = 16;
        v6 = &v21;
LABEL_20:
        v10 = *v6;
LABEL_21:
        v11 = *(v10 + 16);
        if (v11)
        {
          if (v12)
          {
            v13 = v12;
            memset(&v14, 0, sizeof(v14));
            PC_CMTimeMakeWithSecondsRoundToNearest(30, &v14, *(a1 + 40));
            (*(*v13 + 1160))(v13, &v14);
          }
        }
      }
    }

LABEL_24:
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v18);
    return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v23);
  }

  return result;
}

- (id)getBehaviorWithName:(id)a3
{
  element = self->_element;
  v4 = (element + 125);
  v5 = element[126];
  if (v5 != (element + 125))
  {
    while (1)
    {
      Name = OZObjectManipulator::getName((*(v5 + 2) + 16));
      v9.var0 = 0;
      PCString::set(&v9, a3);
      LODWORD(Name) = PCString::compare(Name, &v9);
      PCString::~PCString(&v9);
      if (!Name)
      {
        break;
      }

      v5 = *(v5 + 1);
      if (v5 == v4)
      {
        return 0;
      }
    }
  }

  if (v5 == v4)
  {
    return 0;
  }

  else
  {
    return [OZJSBehavior behaviorWithBehavior:*(v5 + 2)];
  }
}

@end