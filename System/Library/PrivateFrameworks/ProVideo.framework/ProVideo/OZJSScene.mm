@interface OZJSScene
+ (id)sceneWithScene:(void *)a3;
- (OZJSScene)initWithScene:(void *)a3;
- (id)get3DElementWithID:(unsigned int)a3;
- (id)get3DElementWithName:(id)a3;
- (id)getElementWithID:(unsigned int)a3;
@end

@implementation OZJSScene

+ (id)sceneWithScene:(void *)a3
{
  v3 = [[OZJSScene alloc] initWithScene:a3];

  return v3;
}

- (OZJSScene)initWithScene:(void *)a3
{
  v5.receiver = self;
  v5.super_class = OZJSScene;
  result = [(OZJSScene *)&v5 init];
  if (result)
  {
    result->_scene = a3;
  }

  return result;
}

- (id)getElementWithID:(unsigned int)a3
{
  scene = self->_scene;
  if (!scene)
  {
    return 0;
  }

  Node = OZScene::getNode(scene, a3);
  if (!Node)
  {
    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  return [OZJSElement elementWithElement:v5];
}

- (id)get3DElementWithID:(unsigned int)a3
{
  result = self->_scene;
  if (result)
  {
    result = OZScene::getNode(result, a3);
    if (result)
    {
      if (result)
      {
        v4 = result;
        v5 = *(result + 1);
        v6 = xmmword_260850630;
        if (OZFactory::isKindOfClass(v5, &v6))
        {
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

- (id)get3DElementWithName:(id)a3
{
  scene = self->_scene;
  if (!scene)
  {
    return 0;
  }

  OZScene::begin_t<OZ3DEngineSceneElement,false,true>(scene, v22);
  v6 = self->_scene;
  v7 = (v6 + 150);
  v8 = v6[151];
  memset(v20, 0, sizeof(v20));
  v21 = 1065353216;
  v16 = v7;
  v17 = v8;
  v18 = v7;
  v19 = 0;
  v9 = v22[0];
  if (v22[0] == v7)
  {
LABEL_5:
    v12 = 0;
  }

  else
  {
    while (1)
    {
      Name = OZObjectManipulator::getName((v10 + 16));
      if (![(__CFString *)PCString::ns_str(Name) compare:a3])
      {
        break;
      }

      OZObject::iterator_t<OZ3DEngineSceneElement,false,true,OZObject::defaultValidator>::operator++(v22, v14);
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v15);
      v9 = v22[0];
      if (v22[0] == v16)
      {
        goto LABEL_5;
      }
    }

    v12 = [OZJS3DElement elementWith3DElement:v10];
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v20);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v23);
  return v12;
}

@end