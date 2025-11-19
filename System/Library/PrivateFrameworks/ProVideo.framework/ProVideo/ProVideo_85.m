void sub_2601049E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, void *__p, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  PCString::~PCString(&a10);
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&a14, a15);
  if (a17)
  {
    a18 = a17;
    operator delete(a17);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v37 + 48);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&a37);
  _Unwind_Resume(a1);
}

uint64_t OZScene::deleteSceneNodeFiles(OZDocument **this, void *a2, uint64_t a3)
{
  v53 = 0;
  v54 = 0;
  v52 = &v53;
  v3 = a2[1] - *a2;
  if (!v3)
  {
LABEL_66:
    v35 = 1;
    goto LABEL_67;
  }

  v5 = 0;
  v6 = v3 >> 2;
  v7 = this + 159;
  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  do
  {
    v9 = *v7;
    if (*v7)
    {
      v10 = *(*a2 + 4 * v5);
      v11 = v7;
      do
      {
        v12 = *(v9 + 32);
        v13 = v12 >= v10;
        v14 = v12 < v10;
        if (v13)
        {
          v11 = v9;
        }

        v9 = *(v9 + 8 * v14);
      }

      while (v9);
      if (v11 != v7 && *(v11 + 8) <= v10)
      {
        v15 = v11[5];
        if (v15)
        {
          v18 = *v15;
          v16 = v15 + 1;
          v17 = v18;
          if (v18 != v16)
          {
            do
            {
              Node = OZScene::getNode(this, *(v17 + 7));
              v20 = Node;
              if (Node)
              {
                {
                  v21 = v20[1];
                  v51 = xmmword_260850EF0;
                  if ((OZFactory::isKindOfClass(v21, &v51) & 1) == 0)
                  {
                    std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v52, v17 + 7);
                  }
                }
              }

              v22 = v17[1];
              if (v22)
              {
                do
                {
                  v23 = v22;
                  v22 = *v22;
                }

                while (v22);
              }

              else
              {
                do
                {
                  v23 = v17[2];
                  v24 = *v23 == v17;
                  v17 = v23;
                }

                while (!v24);
              }

              v17 = v23;
            }

            while (v23 != v16);
          }
        }
      }
    }

    ++v5;
  }

  while (v5 != v8);
  if (!v54 || (OZChannelBase::isObjectRef(this) & 1) != 0)
  {
    v25 = this[153];
    if (v25)
    {
      v26 = *(v25 + 20);
      v27 = v53;
      if (!v53)
      {
        goto LABEL_37;
      }

      v28 = &v53;
      do
      {
        v29 = *(v27 + 7);
        v13 = v29 >= v26;
        v30 = v29 < v26;
        if (v13)
        {
          v28 = v27;
        }

        v27 = v27[v30];
      }

      while (v27);
      if (v28 == &v53 || v26 < *(v28 + 7))
      {
LABEL_37:
        v28 = &v53;
      }

      v31 = *a2;
      v32 = a2[1];
      if (*a2 != v32)
      {
        while (*v31 != v26)
        {
          if (++v31 == v32)
          {
            v31 = a2[1];
            break;
          }
        }
      }

      v33 = v31 != v32;
      v34 = v28 != &v53 || v33;
    }

    else
    {
      v34 = 0;
    }

    v36 = this[188];
    if (v36)
    {
      OZChannelBase::setRangeName(v36, 1);
    }

    v37 = v52;
    if (v52 != &v53)
    {
      do
      {
        v38 = OZScene::OZNodeMap::operator[]((this + 161), *(v37 + 7));
        v39 = v38;
        if (v38)
        {
          (*(*v38 + 176))(v38, a3, 2);
          v40 = (*(*v39 + 216))(v39);
          (*(*v39 + 184))(v39, v40);
        }

        v41 = v37[1];
        if (v41)
        {
          do
          {
            v42 = v41;
            v41 = *v41;
          }

          while (v41);
        }

        else
        {
          do
          {
            v42 = v37[2];
            v24 = *v42 == v37;
            v37 = v42;
          }

          while (!v24);
        }

        v37 = v42;
      }

      while (v42 != &v53);
    }

    for (i = 0; i != v8; ++i)
    {
      v44 = OZScene::OZNodeMap::operator[]((this + 161), *(*a2 + 4 * i));
      v45 = v44;
      if (v44)
      {
        (*(*v44 + 176))(v44, a3, 2);
        v46 = (*(*v45 + 216))(v45);
        (*(*v45 + 184))(v45, v46);
      }
    }

    if (v34)
    {
      OZScene::clearSelection(this);
      this[153] = 0;
      v47 = 48;
    }

    else
    {
      v47 = 16;
    }

    OZDocument::postNotification(this[198], v47);
    goto LABEL_66;
  }

  v35 = 0;
LABEL_67:
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v52, v53);
  return v35;
}

uint64_t OZScene::unusedSceneNodeFileIDs@<X0>(OZScene *this@<X0>, uint64_t a2@<X8>)
{
  OZScene::begin_t<OZSceneNodeFile,false,true>(this, v15);
  v4 = *(this + 151);
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  v9 = this + 1200;
  v10 = v4;
  v11 = this + 1200;
  v12 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  while (v15[0] != v9)
  {
    if (v15[0] == v15[2] || (v5 = *(v15[0] + 16)) == 0)
    {
      v6 = 0;
    }

    else
    {
    }

    if (((*(*v6 + 1336))(v6) & 1) == 0)
    {
      v8 = v6[20];
      std::vector<int>::push_back[abi:ne200100](a2, &v8);
    }

    OZObject::iterator_t<OZSceneNodeFile,false,true,OZObject::defaultValidator>::operator++(v15);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v13);
  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v16);
}

void sub_260105054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  v19 = *v16;
  if (*v16)
  {
    *(v16 + 8) = v19;
    operator delete(v19);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v17 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t OZScene::dirty(OZScene *this)
{
  v1 = *(this + 151);
  memset(v8, 0, sizeof(v8));
  v9 = 1065353216;
  v6[0] = v1;
  v6[1] = v1;
  v6[2] = this + 1200;
  v7 = 0;
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  v3 = this + 1200;
  while (v6[0] != v3)
  {
    (*(**(v6[0] + 16) + 496))(*(v6[0] + 16));
    OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(v6);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v4);
  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v8);
}

void sub_260105158(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v2 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v1 + 32);
  _Unwind_Resume(a1);
}

double OZScene::invalidateStaticHash(OZScene *this)
{
  result = 0.0;
  *(this + 1596) = 0u;
  return result;
}

void *OZScene::begin_t<OZElement,false,false>@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[151];
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = result + 150;
  *(a2 + 24) = 0;
  if (v3 != result + 150)
  {
    v4 = v3[2];
    if (!v4)
    {
      return OZObject::iterator_t<OZElement,false,false,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZElement,false,false,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

void *OZObject::iterator_t<OZElement,false,false,OZObject::defaultValidator>::operator++(void *a1)
{
  v2 = a1[2];
  v3 = *(*a1 + 8);
  for (*a1 = v3; v3 != v2; *a1 = v3)
  {
    v4 = *(v3 + 16);
    {
      break;
    }

    v3 = *(v3 + 8);
  }

  return a1;
}

uint64_t OZScene::getStaticLightHash(OZScene *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v12 = *MEMORY[0x277D85DE8];
  PCWorkingColorVector::PCWorkingColorVector(v2);
  OZScene::begin_t<OZLight,false,false>(v1, v9);
  v3 = v1[151];
  memset(v7, 0, sizeof(v7));
  v8 = 1065353216;
  v5[3] = v1 + 150;
  v5[4] = v3;
  v5[5] = v1 + 150;
  v6 = 0;
  if (v9[0] != v1 + 150)
  {
    PCHashWriteStream::PCHashWriteStream(v11);
    v5[0] = v5;
    v5[1] = v5;
    v5[2] = 0;
    OZObjectManipulator::getStaticHash();
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v7);
  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v10);
}

uint64_t OZScene::getStaticCameraHash(OZScene *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v12 = *MEMORY[0x277D85DE8];
  PCWorkingColorVector::PCWorkingColorVector(v2);
  OZScene::begin_t<OZCamera,false,false>(v1, v9);
  v3 = v1[151];
  memset(v7, 0, sizeof(v7));
  v8 = 1065353216;
  v5[3] = v1 + 150;
  v5[4] = v3;
  v5[5] = v1 + 150;
  v6 = 0;
  if (v9[0] != v1 + 150)
  {
    PCHashWriteStream::PCHashWriteStream(v11);
    v5[0] = v5;
    v5[1] = v5;
    v5[2] = 0;
    OZObjectManipulator::getStaticHash();
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v7);
  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v10);
}

uint64_t OZScene::getStaticProjectNodeHash(OZScene *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v12 = *MEMORY[0x277D85DE8];
  PCWorkingColorVector::PCWorkingColorVector(v2);
  OZScene::begin_t<OZProjectNode,false,false>(v1, v9);
  v3 = v1[151];
  memset(v7, 0, sizeof(v7));
  v8 = 1065353216;
  v5[3] = v1 + 150;
  v5[4] = v3;
  v5[5] = v1 + 150;
  v6 = 0;
  if (v9[0] != v1 + 150)
  {
    PCHashWriteStream::PCHashWriteStream(v11);
    v5[0] = v5;
    v5[1] = v5;
    v5[2] = 0;
    OZObjectManipulator::getStaticHash();
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v7);
  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v10);
}

uint64_t OZScene::getLightHashForState(OZScene *this, const OZRenderParams *a2)
{
  v2 = MEMORY[0x28223BE20](this);
  v4 = v3;
  v5 = v2;
  v21 = *MEMORY[0x277D85DE8];
  PCWorkingColorVector::PCWorkingColorVector(v6);
  OZScene::begin_t<OZLight,false,false>(v5, v17);
  v7 = v5[151];
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  v11 = v5 + 150;
  v12 = v7;
  v13 = v5 + 150;
  v14 = 0;
  while (v17[0] != v11)
  {
    if (v17[0] == v17[2])
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v17[0] + 16);
      if (v8)
      {
      }
    }

    v20 = *(v4 + 2);
    v19 = *v4;
    if ((*(v8[2] + 104))())
    {
      PCHashWriteStream::PCHashWriteStream(&v19);
      v10[0] = v10;
      v10[1] = v10;
      v10[2] = 0;
      OZObjectManipulator::getHashForState();
    }

    OZObject::iterator_t<OZLight,false,false,OZObject::defaultValidator>::operator++(v17);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v15);
  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v18);
}

uint64_t OZScene::getActiveCamera(OZScene *this, const CMTime *a2)
{
  OZScene::begin_t<OZCamera,false,true>(this, v22);
  v4 = *(this + 151);
  memset(v20, 0, sizeof(v20));
  v21 = 1065353216;
  v16 = this + 1200;
  v17 = v4;
  v18 = this + 1200;
  v19 = 0;
  v15 = **&MEMORY[0x277CC08A0];
  v13 = 0uLL;
  v14 = 0;
  OZSceneSettings::getFrameDuration((this + 336), &v13);
  v5 = 0;
  while (v22[0] != v16)
  {
    if (v22[0] == v22[2] || (v6 = *(v22[0] + 16)) == 0)
    {
      v7 = 0;
    }

    else
    {
    }

    v11[0].epoch = a2->epoch;
    v8 = v7[2];
    *&v11[0].value = *&a2->value;
    if ((*(v8 + 104))(v7 + 2, v11, 1, 1, 1))
    {
      v5 = v7;
      goto LABEL_15;
    }

    if ((*(v7[2] + 24))(v7 + 2, 1, 1))
    {
      memset(&v12, 0, sizeof(v12));
      (*(*v7 + 1128))(v11, v7);
      time2 = v11[0];
      v25 = v11[1];
      PC_CMTimeSaferAdd(&time2, &v25, &v24);
      time2 = v24;
      *&v25.value = v13;
      v25.epoch = v14;
      PC_CMTimeSaferSubtract(&time2, &v25, &v12);
      v11[0] = v12;
      time2 = v15;
      if (CMTimeCompare(v11, &time2) >= 1)
      {
        v15 = v12;
        v5 = v7;
      }
    }

    OZObject::iterator_t<OZCamera,false,true,OZObject::defaultValidator>::operator++(v22);
  }

  if (!v5)
  {
    v9 = 0;
    goto LABEL_16;
  }

LABEL_15:
  v9 = *(v5 + 20);
LABEL_16:
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v20);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v23);
  return v9;
}

void sub_260105D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v37 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&a37);
  _Unwind_Resume(a1);
}

void *OZScene::begin_t<OZLight,false,false>@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[151];
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = result + 150;
  *(a2 + 24) = 0;
  if (v3 != result + 150)
  {
    v4 = v3[2];
    if (!v4)
    {
      return OZObject::iterator_t<OZLight,false,false,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZLight,false,false,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

void *OZObject::iterator_t<OZLight,false,false,OZObject::defaultValidator>::operator++(void *a1)
{
  v2 = a1[2];
  v3 = *(*a1 + 8);
  for (*a1 = v3; v3 != v2; *a1 = v3)
  {
    v4 = *(v3 + 16);
    {
      break;
    }

    v3 = *(v3 + 8);
  }

  return a1;
}

void *OZScene::begin_t<OZCamera,false,false>@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[151];
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = result + 150;
  *(a2 + 24) = 0;
  if (v3 != result + 150)
  {
    v4 = v3[2];
    if (!v4)
    {
      return OZObject::iterator_t<OZCamera,false,false,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZCamera,false,false,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

void *OZObject::iterator_t<OZCamera,false,false,OZObject::defaultValidator>::operator++(void *a1)
{
  v2 = a1[2];
  v3 = *(*a1 + 8);
  for (*a1 = v3; v3 != v2; *a1 = v3)
  {
    v4 = *(v3 + 16);
    {
      break;
    }

    v3 = *(v3 + 8);
  }

  return a1;
}

void *OZObject::iterator_t<OZProjectNode,false,false,OZObject::defaultValidator>::operator++(void *a1)
{
  v2 = a1[2];
  v3 = *(*a1 + 8);
  for (*a1 = v3; v3 != v2; *a1 = v3)
  {
    v4 = *(v3 + 16);
    {
      break;
    }

    v3 = *(v3 + 8);
  }

  return a1;
}

uint64_t OZScene::containsActiveLights(OZScene *this, const OZGroup *a2)
{
  OZScene::begin_t<OZLight,false,false>(this, v24);
  v4 = *(this + 151);
  memset(v22, 0, sizeof(v22));
  v23 = 1065353216;
  v18 = this + 1200;
  v19 = v4;
  v20 = this + 1200;
  v21 = 0;
  while (v24[0] != v18)
  {
    if (v24[0] == v24[2])
    {
      v5 = 0;
    }

    else
    {
      v5 = *(v24[0] + 16);
      if (v5)
      {
      }
    }

    v16 = *(this + 149);
    v15 = *(this + 1176);
    if ((*(v5[2] + 104))())
    {
      v13 = 1;
      goto LABEL_29;
    }

    OZObject::iterator_t<OZLight,false,false,OZObject::defaultValidator>::operator++(v24);
  }

  OZScene::begin_t<OZGroup,false,false>(this, &v15);
  {
    while (1)
    {
      if (v15 != v16)
      {
        v7 = *(v15 + 16);
        if (v8 != a2)
        {
          if (((*(v9 + 1424))() & 1) == 0)
          {
            if (v15 == v16)
            {
              v10 = 0;
            }

            else
            {
              v10 = *(v15 + 16);
              if (v10)
              {
              }
            }

            if (OZGroup::containsActiveLights(v10, a2))
            {
              break;
            }
          }
        }
      }

      v11 = OZObject::iterator_t<OZGroup,false,false,OZObject::defaultValidator>::operator++(&v15);
      if (*v11 != v11[2])
      {
        v12 = *(*v11 + 16);
        if (v12)
        {
          {
            continue;
          }
        }
      }

      goto LABEL_26;
    }

    v13 = 1;
  }

  else
  {
LABEL_26:
    v13 = 0;
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v17);
LABEL_29:
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v22);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v25);
  return v13;
}

void sub_2601064D8(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v1 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v2 - 104);
  _Unwind_Resume(a1);
}

void *OZScene::begin_t<OZGroup,false,false>@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[151];
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = result + 150;
  *(a2 + 24) = 0;
  if (v3 != result + 150)
  {
    v4 = v3[2];
    if (!v4)
    {
      return OZObject::iterator_t<OZGroup,false,false,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZGroup,false,false,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

void *OZObject::iterator_t<OZGroup,false,false,OZObject::defaultValidator>::operator++(void *a1)
{
  v2 = a1[2];
  v3 = *(*a1 + 8);
  for (*a1 = v3; v3 != v2; *a1 = v3)
  {
    v4 = *(v3 + 16);
    {
      break;
    }

    v3 = *(v3 + 8);
  }

  return a1;
}

uint64_t OZScene::containsActiveShadowLights(OZScene *this, const OZGroup *a2)
{
  OZScene::begin_t<OZLight,false,false>(this, v24);
  v4 = *(this + 151);
  memset(v22, 0, sizeof(v22));
  v23 = 1065353216;
  v18 = this + 1200;
  v19 = v4;
  v20 = this + 1200;
  v21 = 0;
  v5 = MEMORY[0x277CC08F0];
  while (v24[0] != v18)
  {
    if (v24[0] == v24[2])
    {
      v6 = 0;
    }

    else
    {
      v6 = *(v24[0] + 16);
      if (v6)
      {
      }
    }

    v16 = *(this + 149);
    v15 = *(this + 1176);
    if ((*(v6[2] + 104))())
    {
      if (OZFolderLightShadow::hasShadows((v7 + 8776), v5))
      {
        v13 = 1;
        goto LABEL_23;
      }
    }

    OZObject::iterator_t<OZLight,false,false,OZObject::defaultValidator>::operator++(v24);
  }

  OZScene::begin_t<OZGroup,false,false>(this, &v15);
  {
    v10 = v9;
    while (v10 == a2 || ((*(*v10 + 1424))(v10) & 1) != 0 || (OZGroup::containsActiveShadowLights(v10, a2) & 1) == 0)
    {
      v11 = OZObject::iterator_t<OZGroup,false,false,OZObject::defaultValidator>::operator++(&v15);
      if (*v11 != v11[2])
      {
        v12 = *(*v11 + 16);
        if (v12)
        {
          if (v10)
          {
            continue;
          }
        }
      }

      goto LABEL_20;
    }

    v13 = 1;
  }

  else
  {
LABEL_20:
    v13 = 0;
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v17);
LABEL_23:
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v22);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v25);
  return v13;
}

void sub_260106980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v32 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&a32);
  _Unwind_Resume(a1);
}

_DWORD *OZScene::createGrid(OZScene *this, const LiCamera *a2, LiGraphBuilder *a3)
{
  v4 = OZPreferenceManager::Instance(this);
  OZPreferenceManager::getGroundPlaneSpacing(v4);
  memset(v7, 0, 24);
  result = addGrids(v7, a2, 1.0);
  for (i = 0; i != 3; ++i)
  {
    if (fabs(*&v7[i]) >= 0.0000001)
    {
      operator new();
    }
  }

  return result;
}

void sub_260106E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, PCSharedCount a31, uint64_t a32, uint64_t a33, CGColorSpace *a34)
{
  PCSharedCount::~PCSharedCount(&a31);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a34);
  PCSharedCount::~PCSharedCount((v34 - 152));
  _Unwind_Resume(a1);
}

_DWORD *addGrids(_DWORD *result, const void *a2, double a3)
{
  if (a3 >= 0.0)
  {
    v3 = a3;
    if (fabs(a3) >= 0.0000001)
    {
      v5 = result;
      v6 = 1;
      while (a2)
      {
        if (!v7)
        {
          if (result && (v12 = result[124] - 2, v12 <= 5))
          {
            v6 = qword_260851068[v12];
          }

          else
          {
            v6 = 1;
          }

          break;
        }

        v8 = v7;
        Time = LiAnimCamera::getTime(v7);
        result = addGrids(v5, *(v8 + 62), v3 * (1.0 - Time));
        v10 = v3 * Time;
        v11 = v3 * Time < 0.0;
        if (v3 * Time >= 0.0)
        {
          v3 = v3 * Time;
        }

        else
        {
          v3 = 0.0;
        }

        if (!v11)
        {
          a2 = *(v8 + 64);
          if (fabs(v10) >= 0.0000001)
          {
            continue;
          }
        }

        return result;
      }

      *&v5[2 * v6] = fmin(v3 + *&v5[2 * v6], 1.0);
    }
  }

  return result;
}

uint64_t OZScene::getWorkingColorSpace(OZScene *this)
{
  ComputedWorkingGamut = OZScene::getComputedWorkingGamut(this);

  return PCRenderModel::getWorkingColorSpace(this + 1816, ComputedWorkingGamut);
}

void OZScene::buildSceneRenderGraph(OZScene *this, OZRenderParams *a2)
{
  v4 = *(a2 + 160);
  if (v4)
  {
    v14.var0 = *(a2 + 160);
    PCSharedCount::PCSharedCount(&v15, (v4 + *(*v4 - 24)));
    PCPtr<OZSceneCamera>::PCPtr<LiCamera>(&v10, &v14);
    value = v10._introDuration.value;
    PCSharedCount::~PCSharedCount(&v10._introDuration.timescale);
    if (value)
    {
      v12.var0 = v14.var0;
      PCSharedCount::PCSharedCount(&v13, &v15);
      if (OZSceneCamera::isValid(value))
      {
        v10._scaleableDuration.value = &unk_2872DEA38;
        *&v10._scaleableDuration.timescale = 0;
        LOBYTE(v10._scaleableDuration.epoch) = 1;
        v10._introDuration.value = off_287291E60;
        *(&v10._introDuration.value + *(off_287291E60 - 3)) = off_287291E68;
        v6 = off_287291E50;
        v10._introDuration.value = off_287291E58;
        v7 = off_287291E78;
        *(&v10._introDuration.value + *(off_287291E58 - 3)) = off_287291E70;
        v10._introDuration.value = v6;
        *(&v10._introDuration.value + *(v6 - 3)) = v7;
        v10._introDuration.value = &unk_287291B18;
        v10._scaleableDuration.value = &unk_287291E30;
        v8 = *(value + 40);
        v9 = *(value + 24);
        *&v10._introDuration.timescale = *(value + 8);
        *&v10._outroDuration.value = v9;
        v10._outroDuration.epoch = v8;
        LiRenderingTechnology::setRasterizeEdges(&v10, 0);
        v11 = *a2;
        METimeRemap::setOutroDuration(&v10, &v11);
        operator new();
      }

      PCMakePtr<LiSimpleCamera>();
    }

    if (*(a2 + 242) == 1)
    {
      *&v10._introDuration.value = *a2;
      v10._introDuration.epoch = *(a2 + 2);
      OZScene::makeActiveCamera(this, &v10);
    }

    *(a2 + 32) = this + 1240;
    *(a2 + 392) = 0u;
    *(a2 + 408) = 0u;
    operator new();
  }

  if ((*(this + 1500) & 1) == 0)
  {
    *&v10._introDuration.value = *a2;
    v10._introDuration.epoch = *(a2 + 2);
    *(this + 374) = OZScene::getActiveCamera(this, &v10);
    *(this + 1500) = 1;
  }

  operator new();
}

void sub_26010899C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, PCSharedCount a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  PCSharedCount::~PCSharedCount(&a38);
  PCSharedCount::~PCSharedCount(v70 + 1);
  OZSceneCamera::~OZSceneCamera(&a69);
  PCSharedCount::~PCSharedCount(v69 + 1);
  PCSharedCount::~PCSharedCount((v71 - 128));
  _Unwind_Resume(a1);
}

void OZScene::makeActiveCamera(OZScene *this, const CMTime *a2)
{
  v3._introDuration.value = this;
  LODWORD(v2) = 0;
  PCMakePtr<OZSceneCamera,OZScene *,OZViewCameraType>();
}

void sub_2601090A0(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v1 + 1);
  PCSharedCount::~PCSharedCount((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t OZScene::begin_all_t<OZRigBehavior,false,true>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1208);
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 80) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = a1 + 1200;
  *(a2 + 40) = 0;
  for (result = OZObject::all_iterator_t<OZRigBehavior,false,true,OZObject::defaultAllValidator>::typeCheck(a2); (result & 1) == 0; result = OZObject::all_iterator_t<OZRigBehavior,false,true,OZObject::defaultAllValidator>::typeCheck(a2))
  {
    OZObject::all_iterator_t<OZRigBehavior,false,true,OZObject::defaultAllValidator>::increment(a2);
  }

  return result;
}

void OZRenderParams::setShadowLights(OZRenderParams *this, const LiLightSet *a2)
{
  v3 = *(this + 155);
  if (!v3)
  {
    throw_PCNullPointerException(1);
  }

  v4 = *(a2 + 3);
  if (*(v3 + 40) < v4)
  {
    v5 = 2 * v4 + 1;
  }

  else
  {
    v5 = *(v3 + 40);
  }

  PCArray<LiLight,PCArray_Traits<LiLight>>::resize(v3 + 32, v4, v5);
  if (*(a2 + 3) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      LiLight::operator=(*(v3 + 48) + v6, *(a2 + 2) + v6);
      ++v7;
      v6 += 944;
    }

    while (v7 < *(a2 + 3));
  }

  *(v3 + 56) = *(a2 + 24);
}

uint64_t *OZObject::iterator_t<OZCamera,false,true,OZObject::defaultValidator>::operator++(uint64_t *a1)
{
  OZObject::iterator_t<OZCamera,false,true,OZObject::defaultValidator>::increment(a1);
  for (i = *a1; *a1 != a1[2]; i = *a1)
  {
    v3 = *(i + 16);
    {
      break;
    }

    OZObject::iterator_t<OZCamera,false,true,OZObject::defaultValidator>::increment(a1);
  }

  return a1;
}

void OZScene::calcWorldToFilmSpaceMatrixForCamera(OZScene *this@<X0>, const LiCamera *a2@<X1>, _OWORD *a3@<X8>)
{
  *&v37[40] = 0x3FF0000000000000;
  *v37 = 0x3FF0000000000000;
  *&v34[40] = 0x3FF0000000000000;
  *v34 = 0x3FF0000000000000;
  memset(&v34[8], 0, 32);
  v35 = 0u;
  v36 = 0u;
  memset(&v37[8], 0, 32);
  v6 = *a2;
  if (v7)
  {
    if (!OZSceneCamera::isValid(v7))
    {
      LiSimpleCamera::LiSimpleCamera(&src);
      v22[0] = vcvtq_f64_f32(vcvt_f32_s32(*(this + 344)));
      LiSimpleCamera::setFilmback(&src, v22);
      LiSimpleCamera::setPixelAspectRatio(&src, *(this + 48));
      OZScene::calcWorldToFilmSpaceMatrixForCamera(this, &src);
      LiSimpleCamera::~LiSimpleCamera(&src, v21);
      return;
    }

    v6 = *a2;
  }

  v8 = vcvtq_f64_f32(vcvt_f32_s32(*(this + 344)));
  __asm { FMOV            V1.2D, #-0.5 }

  v23[0] = vmulq_f64(v8, _Q1);
  v23[1] = v8;
  v33 = 0x3FF0000000000000;
  v30 = 0x3FF0000000000000;
  v27 = 0x3FF0000000000000;
  src = 0x3FF0000000000000;
  v25 = 0u;
  v26 = 0u;
  v28 = 0u;
  v29 = 0u;
  v31 = 0u;
  v32 = 0u;
  (*(v6 + 296))(a2, v23, &src);
  (*(*a2 + 48))(v22, a2);
  for (i = 0; i != 8; i += 2)
  {
    v15 = &v34[i * 16];
    v16 = v22[i + 1];
    *v15 = v22[i];
    v15[1] = v16;
  }

  PCMatrix44Tmpl<double>::leftMult(v34, &src);
  v17 = *v37;
  a3[4] = v36;
  a3[5] = v17;
  v18 = *&v37[32];
  a3[6] = *&v37[16];
  a3[7] = v18;
  v19 = *&v34[16];
  *a3 = *v34;
  a3[1] = v19;
  v20 = v35;
  a3[2] = *&v34[32];
  a3[3] = v20;
}

void sub_2601095F8(void *a1)
{
  __cxa_begin_catch(a1);
  *(v3 - 144) = 0u;
  *(v3 - 128) = 0u;
  *(v3 - 192) = 0u;
  *(v3 - 176) = 0u;
  *(v3 - 160) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v3 - 112) = 0x3FF0000000000000;
  *(v3 - 72) = 0x3FF0000000000000;
  v4 = *(v3 - 112);
  v1[4] = *(v3 - 128);
  v1[5] = v4;
  v5 = *(v3 - 80);
  v1[6] = *(v3 - 96);
  v1[7] = v5;
  v6 = *(v3 - 176);
  *v1 = *(v3 - 192);
  v1[1] = v6;
  v7 = *(v3 - 144);
  v1[2] = *(v3 - 160);
  v1[3] = v7;
  __cxa_end_catch();
  JUMPOUT(0x2601095DCLL);
}

uint64_t PCQuat<double>::setRotation(uint64_t a1, double *a2, double *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *a3;
  v7 = a3[1];
  v8 = a2[2];
  v9 = a3[2];
  v10 = v4 * v4 + v5 * v5 + v8 * v8;
  v11 = (*a2 * *a3 + v5 * v7 + v8 * v9) / sqrt(v10 * (v6 * v6 + v7 * v7 + v9 * v9));
  if (v11 <= 0.99999)
  {
    if (v11 >= -0.99999)
    {
      v20 = v5 * v9 - v7 * v8;
      v21 = v6 * v8 - v4 * v9;
      v22 = v4 * v7 - v6 * v5;
      v23 = sqrt((1.0 - v11) * 0.5 / (v22 * v22 + v20 * v20 + v21 * v21));
      *a1 = sqrt((v11 + 1.0) * 0.5);
      *(a1 + 8) = v20 * v23;
      *(a1 + 16) = v21 * v23;
      *(a1 + 24) = v22 * v23;
    }

    else
    {
      v12 = sqrt(v10);
      if (fabs(v12) < 0.000000100000001)
      {
        v12 = 1.0;
      }

      v13 = v4 / v12;
      v14 = v5 / v12;
      v15 = v8 / v12;
      v16 = v14 * 0.0;
      v17 = v14 * 0.0 - v15 * 0.0;
      v18 = v15 - v13 * 0.0;
      v19 = v13 * 0.0 - v14;
      *(a1 + 8) = v17;
      *(a1 + 16) = v18;
      *(a1 + 24) = v19;
      if (sqrt(v19 * v19 + v17 * v17 + v18 * v18) < 0.00001)
      {
        *(a1 + 8) = v16 - v15;
        *(a1 + 16) = v15 * 0.0 - v13 * 0.0;
        *(a1 + 24) = v13 - v16;
      }

      *a1 = 0;
      PCVector3<double>::normalize((a1 + 8), 0.000000100000001);
    }
  }

  else
  {
    *a1 = 0x3FF0000000000000;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t OZScene::openMedia(OZScene *this)
{
  OZScene::rbegin_t<OZSceneNode,false,true>(this, v22);
  v2 = 0;
  v3 = *(this + 151);
  memset(v20, 0, sizeof(v20));
  v21 = 1065353216;
  v16 = this + 1200;
  v17 = v3;
  v18 = this + 1200;
  v19 = 0;
  while (v22[0] != v16)
  {
    if (v22[0] == v23 || (v4 = *(v22[0] + 16)) == 0)
    {
      v15 = 0;
      goto LABEL_9;
    }

    v15 = 0;
    if (v7)
    {
      v10 = OZFootage::isInUseByUnreplacedDropZonesOnly(v7, &v15);
      if (v5)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v10 = 0;
      if (v5)
      {
LABEL_15:
        if (OZElement::isVisibleInRig(v5))
        {
          goto LABEL_24;
        }
      }
    }

    if (v7 && (!v10 || v15))
    {
      OZFootage::setNeedsDZFileOpen(v7, 1);
      v5 = v7;
LABEL_24:
      v13 = (*(*v5 + 104))(v5);
LABEL_25:
      v2 = v13;
      goto LABEL_26;
    }

    if (v8)
    {
      v5 = v8;
      if ((*(*(v8 + 2) + 24))(v8 + 16, 1, 1))
      {
        goto LABEL_24;
      }
    }

    v5 = v9;
    if (v9)
    {
      goto LABEL_24;
    }

    v5 = v6;
    if (v6)
    {
      goto LABEL_24;
    }

LABEL_9:
    if ((TXParagraphStyleFolder_Factory::version(this) & 1) == 0 && v22[0] != v23)
    {
      v11 = *(v22[0] + 16);
      if (v11)
      {
        if (v12)
        {
          v13 = (*(*v12 + 104))(v12);
          goto LABEL_25;
        }
      }
    }

LABEL_26:
    OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::decrement(v22);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v20);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v24);
  return v2;
}

void sub_260109BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

uint64_t *OZScene::rbegin_t<OZSceneNode,false,true>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[151];
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = result + 150;
  *(a2 + 8) = v2;
  *(a2 + 16) = result + 150;
  *(a2 + 24) = 0;
  if (result + 150 != v2)
  {
    return OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::decrement(a2);
  }

  return result;
}

void *std::list<OZCPPObserver *>::remove(uint64_t a1, void *a2)
{
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v2 = *(a1 + 8);
  if (v2 != a1)
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        std::list<std::shared_ptr<TXTextStyle>>::splice(v10, v10, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
  }

  return std::__list_imp<unsigned int>::clear(v10);
}

void sub_260109D84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

CGImageRef OZScene::setCustomEnvironmentMap(OZScene *this, CGImageRef image)
{
  v4 = *(this + 234);
  if (v4)
  {
    CGImageRelease(v4);
  }

  *(this + 234) = image;

  return CGImageRetain(image);
}

void OZSceneList::OZSceneList(OZSceneList *this)
{
  PCSingleton::PCSingleton(this, 0);
  *v2 = &unk_287287630;
  PCMutex::PCMutex((v2 + 8));
  *(this + 12) = 0;
  *(this + 11) = 0;
  *(this + 10) = this + 88;
}

void OZSceneList::~OZSceneList(OZSceneList *this)
{
  *this = &unk_287287630;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 80, *(this + 11));
  PCMutex::~PCMutex((this + 8));

  PCSingleton::~PCSingleton(this);
}

{
  OZSceneList::~OZSceneList(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZScene::getSanitizedViewGamut(OZScene *this)
{
  result = *(this + 99);
  if (result == -1)
  {
    if (OZSceneSettings::dynamicRangeTrackingEnabled((this + 336)))
    {
      if (*(this + 405))
      {
        return 5;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      RawWorkingGamut = OZScene::getRawWorkingGamut(this);

      return PCGetColorGamut(RawWorkingGamut);
    }
  }

  return result;
}

uint64_t OZScene::getRawWorkingGamut(OZScene *this)
{
  PCSharedMutex::lock_shared((this + 232));
  v2 = *(this + 98);
  PCSharedMutex::unlock_shared((this + 232));
  return v2;
}

void OZScene::setRawWorkingGamut(uint64_t a1, int a2)
{
  PCSharedMutex::lock((a1 + 232));
  OZSceneSettings::setRawWorkingGamut(a1 + 336, a2);
  PCSharedMutex::unlock((a1 + 232));
}

uint64_t OZScene::getWorkingColorDescription@<X0>(OZScene *this@<X0>, uint64_t a2@<X8>)
{
  ComputedWorkingGamut = OZScene::getComputedWorkingGamut(this);
  WorkingColorSpace = PCRenderModel::getWorkingColorSpace(this + 1816, ComputedWorkingGamut);
  SceneDynamicRange = OZScene::getSceneDynamicRange(this);
  SceneToneMapMethod = OZScene::getSceneToneMapMethod(this);
  return FxColorDescription::FxColorDescription(a2, WorkingColorSpace, SceneDynamicRange, &SceneToneMapMethod, 1);
}

uint64_t OZScene::getSceneDynamicRange(OZScene *this)
{
  result = OZSceneSettings::dynamicRangeTrackingEnabled((this + 336));
  if (result)
  {
    return (OZScene::getSanitizedViewGamut(this) & 0xFFFFFFFE) == 4;
  }

  return result;
}

unint64_t OZScene::getSceneToneMapMethod(OZScene *this)
{
  if (OZSceneSettings::dynamicRangeTrackingEnabled((this + 336)))
  {
    *v2.i32 = OZScene::getSceneWhiteLevel(this);
    WhiteGainForHLGLevel = PCColorUtil::getWhiteGainForHLGLevel(v3, v2);
    v5 = 5;
  }

  else
  {
    v5 = 0;
    LODWORD(WhiteGainForHLGLevel) = 0;
  }

  return v5 | (LODWORD(WhiteGainForHLGLevel) << 32);
}

float OZScene::getSceneWhiteLevel(OZScene *this)
{
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, 24);
  v11 = 1065353216;
  OZScene::begin_t<OZProjectNode,false,true>(this, v6);
  *v9 = v6[0];
  *&v9[9] = *(v6 + 9);
  v11 = v8;
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(v10, v7[2], 0);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v7);
  v1 = 0.75;
  if (*v9 != *&v9[16])
  {
    v2 = *(*v9 + 16);
    if (v2)
    {
      if (v3)
      {
        OZProjectNode::getHDRWhiteLevel(v3);
        v1 = v4;
      }
    }
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v10);
  return v1;
}

float OZScene::getBlendingGamma(OZScene *this)
{
  ComputedWorkingGamut = OZScene::getComputedWorkingGamut(this);

  return PCRenderModel::getBlendingGamma(this + 1816, ComputedWorkingGamut);
}

float non-virtual thunk toOZScene::getBlendingGamma(OZScene *this)
{
  ComputedWorkingGamut = OZScene::getComputedWorkingGamut((this - 8));

  return PCRenderModel::getBlendingGamma(this + 1808, ComputedWorkingGamut);
}

void OZScene::computeLockDependencies(OZScene *this)
{
  v2 = *(this + 188);
  if (v2)
  {
    OZChannelBase::setRangeName(v2, 1);
  }

  PCSharedMutex::lock((this + 40));
  v3 = *(this + 223);
  v4 = *(this + 224);
  if (v3 != v4)
  {
    do
    {
      if (*v3)
      {
        OZLockingGroup::~OZLockingGroup(*v3);
        MEMORY[0x2666E9F00]();
      }

      ++v3;
    }

    while (v3 != v4);
    v3 = *(this + 223);
  }

  *(this + 224) = v3;
  OZScene::buildLockDependencyGraphForScene(this, v5);
  OZScene::buildLockingGroups(this, v5);
  v7 = &v6;
  std::vector<std::vector<Vec3f>>::__destroy_vector::operator()[abi:ne200100](&v7);
  std::__tree<std::__value_type<OZLocking *,std::set<OZLocking *>>,std::__map_value_compare<OZLocking *,std::__value_type<OZLocking *,std::set<OZLocking *>>,std::less<OZLocking *>,true>,std::allocator<std::__value_type<OZLocking *,std::set<OZLocking *>>>>::destroy(v5, v5[1]);
  PCSharedMutex::unlock((this + 40));
}

void sub_26010A3A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCDirectedGraph<OZLocking *>::~PCDirectedGraph(va);
  PCSharedMutex::unlock((v2 + 40));
  _Unwind_Resume(a1);
}

uint64_t OZScene::buildLockDependencyGraphForScene@<X0>(OZScene *this@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  *a2 = a2 + 1;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  v3 = *(this + 151);
  memset(v12, 0, sizeof(v12));
  v13 = 1065353216;
  v9[0] = v3;
  v9[1] = v3;
  v10 = this + 1200;
  v11 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 1065353216;
  v6 = this + 1200;
  while (v9[0] != v6)
  {
    if (v9[0] == v10)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(v9[0] + 16);
    }

    OZScene::addLockDependencyGraphForSceneNode(this, a2, v4);
    LODWORD(this) = OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(v9);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v7);
  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v12);
}

void sub_26010A498(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v3 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v2 + 32);
  PCDirectedGraph<OZLocking *>::~PCDirectedGraph(v1);
  _Unwind_Resume(a1);
}

void OZScene::buildLockingGroups(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = a2[4];
  if (v2 == v3)
  {
    PCDirectedGraph<OZLocking *>::findStronglyConnectedComponents(a2);
    v2 = a2[3];
    v3 = a2[4];
  }

  if (v2 != v3)
  {
    operator new();
  }
}

uint64_t PCDirectedGraph<OZLocking *>::~PCDirectedGraph(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::vector<Vec3f>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__tree<std::__value_type<OZLocking *,std::set<OZLocking *>>,std::__map_value_compare<OZLocking *,std::__value_type<OZLocking *,std::set<OZLocking *>>,std::less<OZLocking *>,true>,std::allocator<std::__value_type<OZLocking *,std::set<OZLocking *>>>>::destroy(a1, *(a1 + 8));
  return a1;
}

void OZScene::addLockDependencyGraphForSceneNode(int a1, uint64_t a2, char *lpsrc)
{
  v5 = lpsrc + 1000;
  v6 = *(lpsrc + 126);
  if (v6 == lpsrc + 1000)
  {
    goto LABEL_7;
  }

  do
  {
    v7 = *(v6 + 2);
    if (v7)
    {
      if (v8)
      {
        v9 = v8;
        OZLocking::reset(v8);
        v13 = 0;
        v14 = 0;
        v12 = &v13;
        (*(*v9 + 48))(v9, 0, a2, &v12);
        std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v12, v13);
      }
    }

    v6 = *(v6 + 1);
  }

  while (v6 != v5);
  if (lpsrc)
  {
LABEL_7:
    if (v10)
    {
      v11 = v10;
      OZLocking::reset(v10);
      v13 = 0;
      v14 = 0;
      v12 = &v13;
      (*(*v11 + 48))(v11, 0, a2, &v12);
      std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v12, v13);
    }
  }
}

void OZScene::render(OZScene *this, OZRenderParams *a2)
{
  exception = __cxa_allocate_exception(0x40uLL);
  PCString::PCString(&v3, "function deprecated");
  PCException::PCException(exception, &v3);
  *exception = &unk_2871F6178;
}

void std::__tree<OZGuide>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<OZGuide>::destroy(a1, *a2);
    std::__tree<OZGuide>::destroy(a1, a2[1]);
    (*a2[4])();

    operator delete(a2);
  }
}

void PCRenderModel::PCRenderModel(PCRenderModel *this, const PCRenderModel *a2)
{
  *this = *a2;
  v4 = *(a2 + 1);
  *(this + 1) = v4;
  if (v4)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v4);
  }

  v5 = *(a2 + 2);
  *(this + 2) = v5;
  if (v5)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v5);
  }

  *(this + 3) = *(a2 + 3);
}

void sub_26010AB6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<PCMutex>::shared_ptr[abi:ne200100]<PCMutex,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<PCMutex *,std::shared_ptr<PCMutex>::__shared_ptr_default_delete<PCMutex,PCMutex>,std::allocator<PCMutex>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<PCMutex *,std::shared_ptr<PCMutex>::__shared_ptr_default_delete<PCMutex,PCMutex>,std::allocator<PCMutex>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__tree<std::__value_type<OZLocking *,std::set<OZLocking *>>,std::__map_value_compare<OZLocking *,std::__value_type<OZLocking *,std::set<OZLocking *>>,std::less<OZLocking *>,true>,std::allocator<std::__value_type<OZLocking *,std::set<OZLocking *>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<OZLocking *,std::set<OZLocking *>>,std::__map_value_compare<OZLocking *,std::__value_type<OZLocking *,std::set<OZLocking *>>,std::less<OZLocking *>,true>,std::allocator<std::__value_type<OZLocking *,std::set<OZLocking *>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<OZLocking *,std::set<OZLocking *>>,std::__map_value_compare<OZLocking *,std::__value_type<OZLocking *,std::set<OZLocking *>>,std::less<OZLocking *>,true>,std::allocator<std::__value_type<OZLocking *,std::set<OZLocking *>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void *OZObject::iterator_t<OZImageElement,false,true,OZObject::defaultValidator>::increment(void *result)
{
  v1 = result;
  v2 = result + 2;
  v3 = *result;
  if (*result == result[2])
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 16);
  if ((*(*v4 + 1056))(v4))
  {
    v5 = *v1;
    v13 = v4;
    v14 = &v13;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(v1 + 4, &v13)[3] = v5;
    result = (*(*v4 + 1104))(v4);
    *v1 = result;
    *(v1 + 24) = 1;
    return result;
  }

  if ((*(*v4 + 960))(v4))
  {
    v6 = *v1;
    v13 = v4;
    v14 = &v13;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(v1 + 4, &v13)[3] = v6;
    result = (*(*v4 + 1024))(v4);
    *v1 = result;
    return result;
  }

  v7 = *(*v1 + 8);
  result = v4[120];
  if (!result || v7 == *v2)
  {
    *v1 = v7;
    return result;
  }

  v8 = *result;
  if (*(v1 + 24) == 1)
  {
    result = (*(v8 + 1112))();
  }

  else
  {
    result = (*(v8 + 1032))();
  }

  if (v7 != result)
  {
LABEL_13:
    v3 = *v1;
LABEL_14:
    *v1 = *(v3 + 8);
    return result;
  }

  if (*(v1 + 24) == 1 && (result = (*(*v4[120] + 960))(v4[120]), result))
  {
    result = (*(*v4[120] + 1024))(v4[120]);
    *v1 = result;
    *(v1 + 24) = 0;
  }

  else
  {
    *(v1 + 24) = 0;
    while (1)
    {
      v4 = v4[120];
      if (!v4)
      {
        break;
      }

      v14 = v4;
      v9 = std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::find<OZSceneNode *>(v1 + 4, &v14);
      v10 = v9 + 3;
      if (!v9)
      {
        v10 = v2;
      }

      v11 = *v10;
      *v1 = v11;
      result = v4[120];
      if (result)
      {
        v12 = *(v11 + 8);
        result = (*(*result + 1032))(result);
        if (v12 == result && v12 != *v2)
        {
          continue;
        }
      }

      goto LABEL_13;
    }
  }

  return result;
}

uint64_t OZObject::iterator_t<OZProjectNode,false,true,OZObject::defaultValidator>::typeCheck(void *a1)
{
  if (*a1 == a1[2])
  {
    return 1;
  }

  result = *(*a1 + 16);
  if (result)
  {
  }

  return result;
}

void *OZObject::iterator_t<OZSceneNode,false,true,OZSoloNodeValidator>::increment(void *result, OZSceneNode *a2)
{
  v2 = result;
  v3 = result + 2;
  v4 = *result;
  if (*result == result[2])
  {
    goto LABEL_17;
  }

  v5 = *(v4 + 16);
  v6 = OZSoloNodeValidator::recurseInto(v5, a2);
  if ((*(*v5 + 1056))(v5))
  {
    v7 = !v6;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v9 = *v2;
    v16 = v5;
    v17 = &v16;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(v2 + 4, &v16)[3] = v9;
    result = (*(*v5 + 1104))(v5);
    *v2 = result;
    *(v2 + 24) = 1;
    return result;
  }

  if (((*(*v5 + 960))(v5) & v6) == 1)
  {
    v8 = *v2;
    v16 = v5;
    v17 = &v16;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(v2 + 4, &v16)[3] = v8;
    result = (*(*v5 + 1024))(v5);
    *v2 = result;
    return result;
  }

  v10 = *(*v2 + 8);
  result = *(v5 + 120);
  if (!result || v10 == *v3)
  {
    *v2 = v10;
    return result;
  }

  v11 = *result;
  if (*(v2 + 24) == 1)
  {
    result = (*(v11 + 1112))();
  }

  else
  {
    result = (*(v11 + 1032))();
  }

  if (v10 != result)
  {
LABEL_16:
    v4 = *v2;
LABEL_17:
    *v2 = *(v4 + 8);
    return result;
  }

  if (*(v2 + 24) == 1 && (result = (*(**(v5 + 120) + 960))(*(v5 + 120)), (result & v6) == 1))
  {
    result = (*(**(v5 + 120) + 1024))(*(v5 + 120));
    *v2 = result;
    *(v2 + 24) = 0;
  }

  else
  {
    *(v2 + 24) = 0;
    while (1)
    {
      v5 = *(v5 + 120);
      if (!v5)
      {
        break;
      }

      v17 = v5;
      v12 = std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::find<OZSceneNode *>(v2 + 4, &v17);
      v13 = v12 + 3;
      if (!v12)
      {
        v13 = v3;
      }

      v14 = *v13;
      *v2 = v14;
      result = *(v5 + 120);
      if (result)
      {
        v15 = *(v14 + 8);
        result = (*(*result + 1032))(result);
        if (v15 == result && v15 != *v3)
        {
          continue;
        }
      }

      goto LABEL_16;
    }
  }

  return result;
}

uint64_t OZObject::iterator_t<OZAudioLayer,false,true,OZObject::defaultValidator>::typeCheck(void *a1)
{
  if (*a1 == a1[2])
  {
    return 1;
  }

  result = *(*a1 + 16);
  if (result)
  {
  }

  return result;
}

uint64_t *std::__tree<unsigned int>::erase(uint64_t **a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(a1, v4);
      operator delete(v4);
      v4 = v6;
    }

    while (v6 != a3);
  }

  return a3;
}

uint64_t std::__tree<unsigned int>::__erase_unique<unsigned int>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 28);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 28))
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

void std::vector<std::pair<OZSceneNode *,PCVector3<double>>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 32 * a2);
      v5 += 32 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 5;
    v9 = v4 - *a1;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v15 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<OZSceneNode *,PCVector3<double>>>>(a1, v10);
    }

    __p = 0;
    v12 = 32 * v8;
    v14 = 0;
    bzero((32 * v8), 32 * a2);
    v13 = 32 * v8 + 32 * a2;
    std::vector<std::pair<OZSceneNode *,PCVector3<double>>>::__swap_out_circular_buffer(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 31) & 0xFFFFFFFFFFFFFFE0;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_26010B66C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::pair<OZSceneNode *,PCVector3<double>>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      *v6 = *v5;
      *(v6 + 8) = *(v5 + 8);
      *(v6 + 24) = *(v5 + 24);
      v5 += 32;
      v6 += 32;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<OZSceneNode *,PCVector3<double>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,OZObjectManipulator *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,OZObjectManipulator *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,OZObjectManipulator *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,OZObjectManipulator *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,OZObjectManipulator *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,OZObjectManipulator *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,OZObjectManipulator *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,OZObjectManipulator *>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void std::__tree<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::__map_value_compare<OZChannelObjectRoot *,std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::less<OZChannelObjectRoot *>,true>,std::allocator<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::__map_value_compare<OZChannelObjectRoot *,std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::less<OZChannelObjectRoot *>,true>,std::allocator<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::__map_value_compare<OZChannelObjectRoot *,std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::less<OZChannelObjectRoot *>,true>,std::allocator<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>>>::destroy(a1, a2[1]);
    v4 = a2[18];
    if (v4)
    {
      a2[19] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<OZTimeMarker>::find<OZTimeMarker>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = OZTimeMarker::operator<(v3 + 32, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || OZTimeMarker::operator<(a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

uint64_t std::__tree<OZTimeMarker>::__emplace_unique_key_args<OZTimeMarker,OZTimeMarker const&>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<OZTimeMarker>::__find_equal<OZTimeMarker>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<OZTimeMarker>::__construct_node<OZTimeMarker const&>();
  }

  return v2;
}

void *std::__tree<OZTimeMarker>::__find_equal<OZTimeMarker>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!OZTimeMarker::operator<(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!OZTimeMarker::operator<((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<OZTimeMarker,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<OZTimeMarker,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      (*v2[4])();
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<PCHash128,PCMutexRef>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCMutexRef>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCMutexRef>>>::__emplace_unique_key_args<PCHash128,std::piecewise_construct_t const&,std::tuple<PCHash128 const&>,std::tuple<>>(uint64_t a1, const PCHash128 *a2)
{
  v2 = *std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::__find_equal<PCHash128>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<PCHash128,PCMutexRef>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCMutexRef>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCMutexRef>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(a1, a2);
  v4 = a2[7];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  operator delete(a2);
  return v3;
}

PCSharedCount *PCPtr<OZSceneCamera>::PCPtr<LiCamera>(PCSharedCount *a1, const PCSharedCount *a2)
{
  var0 = a2->var0;
  if (a2->var0)
  {
  }

  a1->var0 = var0;
  PCSharedCount::PCSharedCount(a1 + 1, a2 + 1);
  if (!a1->var0)
  {
    PCSharedCount::PCSharedCount(&v6);
    PCSharedCount::operator=(&a1[1], &v6);
    PCSharedCount::~PCSharedCount(&v6);
  }

  return a1;
}

void sub_26010BE70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount a10)
{
  PCSharedCount::~PCSharedCount(&a10);
  PCSharedCount::~PCSharedCount(v10 + 1);
  _Unwind_Resume(a1);
}

uint64_t OZObject::all_iterator_t<OZRigBehavior,false,true,OZObject::defaultAllValidator>::typeCheck(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 < 2)
  {
    if (*a1 == *(a1 + 16))
    {
      return 1;
    }

    result = *(*a1 + 16);
    if (!result)
    {
      return result;
    }

LABEL_11:
    v4 = -2;
  }

  if (v1 == 2)
  {
    result = *(*(a1 + 24) + 16);
    if (!result)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (v1 == 3)
  {
    result = *(*(a1 + 32) + 16);
    if (!result)
    {
      return result;
    }

    v4 = 0;
  }

  return 0;
}

void *OZObject::all_iterator_t<OZRigBehavior,false,true,OZObject::defaultAllValidator>::increment(void *result)
{
  v1 = result;
  v2 = result + 2;
  v3 = *result;
  if (*result == result[2])
  {
    v3 = *(v3 + 8);
    *result = v3;
  }

  v4 = 0;
  v5 = *(result + 10);
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_63;
      }

      v6 = *(v3 + 8);
      v27 = *(v3 + 16);
      v4 = v27;
      v28 = &v27;
      result = std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(result + 6, &v27);
      result[3] = v3;
      if (!v4[124])
      {
        if (!v4[127])
        {
          result = (*(*v4[120] + 1112))(v4[120]);
          if (v6 == result && v6 != *v2)
          {
            v7 = v4[120];
            if (!v7[124])
            {
              if (!v7[127])
              {
                *(v1 + 10) = 0;
LABEL_61:
                result = (*(*v7 + 960))(v7);
                if (!result)
                {
                  goto LABEL_63;
                }

                result = (*(*v4[120] + 1024))(v4[120]);
                *v1 = result;
                *(v1 + 10) = 0;
                return result;
              }

              goto LABEL_58;
            }

LABEL_54:
            v28 = v7;
            result = std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::find<OZSceneNode *>(v1 + 6, &v28);
            v22 = result + 3;
            if (!result)
            {
              v22 = v2;
            }

            *v1 = *v22;
            v13 = v7[123];
            goto LABEL_31;
          }

          goto LABEL_69;
        }

LABEL_42:
        v19 = v4[126];
LABEL_43:
        v1[4] = v19;
LABEL_44:
        v10 = 3;
        goto LABEL_45;
      }
    }

    else
    {
      v4 = *(v3 + 16);
      if (((*(*v4 + 960))(v4) & 1) == 0 && ((*(*v4 + 1056))(v4) & 1) == 0 && !v4[124] && !v4[127])
      {
        result = v4[120];
        if (result)
        {
          v21 = *v1;
          goto LABEL_67;
        }

        goto LABEL_69;
      }

      v9 = *v1;
      v27 = v4;
      v28 = &v27;
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(v1 + 6, &v27)[3] = v9;
      if ((*(*v4 + 960))(v4))
      {
        *v1 = (*(*v4 + 1024))(v4);
      }

      result = (*(*v4 + 1056))(v4);
      if (result)
      {
        result = (*(*v4 + 1104))(v4);
        *v1 = result;
        v10 = 1;
LABEL_45:
        *(v1 + 10) = v10;
        return result;
      }

      if (!v4[124])
      {
        if (!v4[127])
        {
          return result;
        }

        goto LABEL_42;
      }
    }

    v13 = v4[123];
LABEL_31:
    v1[3] = v13;
    v10 = 2;
    goto LABEL_45;
  }

  if (v5 == 2)
  {
    result = (*(**(result[3] + 16) + 248))(*(result[3] + 16));
    v4 = result;
    v11 = *(v1[3] + 8);
    v1[3] = v11;
    if (v11 != result + 122)
    {
      goto LABEL_63;
    }

    v12 = result[126];
    v1[4] = v12;
    if (v12 != result + 125)
    {
      goto LABEL_44;
    }
  }

  else if (v5 != 3 || (result = (*(**(result[4] + 16) + 320))(*(result[4] + 16)), v4 = result, v8 = *(v1[4] + 8), v1[4] = v8, v8 != result + 125))
  {
LABEL_63:
    while (1)
    {
      v4 = v4[120];
      if (!v4)
      {
        return result;
      }

      v28 = v4;
      v24 = std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::find<OZSceneNode *>(v1 + 6, &v28);
      v25 = v24 + 3;
      if (!v24)
      {
        v25 = v2;
      }

      v21 = *v25;
      *v1 = v21;
      result = v4[120];
      if (!result)
      {
        goto LABEL_69;
      }

LABEL_67:
      v26 = *(v21 + 8);
      result = (*(*result + 1032))(result);
      if (v26 != result || v26 == *v2)
      {
        goto LABEL_69;
      }
    }
  }

  *(v1 + 10) = 0;
  if ((*(*v4 + 960))(v4))
  {
    result = (*(*v4 + 1024))(v4);
    *v1 = result;
    return result;
  }

  v28 = v4;
  result = std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::find<OZSceneNode *>(v1 + 6, &v28);
  v14 = result + 3;
  if (!result)
  {
    v14 = v2;
  }

  v15 = *v14;
  *v1 = *v14;
  v16 = v1[2];
  if (v15 != v16)
  {
    v17 = v15[1];
    result = v4[120];
    if (result)
    {
      v18 = v17 == v16;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      *v1 = v17;
      return result;
    }

    v20 = *result;
    if ((v4[128] & 8) != 0)
    {
      result = (*(v20 + 1112))();
      if (v17 == result)
      {
        v7 = v4[120];
        if (!v7[124])
        {
          if (!v7[127])
          {
            goto LABEL_61;
          }

LABEL_58:
          v28 = v7;
          result = std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::find<OZSceneNode *>(v1 + 6, &v28);
          v23 = result + 3;
          if (!result)
          {
            v23 = v2;
          }

          *v1 = *v23;
          v19 = v7[126];
          goto LABEL_43;
        }

        goto LABEL_54;
      }

      *(v1 + 10) = 1;
    }

    else
    {
      result = (*(v20 + 1032))();
      if (v17 == result)
      {
        goto LABEL_63;
      }
    }

LABEL_69:
    *v1 = *(*v1 + 8);
  }

  return result;
}

char *std::vector<FFScheduleToken *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<FFScheduleToken **>,std::__wrap_iter<FFScheduleToken **>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void PCDirectedGraph<OZLocking *>::findStronglyConnectedComponents(void *a1)
{
  v19 = 0;
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  memset(v16, 0, sizeof(v16));
  v15[0] = 0;
  v15[1] = 0;
  v13[1] = 0;
  v14 = v15;
  v12 = v13;
  v13[0] = 0;
  v1 = a1 + 1;
  v2 = *a1;
  if (*a1 == a1 + 1)
  {
    v9 = 0;
  }

  else
  {
    do
    {
      v10 = v2[4];
      std::set<OZLocking *>::set[abi:ne200100](v11, (v2 + 5));
      for (i = v15[0]; i; i = *i)
      {
        v5 = i[4];
        if (v10 >= v5)
        {
          if (v5 >= v10)
          {
            goto LABEL_8;
          }

          ++i;
        }
      }

      PCDirectedGraph<OZLocking *>::dfs(a1, v10, &v19, &v17, v16, &v14, &v12);
LABEL_8:
      std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v11, v11[1]);
      v6 = v2[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v1);
    v9 = v13[0];
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v12, v9);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v14, v15[0]);
  std::deque<unsigned long>::~deque[abi:ne200100](v16);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v17, v18[0]);
}

void sub_26010C970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void *);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void *);
  v15 = va_arg(va2, void);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v5 + 8, a4);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(va, v10);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(va1, v14);
  std::deque<unsigned long>::~deque[abi:ne200100](va2);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v6 - 64, *(v6 - 56));
  _Unwind_Resume(a1);
}

void PCDirectedGraph<OZLocking *>::dfs(uint64_t a1, unint64_t a2, int *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v39 = a2;
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(a4, &v39);
  std::deque<OZLocking *>::push_back(a5, &v39);
  v13 = *a3 + 1;
  *a3 = v13;
  __p = &v39;
  *(std::__tree<std::__value_type<ProShade::SamplerNode const*,int>,std::__map_value_compare<ProShade::SamplerNode const*,std::__value_type<ProShade::SamplerNode const*,int>,std::less<ProShade::SamplerNode const*>,true>,std::allocator<std::__value_type<ProShade::SamplerNode const*,int>>>::__emplace_unique_key_args<ProShade::SamplerNode const*,std::piecewise_construct_t const&,std::tuple<ProShade::SamplerNode const*&&>,std::tuple<>>(a7, &v39) + 10) = v13;
  v14 = *a3;
  *(std::__tree<std::__value_type<ProShade::SamplerNode const*,int>,std::__map_value_compare<ProShade::SamplerNode const*,std::__value_type<ProShade::SamplerNode const*,int>,std::less<ProShade::SamplerNode const*>,true>,std::allocator<std::__value_type<ProShade::SamplerNode const*,int>>>::__emplace_unique_key_args<ProShade::SamplerNode const*,std::piecewise_construct_t const&,std::tuple<ProShade::SamplerNode const*&&>,std::tuple<>>(a6, &v39) + 10) = v14;
  v34 = a1;
  __p = &v39;
  v15 = std::__tree<std::__value_type<OZLocking *,std::set<OZLocking *>>,std::__map_value_compare<OZLocking *,std::__value_type<OZLocking *,std::set<OZLocking *>>,std::less<OZLocking *>,true>,std::allocator<std::__value_type<OZLocking *,std::set<OZLocking *>>>>::__emplace_unique_key_args<OZLocking *,std::piecewise_construct_t const&,std::tuple<OZLocking * const&>,std::tuple<>>(a1, &v39);
  v16 = v15[5];
  v17 = v15 + 6;
  if (v16 == v15 + 6)
  {
    goto LABEL_26;
  }

  do
  {
    v18 = v16[4];
    v38 = v18;
    v19 = *(a6 + 8);
    if (!v19)
    {
LABEL_7:
      PCDirectedGraph<OZLocking *>::dfs(v34);
      v21 = std::__tree<std::__value_type<ProShade::SamplerNode const*,int>,std::__map_value_compare<ProShade::SamplerNode const*,std::__value_type<ProShade::SamplerNode const*,int>,std::less<ProShade::SamplerNode const*>,true>,std::allocator<std::__value_type<ProShade::SamplerNode const*,int>>>::__emplace_unique_key_args<ProShade::SamplerNode const*,std::piecewise_construct_t const&,std::tuple<ProShade::SamplerNode const*&&>,std::tuple<>>(a7, &v39);
      __p = &v38;
      v22 = a7;
      goto LABEL_8;
    }

    while (1)
    {
      v20 = v19[4];
      if (v18 >= v20)
      {
        break;
      }

LABEL_6:
      v19 = *v19;
      if (!v19)
      {
        goto LABEL_7;
      }
    }

    if (v20 < v18)
    {
      ++v19;
      goto LABEL_6;
    }

    v28 = *(a4 + 8);
    if (!v28)
    {
      goto LABEL_12;
    }

    while (2)
    {
      v29 = v28[4];
      if (v18 < v29)
      {
LABEL_23:
        v28 = *v28;
        if (!v28)
        {
          goto LABEL_12;
        }

        continue;
      }

      break;
    }

    if (v29 < v18)
    {
      ++v28;
      goto LABEL_23;
    }

    v21 = std::__tree<std::__value_type<ProShade::SamplerNode const*,int>,std::__map_value_compare<ProShade::SamplerNode const*,std::__value_type<ProShade::SamplerNode const*,int>,std::less<ProShade::SamplerNode const*>,true>,std::allocator<std::__value_type<ProShade::SamplerNode const*,int>>>::__emplace_unique_key_args<ProShade::SamplerNode const*,std::piecewise_construct_t const&,std::tuple<ProShade::SamplerNode const*&&>,std::tuple<>>(a7, &v39);
    __p = &v38;
    v22 = a6;
LABEL_8:
    v23 = *(std::__tree<std::__value_type<ProShade::SamplerNode const*,int>,std::__map_value_compare<ProShade::SamplerNode const*,std::__value_type<ProShade::SamplerNode const*,int>,std::less<ProShade::SamplerNode const*>,true>,std::allocator<std::__value_type<ProShade::SamplerNode const*,int>>>::__emplace_unique_key_args<ProShade::SamplerNode const*,std::piecewise_construct_t const&,std::tuple<ProShade::SamplerNode const*&&>,std::tuple<>>(v22, &v38) + 10);
    if (v23 >= *(v21 + 10))
    {
      v24 = *(v21 + 10);
    }

    else
    {
      v24 = v23;
    }

    __p = &v39;
    *(std::__tree<std::__value_type<ProShade::SamplerNode const*,int>,std::__map_value_compare<ProShade::SamplerNode const*,std::__value_type<ProShade::SamplerNode const*,int>,std::less<ProShade::SamplerNode const*>,true>,std::allocator<std::__value_type<ProShade::SamplerNode const*,int>>>::__emplace_unique_key_args<ProShade::SamplerNode const*,std::piecewise_construct_t const&,std::tuple<ProShade::SamplerNode const*&&>,std::tuple<>>(a7, &v39) + 10) = v24;
LABEL_12:
    v25 = v16[1];
    if (v25)
    {
      do
      {
        v26 = v25;
        v25 = *v25;
      }

      while (v25);
    }

    else
    {
      do
      {
        v26 = v16[2];
        v27 = *v26 == v16;
        v16 = v26;
      }

      while (!v27);
    }

    v16 = v26;
  }

  while (v26 != v17);
LABEL_26:
  __p = &v39;
  v30 = *(std::__tree<std::__value_type<ProShade::SamplerNode const*,int>,std::__map_value_compare<ProShade::SamplerNode const*,std::__value_type<ProShade::SamplerNode const*,int>,std::less<ProShade::SamplerNode const*>,true>,std::allocator<std::__value_type<ProShade::SamplerNode const*,int>>>::__emplace_unique_key_args<ProShade::SamplerNode const*,std::piecewise_construct_t const&,std::tuple<ProShade::SamplerNode const*&&>,std::tuple<>>(a7, &v39) + 10);
  __p = &v39;
  if (v30 == *(std::__tree<std::__value_type<ProShade::SamplerNode const*,int>,std::__map_value_compare<ProShade::SamplerNode const*,std::__value_type<ProShade::SamplerNode const*,int>,std::less<ProShade::SamplerNode const*>,true>,std::allocator<std::__value_type<ProShade::SamplerNode const*,int>>>::__emplace_unique_key_args<ProShade::SamplerNode const*,std::piecewise_construct_t const&,std::tuple<ProShade::SamplerNode const*&&>,std::tuple<>>(a6, &v39) + 10))
  {
    __p = 0;
    v36 = 0;
    v37 = 0;
    while (1)
    {
      v31 = a5[5] + a5[4] - 1;
      v32 = (*(a5[1] + ((v31 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v31 & 0x1FF));
      if (*v32 == v39)
      {
        break;
      }

      std::vector<TXTabStop *>::push_back[abi:ne200100](&__p, v32);
      v33 = a5[5] + a5[4] - 1;
      std::__tree<OZLocking *>::__erase_unique<OZLocking *>(a4, (*(a5[1] + ((v33 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v33 & 0x1FF)));
      --a5[5];
      std::deque<unsigned long>::__maybe_remove_back_spare[abi:ne200100](a5, 1);
    }

    std::vector<TXTabStop *>::push_back[abi:ne200100](&__p, &v39);
    std::__tree<OZLocking *>::__erase_unique<OZLocking *>(a4, &v39);
    --a5[5];
    std::deque<unsigned long>::__maybe_remove_back_spare[abi:ne200100](a5, 1);
    std::vector<std::vector<OZLocking *>>::push_back[abi:ne200100](v34 + 24, &__p);
    if (__p)
    {
      v36 = __p;
      operator delete(__p);
    }
  }
}

void sub_26010CD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::set<OZLocking *>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<OZLocking *>::insert[abi:ne200100]<std::__tree_const_iterator<OZLocking *,std::__tree_node<OZLocking *,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<OZLocking *>::insert[abi:ne200100]<std::__tree_const_iterator<OZLocking *,std::__tree_node<OZLocking *,void *> *,long>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<OZLocking *>::__emplace_hint_unique_key_args<OZLocking *,OZLocking * const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<OZLocking *>::__emplace_hint_unique_key_args<OZLocking *,OZLocking * const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<OZLocking *>::__find_equal<OZLocking *>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<OZLocking *>::__find_equal<OZLocking *>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t std::vector<std::vector<OZLocking *>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<OZLocking *>>::__emplace_back_slow_path<std::vector<OZLocking *> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<OZLocking *>>::__construct_one_at_end[abi:ne200100]<std::vector<OZLocking *> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void *std::deque<OZLocking *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<OZLocking *>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<OZLocking *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<objc_class * {__strong}>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<PCStreamElement **>::emplace_back<PCStreamElement **&>(a1, &v10);
}

void sub_26010D2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<OZLocking *>>::__construct_one_at_end[abi:ne200100]<std::vector<OZLocking *> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<TXTabStop *>::__init_with_size[abi:ne200100]<TXTabStop **,TXTabStop **>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<OZLocking *>>::__emplace_back_slow_path<std::vector<OZLocking *> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<OZLocking *>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<TXTabStop *>::__init_with_size[abi:ne200100]<TXTabStop **,TXTabStop **>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(&v14);
  return v8;
}

void sub_26010D498(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<OZLocking *>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void OZLayeredMaterialSequenceFolder::OZLayeredMaterialSequenceFolder(OZLayeredMaterialSequenceFolder *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3, a4, 0);
  *v4 = &unk_287287730;
  *(v4 + 16) = &unk_287287A08;
  *(v4 + 56) &= ~0x10000uLL;
  OZChannelFolder::saveStateAsDefault(v4);
}

void OZLayeredMaterialSequenceFolder::OZLayeredMaterialSequenceFolder(OZLayeredMaterialSequenceFolder *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3, a4, a5, 0);
  *v6 = &unk_287287730;
  *(v6 + 2) = &unk_287287A08;
  *(v6 + 7) &= ~0x10000uLL;
  *(this + 1) = OZLayeredMaterialSequenceFolder_Factory::getInstance(v6);
  (*(*this + 128))(this);
}

uint64_t OZLayeredMaterialSequenceFolder_Factory::getInstance(OZLayeredMaterialSequenceFolder_Factory *this)
{
  if (atomic_load_explicit(&OZLayeredMaterialSequenceFolder_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZLayeredMaterialSequenceFolder_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZLayeredMaterialSequenceFolder_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZLayeredMaterialSequenceFolder_Factory::_instance;
}

void non-virtual thunk toOZLayeredMaterialSequenceFolder::~OZLayeredMaterialSequenceFolder(OZLayeredMaterialSequenceFolder *this)
{
  OZChannelFolder::~OZChannelFolder((this - 16));
}

{
  OZChannelFolder::~OZChannelFolder((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZLayeredMaterialSequenceFolder::~OZLayeredMaterialSequenceFolder(OZChannelFolder *this)
{
  OZChannelFolder::~OZChannelFolder(this);

  JUMPOUT(0x2666E9F00);
}

void *OZLayeredMaterialSequenceFolder::deleteLayerSequenceFolders(void *this)
{
  v1 = this[14];
  if (v1)
  {
    v2 = *v1;
    v3 = *(v1 + 8);
    if (*v1 != v3)
    {
      v4 = this;
      do
      {
        this = *v2;
        if (*v2)
        {
          this = (*(*this + 8))(this);
        }

        ++v2;
      }

      while (v2 != v3);
      v1 = v4[14];
      v2 = *v1;
    }

    *(v1 + 8) = v2;
  }

  return this;
}

uint64_t OZLayeredMaterialSequenceFolder::writeHeader(OZLayeredMaterialSequenceFolder *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZLayeredMaterialSequenceScope);
  (*(*a2 + 16))(a2, 110);
  (*(*a2 + 200))(a2, 110, this + 32);
  if (((*(*a2 + 232))(a2) & 1) == 0)
  {
    (*(*a2 + 144))(a2, 111, *(this + 6));
  }

  (*(*a2 + 160))(a2, 112, *(this + 7));
  if (((*(*a2 + 232))(a2) & 1) == 0)
  {
    v5 = OZFactory::fileRefID(*(this + 1), v4);
    (*(*a2 + 144))(a2, 113, v5);
  }

  return PCSerializerWriteStream::popScope(a2);
}

void OZLayeredMaterialSequenceFolder_Factory::OZLayeredMaterialSequenceFolder_Factory(OZLayeredMaterialSequenceFolder_Factory *this)
{
  v3 = xmmword_2603472C0;
  v4 = xmmword_26034A5A0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287287A78;
  *(this + 16) = &unk_287287B48;
}

void OZHeMatteNormalCompositeNode::~OZHeMatteNormalCompositeNode(HGNode *this)
{
  HgcMatteNormalComposite::~HgcMatteNormalComposite(this);

  HGObject::operator delete(v1);
}

void OZHeMatteInt8::~OZHeMatteInt8(HGNode *this)
{
  HgcMatteInt8::~HgcMatteInt8(this);

  HGObject::operator delete(v1);
}

void OZChannelMaterialLayerMap::OZChannelMaterialLayerMap(OZChannelMaterialLayerMap *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelMaterialLayerMap_Factory::getInstance(this);
  OZChannelImageWithOptions::OZChannelImageWithOptions(this, Instance, a2, a3, a4, a5);
  *this = &unk_287288070;
  *(this + 2) = &unk_2872883C8;
  PCURL::PCURL(&v12, @"Material Bump Map Type Enum");
  PCURL::PCURL(&v11, @"Material Bump Map Type Selection");
  OZChannelEnum::OZChannelEnum((this + 1584), 0, &v12, &v11, this, 0xCu, 0, 0, 0);
  PCString::~PCString(&v11);
  PCString::~PCString(&v12);
  PCURL::PCURL(&v12, @"Channel Map Transform Label");
  OZChannelMaterialMapTransform::OZChannelMaterialMapTransform((this + 1840), &v12, this, 7u, 0, 0);
  PCString::~PCString(&v12);
  PCURL::PCURL(&v12, @"Channel Map Invert Label");
  OZChannelBool::OZChannelBool((this + 5744), 0, &v12, this, 8u, 2u, 0, 0);
  PCString::~PCString(&v12);
  PCURL::PCURL(&v12, @"Material Wrap Around Enum");
  PCURL::PCURL(&v11, @"Material Wrap Around");
  OZChannelEnum::OZChannelEnum((this + 5896), 0, &v12, &v11, this, 9u, 0, 0, 0);
  PCString::~PCString(&v11);
  PCString::~PCString(&v12);
  PCURL::PCURL(&v12, @"Channel Map White Level");
  OZChannelDouble::OZChannelDouble((this + 6152), 1.0, &v12, this, 0xAu, 0, 0, 0);
  PCString::~PCString(&v12);
  PCURL::PCURL(&v12, @"Channel Map Black Level");
  OZChannelDouble::OZChannelDouble((this + 6304), 0.0, &v12, this, 0xBu, 0, 0, 0);
  PCString::~PCString(&v12);
  OZChannelMaterialLayerMap::init(this);
}

void sub_26010E460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  OZChannel::~OZChannel((v12 + 6304));
  OZChannel::~OZChannel((v12 + v15));
  OZChannelEnum::~OZChannelEnum((v12 + v14));
  OZChannelBool::~OZChannelBool((v12 + v13));
  OZChannelMaterialMapTransform::~OZChannelMaterialMapTransform((v12 + 1840));
  OZChannelEnum::~OZChannelEnum((v12 + 1584));
  OZChannelImageWithOptions::~OZChannelImageWithOptions(v12);
  _Unwind_Resume(a1);
}

void sub_26010E530(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x26010E4F0);
}

uint64_t OZChannelMaterialLayerMap_Factory::getInstance(OZChannelMaterialLayerMap_Factory *this)
{
  if (atomic_load_explicit(&OZChannelMaterialLayerMap_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelMaterialLayerMap_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelMaterialLayerMap_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelMaterialLayerMap_Factory::_instance;
}

OZChannelBase *OZChannelMaterialLayerMap::init(OZChannelMaterialLayerMap *this)
{
  OZChannelMoveableImage::setOffsetChannel(this + 136, (this + 624));
  OZChannel::setKeyframable((this + 320), 0);
  OZChannel::setSliderMax((this + 320), 100.0);
  OZChannel::setSliderMin((this + 6152), 0.0);
  OZChannel::setSliderMax((this + 6152), 1.0);
  OZChannel::setSliderMin((this + 6304), 0.0);
  OZChannel::setSliderMax((this + 6304), 1.0);
  OZChannelBase::setFlag((this + 624), 2, 0);
  LayeredMaterial = GetLayeredMaterial(this);
  OZChannelMaterialLayerMap::setImageChannelOffsetChannel(this, LayeredMaterial);
  result = OZChannelBase::setFlag((this + 1584), 2, 0);
  if (*(theApp + 81) == 1)
  {

    return OZChannelBase::setFlag((this + 136), 0x400000, 0);
  }

  return result;
}

void OZChannelMaterialLayerMap::OZChannelMaterialLayerMap(OZChannelMaterialLayerMap *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelImageWithOptions::OZChannelImageWithOptions(this, a2, a3, a4);
  *v5 = &unk_287288070;
  v5[2] = &unk_2872883C8;
  PCURL::PCURL(&v7, @"Material Bump Map Type Enum");
  PCURL::PCURL(&v6, @"Material Bump Map Type Selection");
  OZChannelEnum::OZChannelEnum((this + 1584), 0, &v7, &v6, this, 0xCu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Channel Map Transform Label");
  OZChannelMaterialMapTransform::OZChannelMaterialMapTransform((this + 1840), &v7, this, 7u, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Channel Map Invert Label");
  OZChannelBool::OZChannelBool((this + 5744), 0, &v7, this, 8u, 2u, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Material Wrap Around Enum");
  PCURL::PCURL(&v6, @"Material Wrap Around");
  OZChannelEnum::OZChannelEnum((this + 5896), 0, &v7, &v6, this, 9u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Channel Map White Level");
  OZChannelDouble::OZChannelDouble((this + 6152), 1.0, &v7, this, 0xAu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Channel Map Black Level");
  OZChannelDouble::OZChannelDouble((this + 6304), 0.0, &v7, this, 0xBu, 0, 0, 0);
  PCString::~PCString(&v7);
  OZChannelMaterialLayerMap::init(this);
}

void sub_26010E954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  OZChannel::~OZChannel((v12 + 6304));
  OZChannel::~OZChannel((v12 + v15));
  OZChannelEnum::~OZChannelEnum((v12 + v14));
  OZChannelBool::~OZChannelBool((v12 + v13));
  OZChannelMaterialMapTransform::~OZChannelMaterialMapTransform((v12 + 1840));
  OZChannelEnum::~OZChannelEnum((v12 + 1584));
  OZChannelImageWithOptions::~OZChannelImageWithOptions(v12);
  _Unwind_Resume(a1);
}

void sub_26010EA24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x26010E9E4);
}

void OZChannelMaterialLayerMap::OZChannelMaterialLayerMap(OZChannelMaterialLayerMap *this, const OZChannelMaterialLayerMap *a2, OZChannelFolder *a3)
{
  OZChannelImageWithOptions::OZChannelImageWithOptions(this, a2, a3);
  *v5 = &unk_287288070;
  v5[2] = &unk_2872883C8;
  OZChannelEnum::OZChannelEnum((v5 + 198), (a2 + 1584), this);
  OZChannelMaterialMapTransform::OZChannelMaterialMapTransform((this + 1840), (a2 + 1840), this);
  OZChannelBool::OZChannelBool((this + 5744), (a2 + 5744), this);
  OZChannelEnum::OZChannelEnum((this + 5896), (a2 + 5896), this);
  OZChannel::OZChannel((this + 6152), (a2 + 6152), this);
  *(this + 769) = &unk_287245C60;
  *(this + 771) = &unk_287245FC0;
  OZChannel::OZChannel((this + 6304), (a2 + 6304), this);
  *(this + 788) = &unk_287245C60;
  *(this + 790) = &unk_287245FC0;
  (*(*this + 232))(this, a2, 1);
}

void sub_26010EBEC(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v3);
  OZChannel::~OZChannel(v2);
  OZChannelEnum::~OZChannelEnum((v1 + v5));
  OZChannelBool::~OZChannelBool((v1 + v4));
  OZChannelMaterialMapTransform::~OZChannelMaterialMapTransform((v1 + 1840));
  OZChannelEnum::~OZChannelEnum((v1 + 1584));
  OZChannelImageWithOptions::~OZChannelImageWithOptions(v1);
  _Unwind_Resume(a1);
}

void *GetLayeredMaterial(OZChannelBase *a1)
{
  result = OZChannelBase::getObjectManipulator(a1);
  if (result)
  {
  }

  return result;
}

uint64_t OZChannelMaterialLayerMap::copy(OZChannelMaterialLayerMap *this, const OZChannelBase *a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  OZChannelImageWithOptions::copy(this, a2, a3);
  if (v4)
  {
  }

  OZChannelEnum::copy(this + 198, (v4 + 1584), v3);
  OZChannelMaterialMapTransform::copy((this + 1840), (v4 + 1840), v3);
  OZChannel::copy((this + 5744), (v4 + 5744), v3);
  OZChannelEnum::copy(this + 737, (v4 + 5896), v3);
  OZChannel::copy((this + 6152), (v4 + 6152), v3);
  OZChannel::copy((this + 6304), (v4 + 6304), v3);
  LayeredMaterial = GetLayeredMaterial(this);

  return OZChannelMaterialLayerMap::setImageChannelOffsetChannel(this, LayeredMaterial);
}

uint64_t OZChannelMaterialLayerMap::setImageChannelOffsetChannel(OZChannelMaterialLayerMap *this, OZLayeredMaterial *a2)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 1968), MEMORY[0x277CC08F0], 0.0);
  if (a2 && ValueAsInt)
  {
    v5 = (a2 + 2720);
  }

  else
  {
    v5 = (*(*this + 832))(this);
  }

  return OZChannelMoveableImage::setOffsetChannel(this + 136, v5);
}

uint64_t OZChannelMaterialLayerMap::parseEnd(OZChannelMaterialLayerMap *this, PCSerializerReadStream *a2)
{
  v3 = OZChannelImageWithOptions::parseEnd(this, a2);
  LayeredMaterial = GetLayeredMaterial(this);
  OZChannelMaterialLayerMap::setImageChannelOffsetChannel(this, LayeredMaterial);
  if (*(theApp + 81) == 1)
  {
    OZChannelBase::setFlag((this + 136), 0x400000, 0);
  }

  return v3;
}

uint64_t OZChannelMaterialLayerMap::willSetSharedTransform(OZChannelMaterialLayerMap *this, double a2, OZLayeredMaterial *a3)
{
  if (a2 != 1.0 || a3 == 0)
  {
    v5 = (*(*this + 832))(this, a3);
  }

  else
  {
    v5 = (a3 + 2720);
  }

  return OZChannelMoveableImage::setOffsetChannel(this + 136, v5);
}

void non-virtual thunk toOZChannelMaterialLayerMap::~OZChannelMaterialLayerMap(OZChannelMaterialLayerMap *this)
{
  OZChannelMaterialLayerMap::~OZChannelMaterialLayerMap((this - 16));
}

{
  OZChannelMaterialLayerMap::~OZChannelMaterialLayerMap((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChannelMaterialLayerMap_Factory::OZChannelMaterialLayerMap_Factory(OZChannelMaterialLayerMap_Factory *this)
{
  v3 = xmmword_2608508F0;
  v4 = xmmword_260851120;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287288438;
  *(this + 16) = &unk_287288508;
}

CGColorSpace **OZRotoshape::closeCurve(OZRotoshape *this)
{
  v5 = **&MEMORY[0x277CC08F0];
  v2 = this + 200;
  if ((*(*(this + 25) + 272))(this + 200))
  {
    v3 = (*(*v2 + 272))(v2);
    OZScene::getCurrentTime(v3, &v5);
  }

  return OZShape::closeCurve((this + 18976), &v5);
}

CGColorSpace **OZRotoshape::finishCurve(OZRotoshape *this)
{
  v5 = **&MEMORY[0x277CC08F0];
  v2 = this + 200;
  if ((*(*(this + 25) + 272))(this + 200))
  {
    v3 = (*(*v2 + 272))(v2);
    OZScene::getCurrentTime(v3, &v5);
  }

  return OZMoShape::finishCurve((this + 18976), &v5);
}

uint64_t OZMaterialGenericSubstanceIF::selection(OZMaterialGenericSubstanceIF *this)
{
  v1 = (*(*this + 72))(this);
  v2 = MEMORY[0x277CC08F0];

  return OZChannel::getValueAsInt(v1, v2, 0.0);
}

uint64_t OZMaterialGenericSubstanceIF::getColor(OZMaterialGenericSubstanceIF *this, const CMTime *a2, PCColor *a3)
{
  v3 = *(*(*(*this + 32))(this) + 824);
  v4.n128_u64[0] = 0;

  return v3(v4);
}

uint64_t OZGetNewFontID(const __CFString *a1)
{
  v2 = OZGetNewFontID(__CFString const*)::ID++;
  if (CFStringCompare(a1, @"MarkerFelt-Wide", 0) && CFStringCompare(a1, @"AmericanTypewriter", 0) && CFStringCompare(a1, @"Cracked", 0) && CFStringCompare(a1, @"PortagoITCTT", 0) && CFStringCompare(a1, @"BodoniOrnamentsITCTT", 0) && CFStringCompare(a1, @"Webdings", 0) && CFStringCompare(a1, @"Wingdings-Regular", 0))
  {
    CFStringCompare(a1, @"ACaslonPro-Regular", 0);
  }

  return v2;
}

void OZFontManagerBase::OZFontManagerBase(OZFontManagerBase *this)
{
  *this = &unk_2872885A8;
  *(this + 8) = 0u;
  *(this + 6) = 0;
  *(this + 5) = this + 48;
  *(this + 7) = 0;
  *(this + 24) = 0u;
  PCMutex::PCMutex((this + 64), 1);
  *(this + 8) = &unk_2871D83A0;
  *(this + 136) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
}

void sub_26010F7FC(_Unwind_Exception *a1)
{
  v5 = v3;
  std::__tree<std::__value_type<PCString,std::shared_ptr<OZFontFace>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::shared_ptr<OZFontFace>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::shared_ptr<OZFontFace>>>>::destroy(v2, *v4);
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 16) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void OZFontManagerBase::~OZFontManagerBase(OZFontManagerBase *this)
{
  *this = &unk_2872885A8;
  SystemFonts = OZFontManagerBase::getSystemFonts(this);
  if (SystemFonts)
  {
    v3 = *(SystemFonts + 16);
    v4 = (SystemFonts + 24);
    if (v3 != (SystemFonts + 24))
    {
      do
      {
        PCString::PCString(&v14, v3 + 4);
        var0 = v3[5].var0;
        v15 = var0;
        if (var0)
        {
          OZFontFamily::~OZFontFamily(var0);
          MEMORY[0x2666E9F00]();
        }

        v15 = 0;
        PCString::~PCString(&v14);
        v6 = v3[1].var0;
        if (v6)
        {
          do
          {
            v7 = v6;
            v6 = v6->isa;
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = v3[2].var0;
            v8 = v7->isa == v3;
            v3 = v7;
          }

          while (!v8);
        }

        v3 = v7;
      }

      while (v7 != v4);
    }
  }

  v9 = *(this + 1);
  for (i = *(this + 2); v9 != i; ++v9)
  {
    v11 = *v9;
    if (*v9)
    {
      std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::destroy(v11 + 16, *(v11 + 24));
      PCString::~PCString((v11 + 8));
      PCString::~PCString(v11);
      MEMORY[0x2666E9F00]();
    }
  }

  v12 = *(this + 19);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  PCMutex::~PCMutex((this + 64));
  std::__tree<std::__value_type<PCString,std::shared_ptr<OZFontFace>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::shared_ptr<OZFontFace>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::shared_ptr<OZFontFace>>>>::destroy(this + 40, *(this + 6));
  v13 = *(this + 1);
  if (v13)
  {
    *(this + 2) = v13;
    operator delete(v13);
  }
}

uint64_t OZFontManagerBase::getSystemFonts(OZFontManagerBase *this)
{
  PCMutex::lock((this + 64));
  v2 = *(this + 4);
  PCMutex::unlock((this + 64));
  return v2;
}

uint64_t OZFontManagerBase::addFontFace(uint64_t a1, uint64_t *a2)
{
  v4 = (a1 + 64);
  PCMutex::lock((a1 + 64));
  v11 = (*(**a2 + 16))(*a2, v5);
  v6 = std::__tree<std::__value_type<PCString,std::shared_ptr<OZFontFace>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::shared_ptr<OZFontFace>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::shared_ptr<OZFontFace>>>>::__emplace_unique_key_args<PCString,std::piecewise_construct_t const&,std::tuple<PCString const&>,std::tuple<>>((a1 + 40), v11);
  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  data = v6[1].data;
  v6[1].info = v8;
  v6[1].data = v7;
  if (data)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](data);
  }

  return PCMutex::unlock(v4);
}

uint64_t OZFontManagerBase::purgeCachedFonts(OZFontManagerBase *this)
{
  PCMutex::lock((this + 64));
  v2 = *(this + 5);
  if (v2 != (this + 48))
  {
    do
    {
      v3 = *(v2 + 6);
      if (v3 && !*(v3 + 8))
      {
        v5 = std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(this + 5, v2);
        std::__destroy_at[abi:ne200100]<std::pair<PCString const,std::shared_ptr<OZFontFace>>,0>(v2 + 4);
        operator delete(v2);
      }

      else
      {
        v4 = *(v2 + 1);
        if (v4)
        {
          do
          {
            v5 = v4;
            v4 = *v4;
          }

          while (v4);
        }

        else
        {
          do
          {
            v5 = *(v2 + 2);
            v6 = *v5 == v2;
            v2 = v5;
          }

          while (!v6);
        }
      }

      v2 = v5;
    }

    while (v5 != (this + 48));
  }

  return PCMutex::unlock((this + 64));
}

uint64_t OZFontManagerBase::getFontFace@<X0>(const PCString *this@<X0>, PCString *a2@<X1>, __CFString **a3@<X8>)
{
  v6 = &this[8];
  PCMutex::lock(&this[8]);
  v7 = std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::find<PCString>(this + 5, a2);
  if (&this[6] == v7)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    var0 = v7[6].var0;
    *a3 = v7[5].var0;
    a3[1] = var0;
    if (var0)
    {
      atomic_fetch_add_explicit(&var0->info, 1uLL, memory_order_relaxed);
    }
  }

  return PCMutex::unlock(v6);
}

uint64_t OZFontManager::getInstance(OZFontManager *this)
{
  if (OZFontManager::getInstance(void)::once != -1)
  {
    OZFontManager::getInstance();
  }

  return OZFontManager::_instance;
}

void OZFontManager::OZFontManager(OZFontManager *this)
{
  OZFontManagerBase::OZFontManagerBase(this);
  PCSingleton::PCSingleton((v2 + 160), 0);
  *this = &unk_287288620;
  *(this + 20) = &unk_287288678;
}

uint64_t OZFontManager::cleanup(OZFontManager *this)
{
  result = OZFontManager::_instance;
  if (OZFontManager::_instance)
  {
    result = (*(*OZFontManager::_instance + 8))(OZFontManager::_instance);
  }

  OZFontManager::_instance = 0;
  return result;
}

void OZFontManager::~OZFontManager(OZFontManager *this)
{
  PCSingleton::~PCSingleton((this + 160));

  OZFontManagerBase::~OZFontManagerBase(this);
}

{
  PCSingleton::~PCSingleton((this + 160));
  OZFontManagerBase::~OZFontManagerBase(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZFontManager::~OZFontManager(OZFontManager *this)
{
  v1 = (this - 160);
  PCSingleton::~PCSingleton(this);

  OZFontManagerBase::~OZFontManagerBase(v1);
}

{
  v1 = (this - 160);
  PCSingleton::~PCSingleton(this);
  OZFontManagerBase::~OZFontManagerBase(v1);

  JUMPOUT(0x2666E9F00);
}

void std::__tree<std::__value_type<PCString,std::shared_ptr<OZFontFace>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::shared_ptr<OZFontFace>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::shared_ptr<OZFontFace>>>>::destroy(uint64_t a1, PCString *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<PCString,std::shared_ptr<OZFontFace>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::shared_ptr<OZFontFace>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::shared_ptr<OZFontFace>>>>::destroy(a1, a2->var0);
    std::__tree<std::__value_type<PCString,std::shared_ptr<OZFontFace>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::shared_ptr<OZFontFace>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::shared_ptr<OZFontFace>>>>::destroy(a1, a2[1].var0);
    std::__destroy_at[abi:ne200100]<std::pair<PCString const,std::shared_ptr<OZFontFace>>,0>(a2 + 4);

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<PCString const,std::shared_ptr<OZFontFace>>,0>(PCString *this)
{
  var0 = this[2].var0;
  if (var0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](var0);
  }

  PCString::~PCString(this);
}

__CFString *std::__tree<std::__value_type<PCString,std::shared_ptr<OZFontFace>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::shared_ptr<OZFontFace>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::shared_ptr<OZFontFace>>>>::__emplace_unique_key_args<PCString,std::piecewise_construct_t const&,std::tuple<PCString const&>,std::tuple<>>(PCString *a1, PCString *this)
{
  var0 = std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::__find_equal<PCString>(a1, &v4, this)->var0;
  if (!var0)
  {
    std::__tree<std::__value_type<PCString,std::shared_ptr<OZFontFace>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::shared_ptr<OZFontFace>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::shared_ptr<OZFontFace>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<PCString const&>,std::tuple<>>();
  }

  return var0;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<PCString,std::shared_ptr<OZFontFace>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<PCString,std::shared_ptr<OZFontFace>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<PCString const,std::shared_ptr<OZFontFace>>,0>(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

void OZViewerState::OZViewerState(OZViewerState *this)
{
  *this = &unk_2872886E0;
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  *(this + 3) = 0;
  *(this + 12) = 0;
  PCSharedCount::PCSharedCount(this + 13);
  *(this + 14) = 0;
  PCSharedCount::PCSharedCount(this + 15);
  for (i = 0; i != 96; i += 16)
  {
    *(this + i + 128) = 0;
    PCSharedCount::PCSharedCount((this + i + 136));
  }

  *(this + 28) = 0;
  PCSharedCount::PCSharedCount(this + 29);
  PCSharedCount::PCSharedCount(this + 31);
  *(this + 260) = 0;
  *(this + 8) = 0;
  if (*(theApp + 80))
  {
    *(this + 36) = 0;
    *(this + 10) = 0;
    *(this + 48) = 0;
  }

  else
  {
    v4 = OZPreferenceManager::Instance(v3);
    DynamicResolution = OZPreferenceManager::getDynamicResolution(v4);
    v6 = *(theApp + 80);
    *(this + 36) = DynamicResolution;
    *(this + 10) = 0;
    *(this + 48) = 0;
    if ((v6 & 1) == 0)
    {
      v8 = OZPreferenceManager::Instance(DynamicResolution);
      OSCOptions = OZPreferenceManager::getOSCOptions(v8);
      v10 = *(theApp + 80);
      *(this + 13) = OSCOptions;
      if ((v10 & 1) == 0)
      {
        v11 = OZPreferenceManager::Instance(OSCOptions);
        OverlayOptions = OZPreferenceManager::getOverlayOptions(v11);
        v13 = *(theApp + 80);
        *(this + 14) = OverlayOptions;
        if ((v13 & 1) == 0)
        {
          v14 = OZPreferenceManager::Instance(OverlayOptions);
          ShowToolInfo = OZPreferenceManager::getShowToolInfo(v14);
          v16 = *(theApp + 80);
          *(this + 60) = ShowToolInfo;
          if (v16)
          {
            CompensateAspectRatio = 1;
          }

          else
          {
            v17 = OZPreferenceManager::Instance(ShowToolInfo);
            CompensateAspectRatio = OZPreferenceManager::getCompensateAspectRatio(v17);
          }

LABEL_9:
          *(this + 61) = CompensateAspectRatio;
          *(this + 8) = 0x200000002;
          *(this + 18) = 256;
          *(this + 76) = 0;
          *(this + 77) = 16843009;
          *(this + 81) = 0;
          operator new();
        }

LABEL_8:
        CompensateAspectRatio = 1;
        *(this + 60) = 1;
        goto LABEL_9;
      }

LABEL_7:
      *(this + 14) = 0;
      goto LABEL_8;
    }
  }

  *(this + 13) = 0;
  goto LABEL_7;
}

void sub_260110400(_Unwind_Exception *a1)
{
  PCString::~PCString((v1 + 248));
  PCSharedCount::~PCSharedCount((v1 + 232));
  v6 = (v1 + 216);
  v7 = -96;
  do
  {
    PCSharedCount::~PCSharedCount(v6);
    v6 = (v8 - 16);
    v7 += 16;
  }

  while (v7);
  PCSharedCount::~PCSharedCount(v3 + 1);
  PCSharedCount::~PCSharedCount((v1 + 104));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v2, *v4);
  _Unwind_Resume(a1);
}

void OZViewerState::OZViewerState(OZViewerState *this, const OZViewerState *a2)
{
  *this = &unk_2872886E0;
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  *(this + 3) = 0;
  *(this + 12) = 0;
  PCSharedCount::PCSharedCount(this + 13);
  *(this + 14) = 0;
  PCSharedCount::PCSharedCount(this + 15);
  for (i = 0; i != 96; i += 16)
  {
    *(this + i + 128) = 0;
    PCSharedCount::PCSharedCount((this + i + 136));
  }

  *(this + 28) = 0;
  PCSharedCount::PCSharedCount(this + 29);
  PCSharedCount::PCSharedCount(this + 31);
  *(this + 260) = 0;
  *(this + 8) = *(a2 + 8);
  *(this + 36) = *(a2 + 36);
  *(this + 10) = *(a2 + 10);
  *(this + 48) = *(a2 + 48);
  *(this + 52) = *(a2 + 52);
  *(this + 30) = *(a2 + 30);
  *(this + 8) = *(a2 + 8);
  *(this + 9) = *(a2 + 9);
  *(this + 40) = *(a2 + 40);
  operator new();
}

void sub_26011071C(_Unwind_Exception *a1)
{
  PCString::~PCString((v1 + 248));
  PCSharedCount::~PCSharedCount((v1 + 232));
  v6 = (v1 + 216);
  v7 = -96;
  do
  {
    PCSharedCount::~PCSharedCount(v6);
    v6 = (v8 - 16);
    v7 += 16;
  }

  while (v7);
  PCSharedCount::~PCSharedCount(v3 + 1);
  PCSharedCount::~PCSharedCount((v1 + 104));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v2, *v4);
  _Unwind_Resume(a1);
}

void *OZViewerState::getPanZoomSettings(uint64_t a1, int a2)
{
  v9 = a2;
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_8;
  }

  v4 = (a1 + 16);
  do
  {
    if (*(v2 + 32) >= a2)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a2));
  }

  while (v2);
  if (v4 == v3 || *(v4 + 8) > a2)
  {
LABEL_8:
    v10 = &v9;
    v5 = std::__tree<std::__value_type<OZViewCameraType,OZViewPanZoomSettings>,std::__map_value_compare<OZViewCameraType,std::__value_type<OZViewCameraType,OZViewPanZoomSettings>,std::less<OZViewCameraType>,true>,std::allocator<std::__value_type<OZViewCameraType,OZViewPanZoomSettings>>>::__emplace_unique_key_args<OZViewCameraType,std::piecewise_construct_t const&,std::tuple<OZViewCameraType const&>,std::tuple<>>(a1 + 8, &v9);
    v5[5] = 0x3FF0000000000000;
    *(v5 + 12) = 2;
    *(v5 + 17) = 0;
    *(v5 + 52) = v8;
    *(v5 + 72) = 1;
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_15;
    }

    v4 = v3;
    do
    {
      if (*(v6 + 32) >= v9)
      {
        v4 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < v9));
    }

    while (v6);
    if (v4 == v3 || v9 < *(v4 + 8))
    {
LABEL_15:
      v4 = v3;
    }
  }

  return v4 + 5;
}

uint64_t OZOrthoCamera::OZOrthoCamera(uint64_t a1, int a2, _OWORD *a3)
{
  *(a1 + 520) = &unk_2872DEA38;
  *(a1 + 528) = 0;
  *(a1 + 536) = 1;
  LiSimpleCamera::LiSimpleCamera(a1, &off_287288AB0);
  *a1 = &unk_287288758;
  *(a1 + 520) = &unk_287288A90;
  *(a1 + 464) = 0x3FF0000000000000;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = a2;
  *(a1 + 504) = *a3;
  LiSimpleCamera::setCameraModel(a1, 1);
  (*(*a1 + 512))(a1, 0.0);
  (*(*a1 + 288))(a1, a3);
  (*(*a1 + 768))(a1);
  return a1;
}

void sub_260110A44(_Unwind_Exception *a1)
{
  *(v1 + 520) = v2;
  *(v1 + 536) = 0;
  PCWeakCount::~PCWeakCount((v1 + 528));
  _Unwind_Resume(a1);
}

uint64_t OZViewerState::writeHeader(OZViewerState *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZViewerStateScope);
  (*(*a2 + 16))(a2, 83);
  (*(*a2 + 152))(a2, 9, *(this + 21));

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZViewerState::writeBody(OZViewerState *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZViewerStateScope);
  v4 = *(this + 8);
  (*(*a2 + 16))(a2, 3);
  (*(*a2 + 48))(a2, v4);
  (*(*a2 + 24))(a2);
  v5 = *(this + 36);
  (*(*a2 + 16))(a2, 52);
  (*(*a2 + 48))(a2, v5);
  (*(*a2 + 24))(a2);
  v6 = *(this + 10);
  if (v6 <= 1)
  {
    (*(*a2 + 16))(a2, 4);
    (*(*a2 + 48))(a2, v6);
    (*(*a2 + 24))(a2);
  }

  v7 = *(this + 14);
  (*(*a2 + 16))(a2, 5);
  (*(*a2 + 56))(a2, v7);
  (*(*a2 + 24))(a2);
  v8 = *(this + 13);
  (*(*a2 + 16))(a2, 6);
  (*(*a2 + 56))(a2, v8);
  (*(*a2 + 24))(a2);
  v9 = *(this + 61);
  (*(*a2 + 16))(a2, 7);
  (*(*a2 + 48))(a2, v9);
  (*(*a2 + 24))(a2);
  v10 = *(this + 75);
  (*(*a2 + 16))(a2, 9);
  (*(*a2 + 48))(a2, v10);
  (*(*a2 + 24))(a2);
  v11 = *(this + 76);
  (*(*a2 + 16))(a2, 10);
  (*(*a2 + 48))(a2, v11);
  (*(*a2 + 24))(a2);
  v12 = *(this + 77);
  (*(*a2 + 16))(a2, 11);
  (*(*a2 + 48))(a2, v12);
  (*(*a2 + 24))(a2);
  v13 = *(this + 78);
  (*(*a2 + 16))(a2, 8);
  (*(*a2 + 48))(a2, v13);
  (*(*a2 + 24))(a2);
  v14 = *(this + 79);
  (*(*a2 + 16))(a2, 26);
  (*(*a2 + 48))(a2, v14);
  (*(*a2 + 24))(a2);
  v15 = *(this + 80);
  (*(*a2 + 16))(a2, 27);
  (*(*a2 + 48))(a2, v15);
  (*(*a2 + 24))(a2);
  v16 = *(this + 81);
  (*(*a2 + 16))(a2, 28);
  (*(*a2 + 48))(a2, v16);
  (*(*a2 + 24))(a2);
  v17 = *(this + 88);
  (*(*a2 + 16))(a2, 16);
  (*(*a2 + 48))(a2, v17);
  (*(*a2 + 24))(a2);
  v18 = *(this + 16);
  (*(*a2 + 16))(a2, 17);
  (*(*a2 + 48))(a2, v18);
  (*(*a2 + 24))(a2);
  v19 = *(this + 17);
  (*(*a2 + 16))(a2, 20);
  (*(*a2 + 48))(a2, v19);
  (*(*a2 + 24))(a2);
  v20 = *(this + 72);
  (*(*a2 + 16))(a2, 21);
  (*(*a2 + 48))(a2, v20);
  (*(*a2 + 24))(a2);
  v21 = *(this + 73);
  (*(*a2 + 16))(a2, 22);
  (*(*a2 + 48))(a2, v21);
  (*(*a2 + 24))(a2);
  v22 = *(this + 74);
  (*(*a2 + 16))(a2, 23);
  (*(*a2 + 48))(a2, v22);
  (*(*a2 + 24))(a2);
  v23 = *(this + 60);
  (*(*a2 + 16))(a2, 29);
  (*(*a2 + 48))(a2, v23);
  (*(*a2 + 24))(a2);
  PCString::PCString(&v43, this + 31);
  (*(*a2 + 16))(a2, 30);
  (*(*a2 + 104))(a2, &v43);
  (*(*a2 + 24))(a2);
  PCString::~PCString(&v43);
  v24 = *(this + 258);
  (*(*a2 + 16))(a2, 53);
  (*(*a2 + 48))(a2, v24);
  (*(*a2 + 24))(a2);
  v41 = 0x3FF0000000000000uLL;
  v42 = 0uLL;
  v38 = 0.0;
  v39 = 0.0;
  v40 = 0.0;
  v25 = *(this + 14);
  if (!v25)
  {
    throw_PCNullPointerException(1);
  }

  (*(*v25 + 472))(v25, &v41);
  v26 = *(this + 14);
  if (!v26)
  {
    throw_PCNullPointerException(1);
  }

  (*(*v26 + 440))(v26, &v38);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v41, xmmword_2603426F0), vceqzq_f64(v42))))) & 1) != 0 || v38 != 0.0 || v39 != 0.0 || v40 != 1000.0)
  {
    writeCamera(a2, *(this + 14), 1);
  }

  v27 = (this + 128);
  v28 = -6;
  do
  {
    PCPtr<OZOrthoCamera>::PCPtr<LiSimpleCamera>(&v36, v27);
    if (v36 && (*(*v36 + 784))(v36))
    {
      writeCamera(a2, v36, (v28 + 8));
    }

    PCSharedCount::~PCSharedCount(&v37);
    v27 += 2;
  }

  while (!__CFADD__(v28++, 1));
  v30 = *(this + 1);
  v31 = this + 16;
  if (v30 != v31)
  {
    do
    {
      (*(*a2 + 16))(a2, 45);
      (*(*a2 + 152))(a2, 46, *(v30 + 8));
      (*(*a2 + 184))(a2, 47, v30[5]);
      (*(*a2 + 184))(a2, 49, v30[7]);
      (*(*a2 + 184))(a2, 50, v30[8]);
      (*(*a2 + 152))(a2, 48, *(v30 + 12));
      (*(*a2 + 152))(a2, 51, *(v30 + 72));
      (*(*a2 + 24))(a2);
      v32 = *(v30 + 1);
      if (v32)
      {
        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        do
        {
          v33 = *(v30 + 2);
          v34 = *v33 == v30;
          v30 = v33;
        }

        while (!v34);
      }

      v30 = v33;
    }

    while (v33 != v31);
  }

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t writeCamera(PCSerializerWriteStream *a1, LiSimpleCamera *a2, uint64_t a3)
{
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v10 = 1.0;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  (*(*a2 + 440))(a2, &v14);
  (*(*a2 + 472))(a2, &v10);
  (*(*a2 + 272))(v9, a2);
  v7 = *v9;
  v6 = *&v9[1];
  (*(*a1 + 16))(a1, 31);
  (*(*a1 + 152))(a1, 32, a3);
  (*(*a1 + 16))(a1, 33);
  (*(*a1 + 184))(a1, 34, v14);
  (*(*a1 + 184))(a1, 35, v15);
  (*(*a1 + 184))(a1, 36, v16);
  (*(*a1 + 24))(a1);
  (*(*a1 + 16))(a1, 37);
  (*(*a1 + 184))(a1, 38, v10);
  (*(*a1 + 184))(a1, 39, v11);
  (*(*a1 + 184))(a1, 40, v12);
  (*(*a1 + 184))(a1, 41, v13);
  (*(*a1 + 24))(a1);
  (*(*a1 + 16))(a1, 42);
  (*(*a1 + 184))(a1, 43, v7);
  (*(*a1 + 184))(a1, 44, v6);
  (*(*a1 + 24))(a1);
  (*(*a1 + 24))(a1);
  return (*(*a1 + 224))(a1);
}

uint64_t OZViewerState::parseEnd(OZViewerState *this, PCSerializerReadStream *a2)
{
  if (*(this + 256) == 1 && !*(this + 28) && PCString::empty(this + 31))
  {
    *(this + 256) = 0;
  }

  PCPtr<LiImageSource>::reset(this + 28);
  return 1;
}

uint64_t OZViewerState::parseElement(OZViewerState *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  switch(*(a3 + 2))
  {
    case 1:
      PanZoomSettings = OZViewerState::getPanZoomSettings(this, 0);
      (*(*a3 + 64))(a3, PanZoomSettings);
      break;
    case 2:
      v11 = OZViewerState::getPanZoomSettings(this, 0);
      LODWORD(v21) = 0;
      (*(*a3 + 24))(a3, &v21);
      v12 = v21;
      goto LABEL_27;
    case 3:
      LODWORD(v21) = 0;
      (*(*a3 + 32))(a3, &v21);
      v10 = v21;
      if (v21 >= 2)
      {
        v10 = 2;
      }

      *(this + 8) = v10;
      break;
    case 4:
      (*(*a3 + 24))(a3, this + 40);
      break;
    case 5:
      (*(*a3 + 32))(a3, this + 56);
      break;
    case 6:
      (*(*a3 + 32))(a3, this + 52);
      break;
    case 7:
      (*(*a3 + 72))(a3, this + 61);
      break;
    case 8:
      (*(*a3 + 72))(a3, this + 78);
      break;
    case 9:
      (*(*a3 + 72))(a3, this + 75);
      break;
    case 0xA:
      (*(*a3 + 72))(a3, this + 76);
      break;
    case 0xB:
      (*(*a3 + 72))(a3, this + 77);
      break;
    case 0xC:
      v13 = OZViewerState::getPanZoomSettings(this, 0);
      (*(*a3 + 64))(a3, v13 + 2);
      break;
    case 0xD:
      v9 = OZViewerState::getPanZoomSettings(this, 0);
      (*(*a3 + 64))(a3, v9 + 3);
      break;
    case 0xE:
      v7 = OZViewerState::getPanZoomSettings(this, 0);
      (*(*a3 + 72))(a3, v7 + 4);
      break;
    case 0x10:
      (*(*a3 + 72))(a3, this + 88);
      break;
    case 0x11:
      LODWORD(v21) = 0;
      (*(*a3 + 32))(a3, &v21);
      *(this + 16) = v21;
      break;
    case 0x14:
      (*(*a3 + 32))(a3, this + 68);
      break;
    case 0x15:
      (*(*a3 + 72))(a3, this + 72);
      break;
    case 0x16:
      (*(*a3 + 72))(a3, this + 73);
      break;
    case 0x17:
      (*(*a3 + 72))(a3, this + 74);
      break;
    case 0x1A:
      (*(*a3 + 72))(a3, this + 79);
      break;
    case 0x1B:
      (*(*a3 + 72))(a3, this + 80);
      break;
    case 0x1C:
      (*(*a3 + 72))(a3, this + 81);
      break;
    case 0x1D:
      (*(*a3 + 32))(a3, this + 240);
      if (*(this + 60) >= 0xBu)
      {
        *(this + 60) = 0;
      }

      *(this + 256) = 1;
      break;
    case 0x1E:
      (*(*a3 + 16))(a3, this + 248);
      break;
    case 0x1F:
      v25 = 0;
      PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 32, &v25);
      if ((v25 - 2) <= 5)
      {
        operator new();
      }

      if (v25 == 1)
      {
        PCPtr<LiImageSource>::operator=<TXTextureDecal>(this + 28, this + 14);
        v19 = *(this + 28);
        if (!v19)
        {
          throw_PCNullPointerException(1);
        }

        (*(*v19 + 640))(v19, 1);
        v20 = *(this + 28);
        if (!v20)
        {
          throw_PCNullPointerException(1);
        }

        (*(*v20 + 512))(v20, 45.0);
      }

      break;
    case 0x21:
      v21 = 0;
      v22 = 0;
      v23 = 0;
      PCSerializerReadStream::getAttributeAsDouble(a2, a3, 34, &v21);
      PCSerializerReadStream::getAttributeAsDouble(a2, a3, 35, &v22);
      PCSerializerReadStream::getAttributeAsDouble(a2, a3, 36, &v23);
      v18 = *(this + 28);
      if (v18)
      {
        (*(*v18 + 448))(v18, &v21);
      }

      break;
    case 0x25:
      v21 = 0x3FF0000000000000;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      PCSerializerReadStream::getAttributeAsDouble(a2, a3, 38, &v21);
      PCSerializerReadStream::getAttributeAsDouble(a2, a3, 39, &v22);
      PCSerializerReadStream::getAttributeAsDouble(a2, a3, 40, &v23);
      PCSerializerReadStream::getAttributeAsDouble(a2, a3, 41, &v24);
      v17 = *(this + 28);
      if (v17)
      {
        (*(*v17 + 480))(v17, &v21);
      }

      break;
    case 0x2A:
      v21 = 0;
      v22 = 0;
      PCSerializerReadStream::getAttributeAsDouble(a2, a3, 43, &v21);
      PCSerializerReadStream::getAttributeAsDouble(a2, a3, 44, &v22);
      v8 = *(this + 28);
      if (v8)
      {
        (*(*v8 + 288))(v8, &v21);
      }

      break;
    case 0x2D:
      LODWORD(v21) = 0;
      v25 = 0;
      PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 46, &v21);
      v11 = OZViewerState::getPanZoomSettings(this, v21);
      PCSerializerReadStream::getAttributeAsDouble(a2, a3, 47, v11);
      PCSerializerReadStream::getAttributeAsDouble(a2, a3, 49, (v11 + 2));
      PCSerializerReadStream::getAttributeAsDouble(a2, a3, 50, (v11 + 3));
      PCSerializerReadStream::getAttributeAsInt32(a2, a3, 48, &v25);
      PCSerializerReadStream::getAttributeAsBool(a2, a3, 51, (v11 + 4));
      v12 = v25;
LABEL_27:
      *(v11 + 2) = v12;
      break;
    case 0x34:
      v14 = (*(*a3 + 72))(a3, this + 36);
      v15 = OZPreferenceManager::Instance(v14);
      OZPreferenceManager::adjustDynamicResolution(v15, this + 36);
      break;
    case 0x35:
      (*(*a3 + 72))(a3, this + 258);
      break;
    default:
      return 0;
  }

  return 0;
}

void *PCPtr<LiSimpleCamera>::operator=<LiCamera>(void *a1, const PCSharedCount *a2)
{
  if (!a2->var0)
  {
    *a1 = 0;
    goto LABEL_5;
  }

  *a1 = v4;
  if (!v4)
  {
LABEL_5:
    v5 = &v8;
    PCSharedCount::PCSharedCount(&v8);
    PCSharedCount::operator=(a1 + 1, &v8);
    goto LABEL_6;
  }

  v5 = &v7;
  PCSharedCount::PCSharedCount(&v7, a2 + 1);
  PCSharedCount::operator=(a1 + 1, &v7);
LABEL_6:
  PCSharedCount::~PCSharedCount(v5);
  return a1;
}

void OZViewerState::~OZViewerState(OZViewerState *this)
{
  OZViewerState::~OZViewerState(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_2872886E0;
  v2 = this + 8;
  PCString::~PCString(this + 31);
  PCSharedCount::~PCSharedCount(this + 29);
  for (i = 216; i != 120; i -= 16)
  {
    PCSharedCount::~PCSharedCount((this + i));
  }

  PCSharedCount::~PCSharedCount(this + 15);
  PCSharedCount::~PCSharedCount(this + 13);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v2, *(this + 2));
}

void OZOrthoCamera::~OZOrthoCamera(OZOrthoCamera *this)
{
  LiSimpleCamera::~LiSimpleCamera(this, &off_287288AB0);
  *(v1 + 520) = &unk_2872DEA38;
  *(v1 + 536) = 0;
  PCWeakCount::~PCWeakCount((v1 + 528));
}

{
  OZOrthoCamera::~OZOrthoCamera(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZOrthoCamera::resetRotation(OZOrthoCamera *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 124);
  if (v8 <= 4)
  {
    switch(v8)
    {
      case 2:
        v10 = xmmword_260851210;
        break;
      case 3:
        v10 = xmmword_2608511F0;
        break;
      case 4:
        *(this + 60) = 0;
        *(this + 61) = 0;
        v9 = xmmword_2608511E0;
LABEL_12:
        *(this + 29) = v9;
        goto LABEL_18;
      default:
LABEL_13:
        PCPrint("File %s, line %d should not have been reached:\n\t", a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/CompositorObject/OZOrthoCamera.h");
        pcAbortImpl();
    }

    v11 = xmmword_260851200;
    goto LABEL_16;
  }

  if (v8 == 5)
  {
    *(this + 60) = 0;
    *(this + 61) = 0;
    v9 = xmmword_260850650;
    goto LABEL_12;
  }

  if (v8 != 6)
  {
    if (v8 != 7)
    {
      goto LABEL_13;
    }

    v10 = xmmword_2603426F0;
    v11 = xmmword_2608511D0;
LABEL_16:
    *(this + 29) = v11;
    *(this + 30) = v10;
    goto LABEL_18;
  }

  *(this + 60) = 0;
  *(this + 61) = 0;
  *(this + 58) = 0x3FF0000000000000;
  *(this + 59) = 0;
LABEL_18:
  v12 = *(*this + 480);

  return v12(this, this + 464);
}

uint64_t OZOrthoCamera::reset(OZOrthoCamera *this)
{
  (*(*this + 640))(this, 1);
  (*(*this + 512))(this, 0.0);
  (*(*this + 768))(this);
  memset(v3, 0, sizeof(v3));
  (*(*this + 448))(this, v3);
  return (*(*this + 288))(this, this + 504);
}

BOOL OZOrthoCamera::isModified(OZOrthoCamera *this)
{
  v5 = 1.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  memset(v4, 0, sizeof(v4));
  (*(*this + 472))();
  (*(*this + 440))(this, v4);
  (*(*this + 272))(&v3, this);
  return *(this + 58) != v5 || *(this + 59) != v6 || *(this + 60) != v7 || *(this + 61) != v8;
}

void virtual thunk toOZOrthoCamera::~OZOrthoCamera(OZOrthoCamera *this)
{
  LiSimpleCamera::~LiSimpleCamera((this + *(*this - 24)), &off_287288AB0);
  *(v1 + 520) = &unk_2872DEA38;
  *(v1 + 536) = 0;
  v2 = (v1 + 528);

  PCWeakCount::~PCWeakCount(v2);
}

{
  v1 = (this + *(*this - 24));
  LiSimpleCamera::~LiSimpleCamera(v1, &off_287288AB0);
  v1[65] = &unk_2872DEA38;
  *(v1 + 536) = 0;
  PCWeakCount::~PCWeakCount(v1 + 66);

  JUMPOUT(0x2666E9F00);
}

uint64_t *std::__tree<std::__value_type<OZViewCameraType,OZViewPanZoomSettings>,std::__map_value_compare<OZViewCameraType,std::__value_type<OZViewCameraType,OZViewPanZoomSettings>,std::less<OZViewCameraType>,true>,std::allocator<std::__value_type<OZViewCameraType,OZViewPanZoomSettings>>>::__emplace_unique_key_args<OZViewCameraType,std::piecewise_construct_t const&,std::tuple<OZViewCameraType const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

PCSharedCount *PCPtr<OZOrthoCamera>::PCPtr<LiSimpleCamera>(PCSharedCount *a1, const PCSharedCount *a2)
{
  var0 = a2->var0;
  if (a2->var0)
  {
  }

  a1->var0 = var0;
  PCSharedCount::PCSharedCount(a1 + 1, a2 + 1);
  if (!a1->var0)
  {
    PCSharedCount::PCSharedCount(&v6);
    PCSharedCount::operator=(&a1[1], &v6);
    PCSharedCount::~PCSharedCount(&v6);
  }

  return a1;
}

void sub_260113034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount a10)
{
  PCSharedCount::~PCSharedCount(&a10);
  PCSharedCount::~PCSharedCount(v10 + 1);
  _Unwind_Resume(a1);
}

void OZPreferenceManager::OZPreferenceManager(OZPreferenceManager *this)
{
  PCSingleton::PCSingleton(this, 0);
  *v1 = &unk_2872892F8;
  v2 = (v1 + 1);
  LiRenderingTechnology::LiRenderingTechnology((v1 + 1));
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  [v4 setObject:@"200" forKey:@"OZPreferenceManager::NumUndoLevels"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::DisplayTimecode"];
  [v4 setObject:@"1" forKey:@"OZPreferenceManager::FirstFrameNumber"];
  [v4 setObject:@"10" forKey:@"OZPreferenceManager::DefaultProjectDuration"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::IsDefaultProjectDurInFrames"];
  [v4 setObject:&unk_28732D628 forKey:@"OZPreferenceManager::DefaultProjectFrameRate"];
  [v4 setObject:@"720" forKey:@"OZPreferenceManager::DefaultProjectWidth"];
  [v4 setObject:@"480" forKey:@"OZPreferenceManager::DefaultProjectHeight"];
  [v4 setObject:&unk_28732D640 forKey:@"OZPreferenceManager::TimeDisplayMode"];
  [v4 setObject:@"10" forKey:@"OZPreferenceManager::DefaultStillDuration"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::IsDefaultStillDurInFrames"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::useProjectDurForStills"];
  [v4 setObject:@"1" forKey:@"OZPreferenceManager::LargeStills"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::showTooltips"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::CacheFootageFlag"];
  [v4 setObject:@"0.2" forKey:@"OZPreferenceManager::DropPaletteDelay"];
  [v4 setObject:@"0" forKey:@"OZPreferenceManager::DropAtTime"];
  [v4 setObject:@"0" forKey:@"OZPreferenceManager::AudioSyncMode"];
  [v4 setObject:@"1" forKey:@"OZPreferenceManager::AudioScrubLoopingFlag"];
  [v4 setObject:@"1" forKey:@"OZPreferenceManager::TimeViewUpdateMode"];
  [v4 setObject:@"1" forKey:@"OZPreferenceManager::TimelineThumbnailMode"];
  [v4 setObject:@"0" forKey:@"OZPreferenceManager::PreviewBackground"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::InfoBarShowColor"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::InfoBarShowCoordinates"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::InfoBarShowFrameRate"];
  [v4 setObject:@"0" forKey:@"OZPreferenceManager::InfoBarColorMode"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::LimitFrameRate"];
  [v4 setObject:@"16" forKey:@"OZPreferenceManager::CheckerSize"];
  [v4 setObject:@"0.75" forKey:@"OZPreferenceManager::FullViewOpacity"];
  [v4 setObject:@"80" forKey:@"OZPreferenceManager::GridSpacing"];
  [v4 setObject:@"0.93" forKey:@"OZPreferenceManager::SafeZonesActionPercentage"];
  [v4 setObject:@"0.9" forKey:@"OZPreferenceManager::SafeZonesTitlePercentage"];
  [v4 setObject:@"16" forKey:@"OZPreferenceManager::CheckerSize"];
  [v4 setObject:@"3" forKey:@"OZPreferenceManager::SnapTo"];
  [v4 setObject:@"0" forKey:@"OZPreferenceManager::ViewMode"];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 30];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 12];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 125440];
  [v4 setObject:v5 forKey:@"OZPreferenceManager::OSCOptions"];
  [v4 setObject:v6 forKey:@"OZPreferenceManager::OverlayOptions"];
  [v4 setObject:v7 forKey:@"OZPreferenceManager::OverlayOptions2"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::ShowToolInfo"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::CompensateAspectRatio"];
  [v4 setObject:@"0" forKey:@"OZPreferenceManager::Renderer"];
  [v4 setObject:@"0" forKey:@"OZPreferenceManager::BitDepth"];
  [v4 setObject:@"10" forKey:@"OZPreferenceManager::PrefetchAmount"];
  [v4 setObject:@"80" forKey:@"OZPreferenceManager::CachePercentage"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::PreloadFootage"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::UseOffscreenContext"];
  [v4 setObject:@"0" forKey:@"OZPreferenceManager::FieldRenderingMode"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::Use2DRenderer"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::ReflectionEnabled"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::AbortSlowRenders"];
  [v4 setObject:@"None" forKey:@"OZPreferenceManager::VideoOutputComponent"];
  [v4 setObject:@"0" forKey:@"OZPreferenceManager::VideoOutputDuringPlayback"];
  [v4 setObject:@"0" forKey:@"OZPreferenceManager::VideoOutputDynamic"];
  [v4 setObject:@"1" forKey:@"OZPreferenceManager::VideoOutputEnabled"];
  [v4 setObject:&stru_2872E16E0 forKey:@"OZPreferenceManager::3rdPartyPath"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::LibraryCreateIcons"];
  [v4 setObject:@"0" forKey:@"OZPreferenceManager::LibraryFolderDisplay"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::LibraryClickToPlay"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::RemoveUnusedMedia"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::LayersPreviewColumn"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::LayersOpacityColumn"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::LayersBlendColumn"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::LayersDisplayMasks"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::LayersDisplayBehaviors"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::LayersDisplayEffects"];
  [v4 setObject:@"1.8" forKey:@"OZPreferenceManager::LayersVerticalZoom"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::MediaPreviewColumn"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::MediaTypeColumn"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::MediaDurationColumn"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::MediaInUseColumn"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::MediaFrameSizeColumn"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::MediaCompressorColumn"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::MediaDepthColumn"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::MediaFrameRateColumn"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::MediaDataRateColumn"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::MediaAudioRateColumn"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::MediaAudioFormatColumn"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::MediaFileSizeColumn"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::MediaFileCreatedColumn"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::MediaFileModifiedColumn"];
  [v4 setObject:@"1.8" forKey:@"OZPreferenceManager::MediaVerticalZoom"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::TimelineDisplayVideo"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::TimelineDisplayAudio"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::TimelineDisplayKeyframes"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::TimelineDisplayMasks"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::TimelineDisplayBehaviors"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::TimelineDisplayEffects"];
  [v4 setObject:@"1.555555555" forKey:@"OZPreferenceManager::TimelineVideoVerticalZoom"];
  [v4 setObject:@"1.555555555" forKey:@"OZPreferenceManager::TimelineAudioVerticalZoom"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::CurveEditorAutoZoom"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::CurveEditorSnapping"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::CurveEditorDisplayAudioWaveform"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::CurveEditorSnapshotChannels"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::LockKeyframesIntime"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::AllowSubframKeyframing"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::AudioEditorScrubbingCheck"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::AudioEditorRegionCheck"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::AudioEditorShowPanningCheck"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::AudioEditorShowVolumeCheck"];
  [v4 setObject:@"1" forKey:@"OZPreferenceManager::PlayMode"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::AudioMuted"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::Autosave"];
  [v4 setObject:@"15" forKey:@"OZPreferenceManager::AutosaveInterval"];
  [v4 setObject:@"40" forKey:@"OZPreferenceManager::AutosaveCopiesPerProject"];
  [v4 setObject:OZPreferenceManager::getDefaultFreezeCacheVaultPath(objc_msgSend(v4 forKey:{"setObject:forKey:", @"25", @"OZPreferenceManager::AutosaveMaxProjects", @"OZPreferenceManager::FreezeCacheVaultPath"}];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::RotoshapeIsFillEnabled"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::RotoshapeIsOutlineEnabled"];
  [v4 setObject:@"0" forKey:@"OZPreferenceManager::RotoshapeMaskColor"];
  [v4 setObject:@"0" forKey:@"OZPreferenceManager::RotoshapeRoundness"];
  [v4 setObject:@"100" forKey:@"OZPreferenceManager::RotoshapeCurvature"];
  [v4 setObject:@"10" forKey:@"OZPreferenceManager::RotoshapeOutlineWidth"];
  [v4 setObject:@"0" forKey:@"OZPreferenceManager::RotomaskBlendMode"];
  [v4 setObject:@"0" forKey:@"OZPreferenceManager::RotomaskFeather"];
  [v4 setObject:@"0" forKey:@"OZPreferenceManager::RotomaskRoundness"];
  [v4 setObject:@"100" forKey:@"OZPreferenceManager::RotomaskCurvature"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::IsRecordingWriteOn"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::IsSmoothing"];
  [v4 setObject:@"10" forKey:@"OZPreferenceManager::StrokeWidth"];
  [v4 setObject:@"Width" forKey:@"OZPreferenceManager::ApplyPenPressureTo"];
  [v4 setObject:@"Nothing" forKey:@"OZPreferenceManager::ApplyPenSpeedTo"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::GroundPlaneVisible"];
  [v4 setObject:@"80" forKey:@"OZPreferenceManager::GroundPlaneSpacing"];
  [v4 setObject:@"0" forKey:@"OZPreferenceManager::DefaultGroupType"];
  [v4 setObject:@"0" forKey:@"OZPreferenceManager::InsetViewMode"];
  [v4 setObject:@"0.3" forKey:@"OZPreferenceManager::InsetViewSize"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::TaskListAutocloses"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::SometimesSelectParentGroup"];
  if (![v3 objectForKey:@"OZPreferenceManager::TextSpellCheckMode"])
  {
    [v4 setObject:@"YES" forKey:@"OZPreferenceManager::TextSpellCheckMode"];
  }

  if (![v3 objectForKey:@"OZPreferenceManager::TextGrammarCheckMode"])
  {
    [v4 setObject:@"YES" forKey:@"OZPreferenceManager::TextGrammarCheckMode"];
  }

  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::UseHeliumInCanvas"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::UseTexturedCanvas"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::DynamicResolution"];
  [v4 setObject:@"MAYBE" forKey:@"OZPreferenceManager::OverrideDynamicResolution"];
  LiRenderingTechnology::LiRenderingTechnology(v23);
  [v4 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", PVPerfStats::FrameStats::GetSize(v23)), @"OZPreferenceManager::RenderingTechnology"}];
  [v4 setObject:@"0" forKey:@"OZPreferenceManager::NumberOfCores"];
  if (LiRenderingTechnology::getDefocusIntersections(v23))
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v4 setObject:v8 forKey:@"OZPreferenceManager::DefocusIntersections"];
  if (LiRenderingTechnology::getRasterizeEdges(v23))
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v4 setObject:v9 forKey:@"OZPreferenceManager::RasterizeEdges"];
  if (LiRenderingTechnology::getEnableMetalRendering(v23))
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v4 setObject:v10 forKey:@"OZPreferenceManager::EnableMetalRendering"];
  if (LiRenderingTechnology::getEnableHgc2Shaders(v23))
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [v4 setObject:v11 forKey:@"EnableHgc2Shaders"];
  if (LiRenderingTechnology::getDebugShaders(v23))
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v4 setObject:v12 forKey:@"OZPreferenceManager::DebugShaders"];
  if (LiRenderingTechnology::getPrintShaders(v23))
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [v4 setObject:v13 forKey:@"OZPreferenceManager::PrintShaders"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::EnableMetalOSCs"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::TemplatesSkipPreviews"];
  [v4 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", 0), @"NSProHighlightFPOPreference"}];
  [v4 setObject:@"0" forKey:@"OZPreferenceManager::TextureResolution"];
  [v4 setObject:@"YES" forKey:@"OZPreferenceManager::CompressMaterials"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::HasConvertedAutosaves"];
  [v4 setObject:&stru_2872E16E0 forKey:@"OZPreferenceManager::LastNavigatedImportDirectory"];
  [v4 setObject:@"NO" forKey:@"OZPreferenceManager::HMDOutput"];
  [v4 setObject:@"YES" forKey:@"ANIMAL_STYLE"];
  [v3 registerDefaults:v4];
  [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  v22.var0 = 0;
  PCString::set(&v22, @"OZPreferenceManager::RasterizeEdges");
  v14 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  LiRenderingTechnology::setRasterizeEdges(v2, v14);
  PCString::~PCString(&v22);
  v22.var0 = 0;
  PCString::set(&v22, @"OZPreferenceManager::EnableMetalRendering");
  v15 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  LiRenderingTechnology::setEnableMetalRendering(v2, v15);
  PCString::~PCString(&v22);
  v22.var0 = 0;
  PCString::set(&v22, @"EnableHgc2Shaders");
  v16 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  LiRenderingTechnology::setEnableHgc2Shaders(v2, v16);
  PCString::~PCString(&v22);
  v22.var0 = 0;
  PCString::set(&v22, @"OZPreferenceManager::CPURendering");
  v17 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  LiRenderingTechnology::setFlagAtIndex(v2, 1, v17);
  PCString::~PCString(&v22);
  v22.var0 = 0;
  PCString::set(&v22, @"OZPreferenceManager::DebugShaders");
  v18 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  LiRenderingTechnology::setDebugShaders(v2, v18);
  PCString::~PCString(&v22);
  v22.var0 = 0;
  PCString::set(&v22, @"OZPreferenceManager::PrintShaders");
  v19 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  PCString::~PCString(&v22);
  LiRenderingTechnology::setPrintShaders(v2, v19);
  OZChannelBase::setRangeName(v19, v20);
  v21 = theApp;
  PCURL::PCURL(&v22, @"/Library/Application Support/Final Cut Pro");
  PCString::set(v21 + 13, &v22);
  PCString::~PCString(&v22);
}

void sub_260114208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  PCSingleton::~PCSingleton(v10);
  _Unwind_Resume(a1);
}

uint64_t OZPreferenceManager::getDefaultFreezeCacheVaultPath(OZPreferenceManager *this)
{
  v1 = [(NSArray *)NSSearchPathForDirectoriesInDomains(NSCachesDirectory objectAtIndex:1), "objectAtIndex:", 0];
  v2 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];

  return [v1 stringByAppendingPathComponent:v2];
}

void OZPreferenceManager::~OZPreferenceManager(OZPreferenceManager *this)
{
  *this = &unk_2872892F8;

  PCSingleton::~PCSingleton(this);
}

{
  OZPreferenceManager::~OZPreferenceManager(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZPreferenceManager::Instance(OZPreferenceManager *this)
{
  if (OZPreferenceManager::Instance(void)::once != -1)
  {
    OZPreferenceManager::Instance();
  }

  return OZPreferenceManager::_instance;
}

uint64_t OZPreferenceManager::getUseProjectDurationForStills(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::useProjectDurForStills"];
}

CMTime *OZPreferenceManager::getDefaultStillDuration@<X0>(const CMTime *a1@<X1>, CMTime *a2@<X8>)
{
  [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  v6 = v5;
  result = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  if (result)
  {
    *&a2->value = *&a1->value;
    a2->epoch = a1->epoch;
    a2->value = (v6 * a2->value);
  }

  else
  {
    timescale = a1->timescale;

    return PC_CMTimeMakeWithSecondsRoundToNearest(timescale, a2, v6);
  }

  return result;
}

uint64_t OZPreferenceManager::getRemoveUnusedMedia(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::RemoveUnusedMedia"];
}

uint64_t OZPreferenceManager::getSafeZonesTitlePercentage(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 floatForKey:@"OZPreferenceManager::SafeZonesTitlePercentage"];
}

uint64_t OZPreferenceManager::getOverlayOptions(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v1 integerForKey:@"OZPreferenceManager::OverlayOptions"];
  return [v1 integerForKey:@"OZPreferenceManager::OverlayOptions2"] | v2;
}

uint64_t OZPreferenceManager::getShowToolInfo(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::ShowToolInfo"];
}

uint64_t OZPreferenceManager::getCompensateAspectRatio(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::CompensateAspectRatio"];
}

uint64_t OZPreferenceManager::setCompensateAspectRatio(OZPreferenceManager *this, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v3 setBool:a2 forKey:@"OZPreferenceManager::CompensateAspectRatio"];
}

uint64_t OZPreferenceManager::getLayersPreviewColumn(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::LayersPreviewColumn"];
}

uint64_t OZPreferenceManager::getLayersOpacityColumn(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::LayersOpacityColumn"];
}

uint64_t OZPreferenceManager::getLayersBlendColumn(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::LayersBlendColumn"];
}

uint64_t OZPreferenceManager::getLayersDisplayMasks(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::LayersDisplayMasks"];
}

uint64_t OZPreferenceManager::getLayersDisplayBehaviors(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::LayersDisplayBehaviors"];
}

uint64_t OZPreferenceManager::getLayersDisplayEffects(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::LayersDisplayEffects"];
}

uint64_t OZPreferenceManager::getMediaPreviewColumn(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::MediaPreviewColumn"];
}

uint64_t OZPreferenceManager::getMediaTypeColumn(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::MediaTypeColumn"];
}

uint64_t OZPreferenceManager::getMediaDurationColumn(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::MediaDurationColumn"];
}

uint64_t OZPreferenceManager::getMediaInUseColumn(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::MediaInUseColumn"];
}

uint64_t OZPreferenceManager::getMediaFrameSizeColumn(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::MediaFrameSizeColumn"];
}

uint64_t OZPreferenceManager::getMediaCompressorColumn(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::MediaCompressorColumn"];
}

uint64_t OZPreferenceManager::getMediaDepthColumn(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::MediaDepthColumn"];
}

uint64_t OZPreferenceManager::getMediaFrameRateColumn(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::MediaFrameRateColumn"];
}

uint64_t OZPreferenceManager::getMediaDataRateColumn(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::MediaDataRateColumn"];
}

uint64_t OZPreferenceManager::getMediaAudioRateColumn(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::MediaAudioRateColumn"];
}

uint64_t OZPreferenceManager::getMediaAudioFormatColumn(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::MediaAudioFormatColumn"];
}

uint64_t OZPreferenceManager::getMediaFileSizeColumn(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::MediaFileSizeColumn"];
}

uint64_t OZPreferenceManager::getMediaFileCreatedColumn(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::MediaFileCreatedColumn"];
}

uint64_t OZPreferenceManager::getMediaFileModifiedColumn(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::MediaFileModifiedColumn"];
}

uint64_t OZPreferenceManager::getTimelineDisplayVideo(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::TimelineDisplayVideo"];
}

uint64_t OZPreferenceManager::getTimelineDisplayAudio(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::TimelineDisplayAudio"];
}

uint64_t OZPreferenceManager::getTimelineDisplayKeyframes(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::TimelineDisplayKeyframes"];
}

uint64_t OZPreferenceManager::getTimelineDisplayMasks(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::TimelineDisplayMasks"];
}

uint64_t OZPreferenceManager::getTimelineDisplayBehaviors(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::TimelineDisplayBehaviors"];
}

uint64_t OZPreferenceManager::getTimelineDisplayEffects(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::TimelineDisplayEffects"];
}

uint64_t OZPreferenceManager::getRecordWhilePlayback(OZPreferenceManager *this)
{
  if (![objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")])
  {
    return 1;
  }

  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::RecordWhilePlayback"];
}

uint64_t OZPreferenceManager::getStrokeApplyPenPressureTo(OZPreferenceManager *this)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  ApplyPenPropertyToValues = getApplyPenPropertyToValues();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [ApplyPenPropertyToValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v11;
LABEL_3:
  v7 = 0;
  v8 = v5;
  v5 = (v5 + v4);
  while (1)
  {
    if (*v11 != v6)
    {
      objc_enumerationMutation(ApplyPenPropertyToValues);
    }

    if ([v1 isEqualToString:*(*(&v10 + 1) + 8 * v7)])
    {
      return v8;
    }

    v8 = (v8 + 1);
    if (v4 == ++v7)
    {
      v4 = [ApplyPenPropertyToValues countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

uint64_t getApplyPenPropertyToValues(void)
{
  {
    getApplyPenPropertyToValues(void)::result = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"Nothing", @"Width", @"Opacity", @"Spacing", @"Angle", @"Jitter", 0}];
  }

  return getApplyPenPropertyToValues(void)::result;
}

uint64_t OZPreferenceManager::getStrokeApplyPenSpeedTo(OZPreferenceManager *this)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  ApplyPenPropertyToValues = getApplyPenPropertyToValues();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [ApplyPenPropertyToValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v11;
LABEL_3:
  v7 = 0;
  v8 = v5;
  v5 = (v5 + v4);
  while (1)
  {
    if (*v11 != v6)
    {
      objc_enumerationMutation(ApplyPenPropertyToValues);
    }

    if ([v1 isEqualToString:*(*(&v10 + 1) + 8 * v7)])
    {
      return v8;
    }

    v8 = (v8 + 1);
    if (v4 == ++v7)
    {
      v4 = [ApplyPenPropertyToValues countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

uint64_t OZPreferenceManager::isGroundPlaneVisible(OZPreferenceManager *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v1 BOOLForKey:@"OZPreferenceManager::GroundPlaneVisible"];
}

__n128 OZPreferenceManager::getRenderingTechnology@<Q0>(OZPreferenceManager *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 24);
  *a2 = *(this + 8);
  *(a2 + 16) = v2;
  result = *(this + 40);
  *(a2 + 32) = result;
  return result;
}

BOOL OZPreferenceManager::getDynamicResolution(OZPreferenceManager *this)
{
  v1 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  v3 = v1;
  OZPreferenceManager::adjustDynamicResolution(v1, &v3);
  return v3;
}

uint64_t OZPreferenceManager::adjustDynamicResolution(OZPreferenceManager *this, BOOL *a2)
{
  v3 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  if (![v3 caseInsensitiveCompare:@"YES"])
  {
    *a2 = 1;
  }

  result = [v3 caseInsensitiveCompare:@"NO"];
  if (!result)
  {
    *a2 = 0;
  }

  return result;
}

void OZExportSettings::OZExportSettings(OZExportSettings *this)
{
  *this = &unk_287289350;
  *(this + 8) = xmmword_260851250;
  *(this + 3) = 0x300000003;
  *(this + 32) = 1;
  *(this + 36) = 0x60000000ALL;
  *(this + 22) = 257;
  *(this + 46) = 1;
  *&v1 = 0x200000002;
  *(&v1 + 1) = 0x200000002;
  *(this + 3) = xmmword_260851260;
  *(this + 4) = v1;
}

void OZExportSettings::OZExportSettings(OZExportSettings *this, const OZExportSettings *a2)
{
  *this = &unk_287289350;
  *(this + 12) = *(a2 + 12);
  *(this + 7) = *(a2 + 7);
  *(this + 32) = *(a2 + 32);
  *(this + 36) = *(a2 + 36);
  *(this + 22) = *(a2 + 22);
  *(this + 46) = *(a2 + 46);
  *(this + 3) = *(a2 + 3);
  *(this + 4) = *(a2 + 4);
}

uint64_t OZExportSettings::getRenderQuality(OZExportSettings *this)
{
  if (*(this + 9) == 10)
  {
    return 10;
  }

  result = *(this + 10);
  v3 = *(this + 44);
  if (v3 != (result == 6) || *(this + 45) != (result != 0) || *(this + 46) != v3)
  {
    return 8;
  }

  return result;
}

uint64_t OZExportSettings::setRenderQuality(uint64_t result, int a2)
{
  *(result + 36) = a2;
  if (a2 != 8)
  {
    *(result + 40) = a2;
    *(result + 44) = a2 > 5;
    *(result + 45) = a2 > 1;
    *(result + 46) = a2 > 5;
  }

  return result;
}

uint64_t OZExportSettings::writeHeader(OZExportSettings *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZExportSettingsScope);
  (*(*a2 + 16))(a2, 33);

  return PCSerializerWriteStream::popScope(a2);
}

void OZExportSettings::writeBody(OZExportSettings *this, PCSerializerWriteStream *a2)
{
  PCAsciiStream::PCAsciiStream(v26);
  PCAsciiStream::PCAsciiStream(v25);
  PCSharedCount::PCSharedCount(&v24);
  PCSharedCount::PCSharedCount(&v23);
  PCSerializerWriteStream::pushScope(a2, &OZExportSettingsScope);
  (*(*a2 + 16))(a2, 100);
  (*(*a2 + 48))(a2, 1);
  (*(*a2 + 24))(a2);
  v4 = *(this + 3);
  (*(*a2 + 16))(a2, 5);
  (*(*a2 + 56))(a2, v4);
  (*(*a2 + 24))(a2);
  v5 = *(this + 4);
  (*(*a2 + 16))(a2, 10);
  (*(*a2 + 56))(a2, v5);
  (*(*a2 + 24))(a2);
  v6 = *(this + 5);
  (*(*a2 + 16))(a2, 11);
  (*(*a2 + 56))(a2, v6);
  (*(*a2 + 24))(a2);
  v7 = *(this + 6);
  (*(*a2 + 16))(a2, 22);
  (*(*a2 + 56))(a2, v7);
  (*(*a2 + 24))(a2);
  v8 = *(this + 7);
  (*(*a2 + 16))(a2, 23);
  (*(*a2 + 56))(a2, v8);
  (*(*a2 + 24))(a2);
  v9 = *(this + 32);
  (*(*a2 + 16))(a2, 12);
  (*(*a2 + 48))(a2, v9);
  (*(*a2 + 24))(a2);
  v10 = *(this + 9);
  (*(*a2 + 16))(a2, 13);
  (*(*a2 + 48))(a2, v10);
  (*(*a2 + 24))(a2);
  v11 = *(this + 10);
  (*(*a2 + 16))(a2, 14);
  (*(*a2 + 48))(a2, v11);
  (*(*a2 + 24))(a2);
  v12 = *(this + 44);
  (*(*a2 + 16))(a2, 15);
  (*(*a2 + 48))(a2, v12);
  (*(*a2 + 24))(a2);
  v13 = *(this + 45);
  (*(*a2 + 16))(a2, 16);
  (*(*a2 + 48))(a2, v13);
  (*(*a2 + 24))(a2);
  v14 = *(this + 46);
  (*(*a2 + 16))(a2, 17);
  (*(*a2 + 48))(a2, v14);
  (*(*a2 + 24))(a2);
  v15 = *(this + 12);
  (*(*a2 + 16))(a2, 19);
  (*(*a2 + 56))(a2, v15);
  (*(*a2 + 24))(a2);
  v16 = *(this + 13);
  (*(*a2 + 16))(a2, 20);
  (*(*a2 + 56))(a2, v16);
  (*(*a2 + 24))(a2);
  v17 = *(this + 14);
  (*(*a2 + 16))(a2, 21);
  (*(*a2 + 56))(a2, v17);
  (*(*a2 + 24))(a2);
  v18 = *(this + 15);
  (*(*a2 + 16))(a2, 40);
  (*(*a2 + 56))(a2, v18);
  (*(*a2 + 24))(a2);
  v19 = *(this + 16);
  (*(*a2 + 16))(a2, 41);
  (*(*a2 + 56))(a2, v19);
  (*(*a2 + 24))(a2);
  v20 = *(this + 17);
  (*(*a2 + 16))(a2, 42);
  (*(*a2 + 56))(a2, v20);
  (*(*a2 + 24))(a2);
  v21 = *(this + 18);
  (*(*a2 + 16))(a2, 43);
  (*(*a2 + 56))(a2, v21);
  (*(*a2 + 24))(a2);
  v22 = *(this + 19);
  (*(*a2 + 16))(a2, 44);
  (*(*a2 + 56))(a2, v22);
  (*(*a2 + 24))(a2);
  PCSerializerWriteStream::popScope(a2);
  PCString::~PCString(&v23);
  PCString::~PCString(&v24);
  PCAsciiStream::~PCAsciiStream(v25);
  PCAsciiStream::~PCAsciiStream(v26);
}

void sub_2601161AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  PCString::~PCString(&a10);
  PCAsciiStream::~PCAsciiStream(&a11);
  PCAsciiStream::~PCAsciiStream(&a22);
  _Unwind_Resume(a1);
}

uint64_t OZExportSettings::parseElement(OZExportSettings *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  v4 = *(a3 + 2);
  switch(v4)
  {
    case 5:
      (*(*a3 + 32))(a3, this + 12);
      break;
    case 6:
    case 7:
    case 8:
    case 9:
    case 18:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
      return 1;
    case 10:
      (*(*a3 + 32))(a3, this + 16);
      break;
    case 11:
      (*(*a3 + 32))(a3, this + 20);
      break;
    case 12:
      (*(*a3 + 72))(a3, this + 32);
      break;
    case 13:
      (*(*a3 + 32))(a3, this + 36);
      break;
    case 14:
      (*(*a3 + 32))(a3, this + 40);
      break;
    case 15:
      (*(*a3 + 72))(a3, this + 44);
      break;
    case 16:
      (*(*a3 + 72))(a3, this + 45);
      break;
    case 17:
      (*(*a3 + 72))(a3, this + 46);
      break;
    case 19:
      (*(*a3 + 32))(a3, this + 48);
      break;
    case 20:
      (*(*a3 + 32))(a3, this + 52);
      break;
    case 21:
      (*(*a3 + 32))(a3, this + 56);
      break;
    case 22:
      (*(*a3 + 32))(a3, this + 24);
      if (*(this + 6) >= 0xFu)
      {
        *(this + 6) = 3;
      }

      break;
    case 23:
      (*(*a3 + 32))(a3, this + 28);
      if (*(this + 7) >= 0xFu)
      {
        *(this + 7) = 3;
      }

      break;
    case 40:
      (*(*a3 + 32))(a3, this + 60);
      break;
    case 41:
      (*(*a3 + 32))(a3, this + 64);
      break;
    case 42:
      (*(*a3 + 32))(a3, this + 68);
      break;
    case 43:
      (*(*a3 + 32))(a3, this + 72);
      break;
    case 44:
      (*(*a3 + 32))(a3, this + 76);
      break;
    default:
      if (v4 == 100)
      {
        (*(*a3 + 32))(a3, this + 8);
      }

      break;
  }

  return 1;
}

unint64_t OZObjectManipulator::isEnabled(OZObjectManipulator *this, int a2, int a3)
{
  v5 = (*(*this + 216))(this);

  return OZChannelBase::isEnabled(v5, a2, a3);
}

uint64_t OZObjectManipulator::enable(OZObjectManipulator *this)
{
  v1 = *(*(*(*this + 216))(this) + 104);

  return v1();
}

uint64_t OZObjectManipulator::disable(OZObjectManipulator *this)
{
  v1 = *(*(*(*this + 216))(this) + 104);

  return v1();
}

uint64_t OZObjectManipulator::isLocked(OZObjectManipulator *this, char a2)
{
  v3 = (*(*this + 216))(this);

  return OZChannelBase::isLocked(v3, a2);
}

unint64_t OZObjectManipulator::isAnyAncestorLocked(OZObjectManipulator *this)
{
  v1 = (*(*this + 216))(this);

  return OZChannelBase::isAnyAncestorLocked(v1);
}

uint64_t OZObjectManipulator::lock(OZObjectManipulator *this)
{
  v1 = *(*(*(*this + 216))(this) + 96);

  return v1();
}

uint64_t OZObjectManipulator::unlock(OZObjectManipulator *this)
{
  v1 = *(*(*(*this + 216))(this) + 96);

  return v1();
}

unint64_t OZObjectManipulator::isActiveAtTime(OZObjectManipulator *this, CMTime *a2, int a3, int a4, int a5)
{
  v10 = (*(*this + 216))(this);
  v11 = v10;
  if (!a5 || (result = OZChannelBase::isEnabled(v10, a3, a4), result))
  {
    v13 = (*(*this + 264))(this);
    if (!v13)
    {
      return 1;
    }

    v14 = v13;
    OZSceneSettings::getFrameDuration((v13 + 336), &v20);
    v17 = *a2;
    *&time1.value = v20;
    time1.epoch = v21;
    PC_CMTimeFloorToSampleDuration(&v17, &time1, &time2);
    *a2 = time2;
    (*(v11->var0 + 89))(&v17, v11);
    OZSceneSettings::getFrameDuration((v14 + 336), &v15);
    time1 = v17;
    time2 = *a2;
    if (CMTimeCompare(&time1, &time2) > 0)
    {
      return 0;
    }

    time1 = v17;
    time2 = v18;
    PC_CMTimeSaferAdd(&time1, &time2, &v20);
    *&time1.value = v20;
    time1.epoch = v21;
    *&time2.value = v15;
    time2.epoch = v16;
    PC_CMTimeSaferSubtract(&time1, &time2, &v19);
    time1 = *a2;
    time2 = v19;
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      if ((v18.flags & 1) == 0)
      {
        return 0;
      }

      return (v18.flags >> 4) & 1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

unint64_t OZObjectManipulator::isActiveInTimeRange(OZObjectManipulator *this, const PCTimeRange *a2, int a3, int a4, int a5)
{
  v10 = (*(*this + 216))(this);
  v11 = v10;
  if (!a5 || (result = OZChannelBase::isEnabled(v10, a3, a4), result))
  {
    if ((*(*this + 264))(this))
    {
      memset(&v17, 0, sizeof(v17));
      v13 = (*(*this + 264))(this);
      OZSceneSettings::getFrameDuration((v13 + 336), &v17);
      v14.n128_f64[0] = PCTimeRange::getRangeEnclosingWholeFrames(a2, &v17, v16);
      (*(v11->var0 + 89))(v15, v11, v14);
      v21 = v15[0];
      time1 = v15[0];
      time2 = v15[1];
      PC_CMTimeSaferAdd(&time1, &time2, &v20);
      v19 = v16[0];
      time1 = v16[0];
      time2 = v16[1];
      PC_CMTimeSaferAdd(&time1, &time2, &v18);
      time1 = v18;
      time2 = v21;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        return 0;
      }

      else
      {
        time1 = v19;
        time2 = v20;
        return CMTimeCompare(&time1, &time2) < 1;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t OZObjectManipulator::getInternalName(OZObjectManipulator *this)
{
  v1 = (*(*this + 216))(this);
  if (*(v1 + 40))
  {
    return *(v1 + 40);
  }

  else
  {
    return v1 + 32;
  }
}

void OZObjectManipulator::setName(OZObjectManipulator *this, const PCString *a2, int a3)
{
  v5 = (*(*this + 216))(this);
  if (a3)
  {
    PCURL::PCURL(&v6, @"Undo Name Change");
    (*(v5->var0 + 43))(v5, &v6);
    PCString::~PCString(&v6);
  }

  OZChannelBase::setName(v5, a2, 0);
}

void OZObjectManipulator::appendCopyToName(OZObjectManipulator *this)
{
  v2 = (*(*this + 216))(this);
  {
    PCURL::PCURL(&v8, @"Object Name Copy");
    PCString::PCString(&v7, "%@");
    v3 = PCString::find(&v8, &v7);
    PCString::~PCString(&v7);
    PCString::erase(&v8, v3, 2u);
    PCString::PCString(&v7, &v2->var4);
    if ((PCString::find(&v7, &v8) & 0x80000000) != 0)
    {
      v4 = localizedString(@"Object Name Copy", 0);
      v5 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:0, PCString::ns_str(&v7)];
      PCURL::PCURL(&v6, v5);
      OZChannelBase::setName(v2, &v6, 0);
      PCString::~PCString(&v6);
    }

    PCString::~PCString(&v7);
    PCString::~PCString(&v8);
  }
}

void sub_26011703C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a10);
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  _Unwind_Resume(a1);
}

uint64_t OZObjectManipulator::getSourceOperationMask(OZObjectManipulator *this, OZChannelBase *a2, int a3)
{
  if (a3)
  {
    v3 = 9;
  }

  else
  {
    v3 = 1;
  }

  if (a2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void OZObjectManipulator::allowDrag(OZObjectManipulator *this, OZFactoryBase *lpsrc, OZChannelBase *a3, unsigned int a4, unsigned int *a5, unsigned int *a6)
{
  *a5 = 0;
  if (lpsrc)
  {
    if (v9)
    {
      if (*a6)
      {
        v10 = v9;
        if ((*(a3->var0 + 33))(a3, v9))
        {
          if ((*(a3->var0 + 34))(a3, v10))
          {
            *a5 = 1;
            *a6 = 1;
          }
        }
      }
    }
  }
}

uint64_t OZObjectManipulator::performDragOperation(OZObjectManipulator *this, OZFactoryBase *lpsrc, OZChannelBase *a3, unsigned int a4, unsigned int a5, unsigned int a6, char a7, const CMTime *a8)
{
  if (!lpsrc)
  {
    return 0;
  }

  if (result)
  {
    v12 = result;
    result = (*(a3->var0 + 33))(a3, result);
    if (result)
    {
      PCSharedCount::PCSharedCount(&v16);
      (*(a3->var0 + 43))(a3, &v16);
      PCString::~PCString(&v16);
      if ((a7 & 2) != 0)
      {
        v13 = (*(*this + 264))(this);
        CurrentTime = OZScene::getCurrentTime(v13, &v16);
        (*(a3->var0 + 38))(a3, &v16, v12, CurrentTime);
      }

      else
      {
        (*(a3->var0 + 58))(a3, 1);
        (*(a3->var0 + 39))(a3, v12);
      }

      (*(*this + 424))(this);
      v15 = (*(*this + 264))(this);
      OZDocument::postNotification(*(v15 + 1584), 8);
      return 1;
    }
  }

  return result;
}

uint64_t OZObjectManipulator::addToUndo(OZObjectManipulator *this, const PCString *a2)
{
  result = (*(*this + 232))(this);
  if (result)
  {
    v4 = *(*((*(*this + 232))(this) + 16) + 176);

    return v4();
  }

  return result;
}

OZChannelBase *OZObjectManipulator::getChannelFromRefAndVersion(OZObjectManipulator *this, OZChannelRef *a2, double a3)
{
  v5 = (*(*this + 216))(this, a3);
  if (!a2 || !v5)
  {
    return 0;
  }

  v6 = (*(*this + 216))(this);

  return OZChannelRef::getChannel(a2, v6);
}

int8x8_t *OZObjectManipulator::dirty(OZObjectManipulator *this)
{
  (*(*this + 432))(this);
  result = (*(*this + 264))(this);
  if (result)
  {
    v3 = result;
    v4 = (*(*this + 256))(this);
    v5 = (*(*v4 + 56))(v4);
    result = OZScene::getDependantNodes(v3, v5);
    if (result)
    {
      v6 = result + 1;
      v7 = *result;
      if (*result != &result[1])
      {
        do
        {
          result = OZScene::getObject(v3, v7[3].u32[1]);
          if (result && *&vorr_s8(result[2], *&vextq_s8(*result[2].i8, *result[2].i8, 8uLL)))
          {
            result = (*(*result + 424))(result);
          }

          v8 = v7[1];
          if (v8)
          {
            do
            {
              v9 = v8;
              v8 = *v8;
            }

            while (v8);
          }

          else
          {
            do
            {
              v9 = v7[2];
              v10 = *v9 == v7;
              v7 = v9;
            }

            while (!v10);
          }

          v7 = v9;
        }

        while (v9 != v6);
      }
    }
  }

  return result;
}

double OZObjectManipulator::invalidateStaticHash(OZObjectManipulator *this)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  if ((*(*this + 264))(this))
  {
    v3 = (*(*this + 264))(this);

    return OZScene::invalidateStaticHash(v3);
  }

  return result;
}

void sub_260117B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

BOOL OZObjectManipulator::isInObjectList(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 8) != a2)
  {
    v2 = *(a2 + 8);
    while (*(v2 + 16) != a1)
    {
      v2 = *(v2 + 8);
      if (v2 == a2)
      {
        v2 = a2;
        return v2 != a2;
      }
    }
  }

  return v2 != a2;
}

void OZChannelFontBase::checkAndConvertToSystemFont(OZChannelFontBase *this@<X0>, PCString *a2@<X1>, CGFloat a3@<D0>, PCString *a4@<X8>)
{
  if ([(__CFString *)PCString::ns_str(a2) hasPrefix:@".SF"])
  {
    v8 = PCString::cf_str(a2);
    v9 = OZCreateFontWithName(v8, a3, 0);
    if (v9)
    {
      *(this + 166) = 2;
      CFRelease(v9);
LABEL_12:

      PCString::PCString(a4, a2);
      return;
    }

    v12 = PCString::cf_str(a2);
    v11 = [MEMORY[0x277D74300] systemFontOfSize:a3 weight:OZGetSystemFontWeightFromName(v12)];
  }

  else
  {
    v10 = [MEMORY[0x277D74300] fontWithName:PCString::ns_str(a2) size:72.0];
    if (!v10 && ![(__CFString *)PCString::ns_str(a2) hasPrefix:@".SF"])
    {
      *(this + 166) = 3;
      goto LABEL_12;
    }

    *(this + 166) = 2;
    v11 = v10;
  }

  v13 = [v11 fontName];
  a4->var0 = 0;

  PCString::set(a4, v13);
}

void OZProjectNode::OZProjectNode(OZProjectNode *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSceneNode::OZSceneNode(this, a2, a3, a4);
  *v5 = &unk_287289630;
  v5[2] = &unk_287289B00;
  v5[6] = &unk_287289D58;
  PCString::PCString(v11, "DAR Subobject");
  OZChannelFolder::OZChannelFolder((this + 1096), v11, (this + 448), 0x64u, 0xAu, 0);
  PCString::~PCString(v11);
  PCURL::PCURL(v11, @"Channel Project Build In Enable");
  OZChannelBool::OZChannelBool((this + 1224), 1, v11, (this + 448), 0x65u, 0, 0, 0);
  PCString::~PCString(v11);
  PCURL::PCURL(v11, @"Channel Project Build Out Enable");
  OZChannelBool::OZChannelBool((this + 1376), 1, v11, (this + 448), 0x66u, 0, 0, 0);
  PCString::~PCString(v11);
  PCURL::PCURL(v11, @"Channel Project HDR White Level");
  OZChannelPercent::OZChannelPercent((this + 1528), 0.75, v11, (this + 320), 0x67u, 0, 0, 0);
  PCString::~PCString(v11);
  *(this + 1680) = 0;
  OZChannelBase::resetFlag((this + 56), 0x80000, 0);
  OZChannelFolder::resetFoldFlag((this + 56), 0x20000);
  OZChannelFolder::saveStateAsDefault((this + 56));
  OZChannel::setKeyframable((this + 1528), 0);
  OZChannel::setMin((this + 1528), 0.5);
  OZChannelBase::updateIDGenerator(*(this + 20));
  v6 = theApp;
  *&v11[0].var0 = xmmword_260850840;
  PCURL::PCURL(&v10, @"Rig Widget Short Desc");
  OZChannelBase::getNextUniqueID(v7);
  *(this + 136) = OZApplication::createSceneNode(v6, v11);
  PCString::~PCString(&v10);
  v8 = (*(**(this + 136) + 640))();
  OZChannelBase::setNameUnset(v8, 0);
  v9 = (*(**(this + 136) + 640))(*(this + 136));
  OZChannelFolder::push_front((this + 1096), v9);
  (*(**(this + 136) + 256))(*(this + 136), this);
}

void sub_260118030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11)
{
  OZChannelPercent::~OZChannelPercent((v11 + 1528));
  OZChannelBool::~OZChannelBool((v11 + 1376));
  OZChannelBool::~OZChannelBool((v11 + 1224));
  OZChannelFolder::~OZChannelFolder((v11 + 1096));
  OZSceneNode::~OZSceneNode(v11);
  _Unwind_Resume(a1);
}

void OZProjectNode::OZProjectNode(OZProjectNode *this, OZProjectNode *a2, char a3)
{
  OZSceneNode::OZSceneNode(this, a2, a3);
  *v5 = &unk_287289630;
  *(v5 + 16) = &unk_287289B00;
  *(v5 + 48) = &unk_287289D58;
  OZChannelFolder::OZChannelFolder((v5 + 1096), (a2 + 1096), (this + 448));
  OZChannelBool::OZChannelBool((this + 1224), (a2 + 1224), (this + 448));
  OZChannelBool::OZChannelBool((this + 1376), (a2 + 1376), (this + 448));
  OZChannelPercent::OZChannelPercent((this + 1528), (a2 + 1528), (this + 320));
  *(this + 1680) = *(a2 + 1680);
  OZChannelBase::updateIDGenerator(*(this + 20));
  v6 = *(a2 + 136);
  if (v6)
  {
    v7 = (*(**(v6 + 8) + 24))(*(v6 + 8));
    *(this + 136) = v7;
  }

  else
  {
    v8 = theApp;
    v13 = xmmword_260850840;
    PCURL::PCURL(&v12, @"Rig Widget Short Desc");
    OZChannelBase::getNextUniqueID(v9);
    *(this + 136) = OZApplication::createSceneNode(v8, &v13);
    PCString::~PCString(&v12);
    v7 = *(this + 136);
  }

  v10 = (*(*v7 + 640))(v7);
  OZChannelBase::setNameUnset(v10, 0);
  v11 = (*(**(this + 136) + 640))(*(this + 136));
  OZChannelFolder::push_front((this + 1096), v11);
  (*(**(this + 136) + 256))(*(this + 136), this);
}

void sub_260118310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZChannelPercent::~OZChannelPercent((v10 + 1528));
  OZChannelBool::~OZChannelBool((v10 + 1376));
  OZChannelBool::~OZChannelBool((v10 + 1224));
  OZChannelFolder::~OZChannelFolder((v10 + 1096));
  OZSceneNode::~OZSceneNode(v10);
  _Unwind_Resume(a1);
}

void OZProjectNode::~OZProjectNode(OZProjectNode *this)
{
  *this = &unk_287289630;
  *(this + 2) = &unk_287289B00;
  *(this + 6) = &unk_287289D58;
  v2 = *(this + 136);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 136) = 0;
  OZChannelPercent::~OZChannelPercent((this + 1528));
  OZChannelBool::~OZChannelBool((this + 1376));
  OZChannelBool::~OZChannelBool((this + 1224));
  OZChannelFolder::~OZChannelFolder((this + 1096));

  OZSceneNode::~OZSceneNode(this);
}

{
  OZProjectNode::~OZProjectNode(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZProjectNode::~OZProjectNode(OZProjectNode *this)
{
  OZProjectNode::~OZProjectNode((this - 16));
}

{
  OZProjectNode::~OZProjectNode((this - 48));
}

{
  OZProjectNode::~OZProjectNode((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZProjectNode::~OZProjectNode((this - 48));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZProjectNode::operator=(uint64_t a1, const void *a2)
{
  OZSceneNode::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  *(a1 + 1680) = *(v4 + 1680);
  if (*(a1 + 1088))
  {
    v5 = *(v4 + 136);
    v6 = *(a1 + 1088);

    return OZRigWidget::operator=(v6, v5);
  }

  else
  {
    v8 = theApp;
    v12 = xmmword_260850840;
    PCURL::PCURL(&v11, @"Rig Widget Short Desc");
    OZChannelBase::getNextUniqueID(v9);
    *(a1 + 1088) = OZApplication::createSceneNode(v8, &v12);
    PCString::~PCString(&v11);
    v10 = (*(**(a1 + 1088) + 640))();
    OZChannelFolder::push_front((a1 + 1096), v10);
    return (*(**(a1 + 1088) + 256))();
  }
}

OZChannelBase *OZProjectNode::didCreateCopyForCopyOnWrite(OZChannelBase *this)
{
  var10 = this[9].var10;
  if (var10)
  {
    v2 = this;
    this = LODWORD(this->var10);
    if (this >= LODWORD(var10[2].data))
    {
      updated = OZChannelBase::updateIDGenerator(this);
      v4 = v2[9].var10;
      NextUniqueID = OZChannelBase::getNextUniqueID(updated);

      return OZChannelBase::setID(&v4[1].length, NextUniqueID);
    }
  }

  return this;
}

void OZProjectNode::didAddToScene(OZProjectNode *this, OZScene *a2)
{
  OZChannelFolder::push_back((this + 448), (a2 + 752));
  v4 = *(this + 136);
  if (v4)
  {

    OZScene::registerNode(a2, v4);
  }
}

OZSceneNode **OZProjectNode::willRemoveFromScene(OZSceneNode **this, OZScene *a2)
{
  *(a2 + 100) = 0;
  if ((this[210] & 1) == 0)
  {
    return OZScene::unregisterNode(a2, this[136]);
  }

  return this;
}

uint64_t OZProjectNode::didFinishLoadingIntoScene(OZProjectNode *this)
{
  OZSceneNode::didFinishLoadingIntoScene(this);
  result = *(this + 136);
  if (result)
  {
    result = (*(*result + 848))(result);
  }

  *(this + 1680) = 0;
  return result;
}

uint64_t OZProjectNode::didFinishLoadingIntoMotionEffect(OZProjectNode *this)
{
  OZSceneNode::didFinishLoadingIntoMotionEffect(this);
  result = *(this + 136);
  if (result)
  {
    v3 = *(*result + 856);

    return v3();
  }

  return result;
}

uint64_t OZProjectNode::getSourceOperationMask(OZProjectNode *this, OZChannelBase *a2, int a3)
{
  v6 = (*(*this + 272))(this) + 752;
  v7 = a2;
  do
  {
    v7 = v7->var6;
  }

  while (v6 != v7 && v7 != 0);
  if (v6 == v7)
  {
    return 2;
  }

  return OZSceneNode::getSourceOperationMask(this, a2, a3);
}

uint64_t OZProjectNode::allowDrag(uint64_t this, OZFactoryBase *lpsrc, OZChannelBase *a3, char a4, unsigned int *a5, unsigned int *a6)
{
  *a5 = 0;
  if (lpsrc)
  {
    v10 = this;
    if (this)
    {
      if (*a6 - 1 <= 2)
      {
        v11 = this;
        this = (*(*v10 + 272))(v10);
        v12 = this + 752;
        do
        {
          v11 = *(v11 + 48);
        }

        while (v12 != v11 && v11 != 0);
        if (v12 == v11)
        {
          if (*a6 - 2 < 2 || *a6 == 1 && (a3->var7 & 0x1000) != 0 && (this = (*(a3->var0 + 15))(a3), (this & 1) == 0))
          {
            *a5 = a4 & 2;
          }
        }
      }
    }
  }

  return this;
}

uint64_t OZProjectNode::performDragOperation(OZProjectNode *this, OZFactoryBase *lpsrc, OZChannelBase *a3, unsigned int a4, int a5, unsigned int a6, unsigned int a7, const CMTime *a8)
{
  if (!lpsrc)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 48);
  if (a5 == 1)
  {
    if ((a3->var7 & 0x1000) != 0)
    {
      OZChannelFolder::removeDescendant(v12, v11);
      v14 = v16;
      v15 = 0;
      goto LABEL_12;
    }

    return 0;
  }

  var6 = a3->var6;
  if (a5 != 2)
  {
    if (a5 == 3)
    {
      OZChannelFolder::removeDescendant(*(result + 48), result);
      v14 = var6;
      v15 = a3;
LABEL_12:
      OZChannelFolder::insertDescendantAfter(v14, v15, v11);
      return 1;
    }

    return 0;
  }

  OZChannelFolder::removeDescendant(*(result + 48), result);
  OZChannelFolder::insertDescendantBefore(var6, a3, v11);
  return 1;
}

uint64_t OZProjectNode::writeBody(OZProjectNode *this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a4)
  {
    v10 = *(this + 136);
    if (v10)
    {
      if (!OZChannelBase::testFlag((v10 + 56), 8))
      {
        PCSerializerWriteStream::pushScope(a2, &OZProjectNodeScope);
        v11 = *(this + 136);
        v12 = v11[6];
        v11 += 6;
        (*(v12 + 16))(v11, a2, 0);
        (*(*v11 + 24))(v11, a2, 0, 1, 1);
        (*(*a2 + 24))(a2);
        PCSerializerWriteStream::popScope(a2);
      }
    }
  }

  return OZSceneNode::writeBody(this, a2, a3, a4, a5);
}

OZFactory *OZProjectNode::markFactoriesForSerialization(OZFactory **this, PCSerializerWriteStream *a2)
{
  OZSceneNode::markFactoriesForSerialization(this, a2);
  result = this[136];
  if (result)
  {
    v4 = *(*result + 456);

    return v4();
  }

  return result;
}

uint64_t OZProjectNode::parseBegin(OZProjectNode *this, PCSerializerReadStream *a2)
{
  v4 = (*(**(this + 136) + 640))(*(this + 136));
  OZChannelFolder::removeDescendant((this + 1096), v4);
  v5 = (*(*this + 272))(this);
  if (v5)
  {
    v6 = v5;
    OZScene::unregisterNode(v5, *(this + 136));
    OZScene::removeAllDependencies(v6, *(this + 136));
  }

  v7 = *(this + 136);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(this + 136) = 0;
  *(this + 1680) = 1;
  PCSerializerReadStream::pushScope(a2, &OZProjectNodeScope);

  return OZSceneNode::parseBegin(this, a2);
}

uint64_t OZProjectNode::parseElement(OZProjectNode *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  PCSharedCount::PCSharedCount(&v17);
  *v16 = 0;
  if (*(a3 + 2) == 62)
  {
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 113, v16);
    PCSerializerReadStream::getAttributeAsString(a2, a3, 110, &v17);
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v16[1]);
    v6 = OZFactories::lookupFactory(*(theApp + 32), v16[0]);
    if (v6)
    {
      if (v7)
      {
        v8 = v7;
        v9 = (*(*this + 272))(this);
        v10 = (*(*v8 + 168))(v8, &v17, v16[1]);
        *(this + 136) = v11;
        v12 = (*(*v11 + 640))();
        OZChannelBase::setNameUnset(v12, 0);
        v13 = (*(*v10 + 640))(v10);
        OZChannelFolder::push_front((this + 1096), v13);
        (*(*v10 + 256))(v10, this);
        if (v9)
        {
          OZScene::registerNode(v9, v10);
          OZScene::addAllDependencies(v9, v10);
        }

        PCSerializerReadStream::pushHandler(a2, (v10 + 48));
      }
    }
  }

  v14 = OZSceneNode::parseElement(this, a2, a3);
  PCString::~PCString(&v17);
  return v14;
}

uint64_t OZRigWidget::operator=(uint64_t a1, uint64_t a2)
{
  OZSceneNode::operator=(a1, a2);
  *(a1 + 1088) = *(a2 + 1088);
  OZChannelFolder::operator=(a1 + 1096);
  v4 = *(a2 + 1224);
  *(a1 + 1240) = *(a2 + 1240);
  *(a1 + 1224) = v4;
  OZChannelBase::operator=(a1 + 1248, a2 + 1248);
  OZChannelFolder::operator=(a1 + 1400);
  if (a1 == a2)
  {
    v6 = *(a2 + 1576);
    *(a1 + 1580) = *(a2 + 1580);
    *(a1 + 1576) = v6;
  }

  else
  {
    std::vector<OZCurveNode *>::__assign_with_size[abi:ne200100]<OZCurveNode **,OZCurveNode **>((a1 + 1528), *(a2 + 1528), *(a2 + 1536), (*(a2 + 1536) - *(a2 + 1528)) >> 3);
    std::list<unsigned int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<unsigned int,void *>,std::__list_const_iterator<unsigned int,void *>>((a1 + 1552), *(a2 + 1560), a2 + 1552);
    v5 = *(a2 + 1576);
    *(a1 + 1580) = *(a2 + 1580);
    *(a1 + 1576) = v5;
    std::list<OZRigEditModeEntry>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<OZRigEditModeEntry,void *>,std::__list_const_iterator<OZRigEditModeEntry,void *>>(a1 + 1584, *(a2 + 1592), a2 + 1584);
  }

  return a1;
}

uint64_t *std::list<unsigned int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<unsigned int,void *>,std::__list_const_iterator<unsigned int,void *>>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  for (i = a1[1]; a2 != a3 && i != a1; i = i[1])
  {
    *(i + 4) = *(a2 + 16);
    a2 = *(a2 + 8);
  }

  if (i == a1)
  {
    return std::list<unsigned int>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<unsigned int,void *>,std::__list_const_iterator<unsigned int,void *>>(a1, a1, a2, a3);
  }

  else
  {
    return std::list<std::pair<CMTime,double>>::erase(a1, i, a1);
  }
}

uint64_t std::list<unsigned int>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<unsigned int,void *>,std::__list_const_iterator<unsigned int,void *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }

  return a2;
}

void sub_260119434(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void **std::list<OZRigEditModeEntry>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<OZRigEditModeEntry,void *>,std::__list_const_iterator<OZRigEditModeEntry,void *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 8);
  if (a2 != a3 && v6 != a1)
  {
    do
    {
      OZRigEditModeEntry::operator=((v6 + 16), (v4 + 16));
      v4 = *(v4 + 8);
      v6 = *(v6 + 8);
    }

    while (v4 != a3 && v6 != a1);
  }

  if (v6 == a1)
  {

    return std::list<OZRigEditModeEntry>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<OZRigEditModeEntry,void *>,std::__list_const_iterator<OZRigEditModeEntry,void *>>(a1, a1, v4, a3);
  }

  else
  {

    return std::list<OZRigEditModeEntry>::erase(a1, v6, a1);
  }
}

uint64_t std::list<OZRigEditModeEntry>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<OZRigEditModeEntry,void *>,std::__list_const_iterator<OZRigEditModeEntry,void *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    std::__list_imp<OZRigEditModeEntry>::__create_node[abi:ne200100]<OZRigEditModeEntry const&>();
  }

  return a2;
}

void sub_2601195EC(void *a1)
{
  __cxa_begin_catch(a1);
  std::list<OZRigEditModeEntry>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<OZRigEditModeEntry,void *>,std::__list_const_iterator<OZRigEditModeEntry,void *>>(v1);
  __cxa_rethrow();
}

void **std::list<OZRigEditModeEntry>::erase(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v6 = *(*a3 + 1);
    v7 = *a2;
    v7[1] = v6;
    *v6 = v7;
    do
    {
      v8 = v4[1];
      --*(a1 + 16);
      OZChannelRef::~OZChannelRef(v4 + 2);
      operator delete(v4);
      v4 = v8;
    }

    while (v8 != a3);
  }

  return a3;
}

void std::list<OZRigEditModeEntry>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<OZRigEditModeEntry,void *>,std::__list_const_iterator<OZRigEditModeEntry,void *>>(void **a1)
{
  do
  {
    v2 = *a1;
    OZChannelRef::~OZChannelRef(a1 + 2);
    operator delete(a1);
    a1 = v2;
  }

  while (v2);
}

void OZChanObjectManipRef::OZChanObjectManipRef(OZChanObjectManipRef *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChanObjectManipRef_Factory::getInstance(this);
  OZChanObjectRef::OZChanObjectRef(this, Instance, a2, a3, a4, a5);
  *this = &unk_287289DC8;
  *(this + 2) = &unk_28728A148;
  *(this + 154) = 0;
  *(this + 7) |= 0x1000010000uLL;
  *(this + 76) = 1;
}

uint64_t OZChanObjectManipRef_Factory::getInstance(OZChanObjectManipRef_Factory *this)
{
  if (atomic_load_explicit(&OZChanObjectManipRef_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChanObjectManipRef_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChanObjectManipRef_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChanObjectManipRef_Factory::_instance;
}

void OZChanObjectManipRef::OZChanObjectManipRef(OZChanObjectManipRef *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  OZChanObjectRef::OZChanObjectRef(this, a2, a3, a4, a5, a6);
  *v6 = &unk_287289DC8;
  *(v6 + 16) = &unk_28728A148;
  *(v6 + 154) = 0;
  *(v6 + 56) |= 0x1000010000uLL;
  *(v6 + 152) = 1;
}

void OZChanObjectManipRef::OZChanObjectManipRef(OZChanObjectManipRef *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChanObjectRef::OZChanObjectRef(this, a2, a3, a4);
  *v4 = &unk_287289DC8;
  *(v4 + 16) = &unk_28728A148;
  *(v4 + 154) = 0;
  *(v4 + 56) |= 0x1000010000uLL;
  *(v4 + 152) = 1;
}

void OZChanObjectManipRef::OZChanObjectManipRef(OZChanObjectManipRef *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZChanObjectRef::OZChanObjectRef(this, a2, a3);
  *v4 = &unk_287289DC8;
  *(v4 + 16) = &unk_28728A148;
  *(v4 + 154) = 0;
  *(v4 + 152) = a2[1].var5;
  *(v4 + 154) = BYTE2(a2[1].var5);
}

void non-virtual thunk toOZChanObjectManipRef::~OZChanObjectManipRef(OZChanObjectManipRef *this)
{
  OZChanObjectRef::~OZChanObjectRef((this - 16));
}

{
  OZChanObjectRef::~OZChanObjectRef((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChanObjectManipRef::~OZChanObjectManipRef(OZChanObjectManipRef *this)
{
  OZChanObjectRef::~OZChanObjectRef(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZChanObjectManipRef::setObjectID(OZChannelBase *this, unsigned int a2, uint64_t a3)
{
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  if (!ObjectManipulator || (v8 = (*(*ObjectManipulator + 264))(ObjectManipulator), !a2) || !v8)
  {
    v11 = 0.0;
    v7.n128_u64[0] = 0;
    result = (*(this->var0 + 89))(this, MEMORY[0x277CC08F0], a3, v7);
LABEL_7:
    if ((BYTE1(this[1].var5) & 1) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

  Object = OZScene::getObject(v8, a2);
  if ((*(this->var0 + 109))(this, Object))
  {
    v11 = a2;
    v10.n128_f64[0] = a2;
    result = (*(this->var0 + 89))(this, MEMORY[0x277CC08F0], a3, v10);
    goto LABEL_7;
  }

  result = (*(this->var0 + 92))(this, MEMORY[0x277CC08F0]);
  if (BYTE1(this[1].var5) != 1)
  {
    return result;
  }

  v11 = a2;
LABEL_8:

  return OZChannel::setDefaultValue(this, v11);
}

uint64_t OZChanObjectManipRef::getObject(OZChannelBase *this)
{
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  if (!ObjectManipulator)
  {
    return 0;
  }

  v3 = (*(*ObjectManipulator + 264))(ObjectManipulator);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  ValueAsUint = OZChannel::getValueAsUint(this, MEMORY[0x277CC08F0], 0.0);

  return OZScene::getObject(v4, ValueAsUint);
}

uint64_t OZChanObjectManipRef::setObject(OZChanObjectManipRef *this, OZObjectManipulator *a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (*(*a2 + 256))(a2);
    a2 = (*(*v5 + 56))(v5);
  }

  v6 = *(*this + 864);

  return v6(this, a2, a3);
}

uint64_t OZChanObjectManipRef::canReferenceObject(OZChannelBase *this, const OZObjectManipulator *a2)
{
  if (!a2)
  {
    return 0;
  }

  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  v5 = ObjectManipulator ? (*(*ObjectManipulator + 264))(ObjectManipulator) : 0;
  if (v5 != (*(*a2 + 264))(a2))
  {
    return 0;
  }

  v7 = OZChannelBase::getObjectManipulator(this);
  if (!v7)
  {
    return 1;
  }

  v8 = *(*v7 + 408);

  return v8();
}

void OZChanObjectManipRef_Factory::OZChanObjectManipRef_Factory(OZChanObjectManipRef_Factory *this)
{
  v3 = xmmword_260848710;
  v4 = xmmword_2608512C0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_28728A1B8;
  *(this + 16) = &unk_28728A288;
}

_DWORD *OZPlaybackEngine::OZPlaybackEngine(_DWORD *result, int a2)
{
  *result = a2;
  result[1] = 0;
  return result;
}

double OZPlaybackEngine::OZPlaybackEngine(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double OZPlaybackEngine::operator=(double *a1, double *a2)
{
  if (a1 != a2)
  {
    result = *a2;
    *a1 = *a2;
  }

  return result;
}

void OZRenderParams::OZRenderParams(OZRenderParams *this)
{
  v2 = OZRenderState::OZRenderState(this);
  LOBYTE(v2[1].var0.var0) = 0;
  *&v2[1].var0.var1 = 0u;
  *&v2[1].var1 = 0u;
  *&v2[1].var3 = 0u;
  PCImageAttributes::PCImageAttributes(&v2[1].var5);
  PCWorkingColorVector::PCWorkingColorVector((this + 392));
  PCWorkingColorVector::PCWorkingColorVector((this + 408));
  *(this + 424) = 1;
  v3 = *(this + 24);
  *(this + 27) = v3;
  *(this + 28) = v3;
  *&v3 = 0x200000002;
  *(&v3 + 1) = 0x200000002;
  *(this + 29) = v3;
  *(this + 120) = 16842752;
  *(this + 123) = 0;
  *(this + 496) = 0;
  *(this + 121) = 0;
  *(this + 488) = 0;
  *(this + 125) = 6;
  *(this + 63) = 0x3FF0000000000000;
  *(this + 128) = 16842752;
  *(this + 258) = 1;
  v5 = PCColor::CLEAR(v4);
  v6 = *v5;
  v7 = *(v5 + 2);
  *(this + 536) = *(v5 + 1);
  *(this + 552) = v7;
  *(this + 520) = v6;
  v8 = *(v5 + 6);
  *(this + 71) = v8;
  if (v8)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v8);
  }

  *(this + 144) = 0;
  *(this + 584) = 0u;
  *(this + 75) = 0xBFF0000000000000;
  *(this + 76) = 0xBFF0000000000000;
  *(this + 616) = 0u;
  *(this + 79) = 0xBFF0000000000000;
  *(this + 80) = 0xBFF0000000000000;
  *(this + 648) = xmmword_260343AA0;
  *(this + 664) = 0u;
  *(this + 85) = 0xBFF0000000000000;
  *(this + 86) = 0xBFF0000000000000;
  *(this + 696) = 0;
  *(this + 175) = 0;
  PCColorDescription::PCColorDescription((this + 704));
  *(this + 728) = 1;
  *(this + 184) = PCRenderModel::getDefaultBlendingGamma(v9);
  PCColorDescription::PCColorDescription(this + 31);
  *(this + 768) = 1;
  *(this + 194) = 0;
  *(this + 780) = 0;
  *(this + 201) = 0;
  *(this + 49) = 0u;
  *(this + 800) = 0;
  *(this + 116) = 0x3FF0000000000000;
  *(this + 111) = 0x3FF0000000000000;
  *(this + 106) = 0x3FF0000000000000;
  *(this + 101) = 0x3FF0000000000000;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 856) = 0u;
  *(this + 872) = 0u;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 936) = 0;
  *(this + 940) = 0;
  *(this + 952) = 0u;
  v10 = MEMORY[0x277CC0898];
  v11 = *MEMORY[0x277CC0898];
  *(this + 968) = *MEMORY[0x277CC0898];
  v12 = *(v10 + 2);
  *(this + 123) = v12;
  *(this + 124) = 0;
  *(this + 63) = 0u;
  *(this + 125) = this + 1008;
  *(this + 1032) = 0u;
  *(this + 128) = this + 1032;
  *(this + 66) = 0u;
  *(this + 131) = this + 1056;
  *(this + 134) = 0x3FF0000000000000;
  *(this + 135) = 0;
  *(this + 68) = v11;
  *(this + 138) = v12;
  *(this + 1112) = v11;
  *(this + 141) = v12;
  *(this + 71) = v11;
  *(this + 144) = v12;
  v13 = *(v10 + 2);
  *(this + 147) = v13;
  v14 = *v10;
  *(this + 1160) = *v10;
  *(this + 150) = v13;
  *(this + 74) = v14;
  *(this + 302) = 0;
  *(this + 606) = 1;
  *(this + 616) = 0;
  *(this + 76) = 0u;
  operator new();
}

void sub_26011A74C(_Unwind_Exception *a1)
{
  if (*v6)
  {
    (*(**v6 + 24))(*v6);
  }

  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(v2);
  PCSharedCount::~PCSharedCount((v1 + 1304));
  PCSharedCount::~PCSharedCount((v1 + 1288));
  PCSharedCount::~PCSharedCount((v1 + 1248));
  v8 = *(v1 + 1224);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v1 + 1048, *v5);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v1 + 1024, *v4);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v1 + 1000, *v3);
  PCCFRef<CGColorSpace *>::~PCCFRef((v1 + 792));
  PCCFRef<CGColorSpace *>::~PCCFRef((v1 + 784));
  PCCFRef<CGColorSpace *>::~PCCFRef((v1 + 744));
  PCCFRef<CGColorSpace *>::~PCCFRef((v1 + 704));
  PCCFRef<CGColorSpace *>::~PCCFRef((v1 + 568));
  PCCFRef<CGColorSpace *>::~PCCFRef((v1 + 344));
  v9 = *(v1 + 312);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(v1 + 296);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

double OZRenderParams::setWidth(OZRenderParams *this, int a2)
{
  *(this + 81) = a2;
  result = 0.0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  return result;
}

double OZRenderParams::setHeight(OZRenderParams *this, int a2)
{
  *(this + 82) = a2;
  result = 0.0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  return result;
}

double OZRenderParams::setDepth(OZRenderParams *this, int a2)
{
  *(this + 83) = a2;
  result = 0.0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  return result;
}

double OZRenderParams::setImageType(uint64_t a1, int a2)
{
  *(a1 + 320) = a2;
  result = 0.0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  return result;
}

double OZRenderParams::setNumChannels(OZRenderParams *this, int a2)
{
  *(this + 84) = a2;
  result = 0.0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  return result;
}

uint64_t OZRenderParams::deleteControl(OZRenderParams *this)
{
  result = *(this + 34);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 34) = 0;
  return result;
}

uint64_t OZRenderParams::getHash(OZRenderParams *this)
{
  if (!(*(this + 99) | *(this + 98) | *(this + 100) | *(this + 101)))
  {
    OZRenderParams::calcHash(this);
  }

  return this + 392;
}

int8x8_t *OZRenderParams::getHashWithoutTime@<X0>(int8x8_t *this@<X0>, int8x8_t *a2@<X8>)
{
  v2 = this[51];
  v3 = this[52];
  if (!*&vorr_s8(v3, v2))
  {
    operator new();
  }

  *a2 = v2;
  a2[1] = v3;
  return this;
}

float64x2_t OZRenderParams::getRenderBounds@<Q0>(OZRenderParams *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 75) <= 0.0)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    v4 = *(this + 324);
    v5.i64[0] = v4;
    v5.i64[1] = HIDWORD(v4);
    result = vcvtq_f64_u64(v5);
    *(a2 + 16) = result;
  }

  else
  {
    result = *(this + 584);
    v3 = *(this + 600);
    *a2 = result;
    *(a2 + 16) = v3;
  }

  return result;
}

float64x2_t OZRenderParams::getRenderGate@<Q0>(OZRenderParams *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 79) <= 0.0)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    v4 = *(this + 324);
    v5.i64[0] = v4;
    v5.i64[1] = HIDWORD(v4);
    result = vcvtq_f64_u64(v5);
    *(a2 + 16) = result;
  }

  else
  {
    result = *(this + 616);
    v3 = *(this + 632);
    *a2 = result;
    *(a2 + 16) = v3;
  }

  return result;
}

void OZRenderParams::getPixelTransform(OZRenderParams *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 120) = 0x3FF0000000000000;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 40) = 0x3FF0000000000000;
  *a2 = 0x3FF0000000000000;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  if (*(this + 936) == 1)
  {
    v3 = this + 808;
    if ((this + 808) != a2)
    {
      for (i = 0; i != 128; i += 32)
      {
        v5 = (a2 + i);
        v6 = *&v3[i + 16];
        *v5 = *&v3[i];
        v5[1] = v6;
      }
    }
  }

  else
  {
    v7 = (this + 324);
    v8.f64[0] = *(this + 79);
    if (v8.f64[0] <= 0.0)
    {
      v10.i64[0] = *v7;
      v10.i64[1] = HIDWORD(*v7);
      v8 = vcvtq_f64_u64(v10);
      v9 = 0uLL;
    }

    else
    {
      v9 = *(this + 616);
      v8.f64[1] = *(this + 80);
    }

    v11 = *(this + 24);
    v20 = vmulq_f64(v9, v11);
    v21 = vmulq_f64(v8, v11);
    v24 = v20;
    v25 = v21;
    v12 = *(this + 5);
    v13 = *(this + 160);
    v22 = v13;
    if (v13)
    {
      v14 = (v13 + *(*v13 - 24));
    }

    else
    {
      v14 = 0;
    }

    PCSharedCount::PCSharedCount(&v23, v14);
    if (v22)
    {
      v15 = v12 / (*(*v22 + 688))(v22);
      v24.f64[0] = v15 * v20.f64[0];
      v25.f64[0] = v15 * v21.f64[0];
      (*(*v22 + 296))(v22, &v24, a2);
      v16 = 1.0 / v15;
      if (1.0 / v15 != 1.0)
      {
        v17 = vmulq_n_f64(*a2, v16);
        v18 = vmulq_n_f64(*(a2 + 16), v16);
        *a2 = v17;
        *(a2 + 16) = v18;
      }

      v19 = 1.0 / v12;
      if (1.0 / v12 != 1.0)
      {
        *a2 = v19 * *a2;
        *(a2 + 32) = v19 * *(a2 + 32);
        *(a2 + 64) = v19 * *(a2 + 64);
        *(a2 + 96) = v19 * *(a2 + 96);
      }
    }

    PCSharedCount::~PCSharedCount(&v23);
  }
}

__n128 OZRenderParams::getResolution@<Q0>(OZRenderParams *this@<X0>, __n128 *a2@<X8>)
{
  result = *(this + 24);
  *a2 = result;
  return result;
}

float64_t OZRenderParams::getROI@<D0>(OZRenderParams *this@<X0>, float64x2_t *a2@<X8>)
{
  if (*(this + 164) < 1)
  {
    OZRenderParams::getPixelTransform(this, &v19);
    v5.f64[0] = *(this + 75);
    if (v5.f64[0] <= 0.0)
    {
      LODWORD(v5.f64[0]) = *(this + 81);
      *&v7 = *&v5.f64[0];
      LODWORD(v5.f64[0]) = *(this + 82);
      v8 = *&v5.f64[0];
      v6.f64[0] = 0.0;
      v5 = v7;
      v6.f64[1] = v8;
    }

    else
    {
      v6.f64[0] = *(this + 73);
      v5.f64[1] = *(this + 74);
      v6.f64[1] = *(this + 76);
    }

    v9 = *(this + 24);
    v10 = vmulq_f64(v5, v9);
    v11 = vmulq_f64(v6, v9);
    v9.f64[0] = v11.f64[0];
    v9.f64[1] = v10.f64[1];
    v4 = vaddq_f64(v10, v11);
    __asm { FMOV            V1.2D, #0.5 }

    v17 = vdupq_n_s64(0x3E7AD7F29ABCAF48uLL);
    *&v9.f64[0] = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(vaddq_f64(v9, _Q1), v17))));
    *&v4.f64[0] = vsub_s32(vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(vaddq_f64(v4, _Q1), v17)))), *&v9.f64[0]);
    a2->f64[0] = v9.f64[0];
    a2->f64[1] = v4.f64[0];
  }

  else
  {
    v4 = *(this + 648);
    *a2 = v4;
  }

  return v4.f64[0];
}

uint64_t OZRenderParams::layoutElementAtSize(uint64_t a1, uint64_t a2, int *a3)
{
  v39 = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  v40 = _Q0;
  (*(*a2 + 16))(a2, &v39, a1);
  v10 = v40.f64[0];
  if (v40.f64[0] < 0.0)
  {
    return 0;
  }

  v11 = v40.f64[1];
  if (v40.f64[1] < 0.0)
  {
    return 0;
  }

  v12 = 0;
  __asm { FMOV            V3.2D, #0.5 }

  v14 = vmulq_f64(v40, _Q3);
  v15 = *a3;
  *(a1 + 324) = *a3;
  *(a1 + 648) = 0;
  *(a1 + 656) = v15;
  v16 = *a3 / v10;
  if (v16 > a3[1] / v11)
  {
    v16 = a3[1] / v11;
  }

  *(a1 + 432) = v16;
  *(a1 + 440) = v16;
  *(a1 + 448) = v16;
  *(a1 + 456) = v16;
  *(a1 + 24) = v16;
  *(a1 + 32) = v16;
  *(a1 + 392) = 0uLL;
  *(a1 + 408) = 0uLL;
  v17 = vsubq_f64(v39, vaddq_f64(v14, v39));
  v18 = vmulq_n_f64(v17, v16);
  v19 = v10 * v16;
  v20 = v11 * v16;
  v21.i64[0] = v15;
  v21.i64[1] = SHIDWORD(v15);
  v22 = vaddq_f64(vaddq_f64(vmulq_f64(vcvtq_f64_s64(v21), _Q3), 0), v18);
  *(a1 + 664) = v22;
  *(a1 + 680) = v19;
  *(a1 + 688) = v20;
  v29 = 0;
  v27 = 0uLL;
  v31 = 0;
  v33 = 0uLL;
  v37 = 0;
  v38 = 0x3FF0000000000000;
  v35 = 0;
  v36 = 0;
  v26 = v19 / v10;
  v28 = v22.f64[0] - v19 * v17.f64[0] / v10;
  v30 = v20 / v11;
  v32 = v22.f64[1] - vmuld_lane_f64(v20, v17, 1) / v11;
  v34 = xmmword_2603426F0;
  do
  {
    v23 = (a1 + 808 + v12);
    v24 = *(&v27 + v12 + 8);
    *v23 = *(&v26 + v12);
    v23[1] = v24;
    v12 += 32;
  }

  while (v12 != 128);
  result = 1;
  *(a1 + 936) = 1;
  return result;
}

double OZRenderParams::setImageAttr(uint64_t a1, uint64_t a2)
{
  PCImageAttributes::operator=(a1 + 320, a2);
  v3 = *(a1 + 384);
  if (PGGetPerThreadContext() == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *(a1 + 384) = v4;
  result = 0.0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  return result;
}

PGContext *OZRenderParams::setImageContext(OZRenderParams *this, PGContext *a2)
{
  result = PGGetPerThreadContext();
  if (result == a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  *(this + 48) = v5;
  return result;
}

uint64_t OZRenderParams::getImageContext(OZRenderParams *this)
{
  result = *(this + 48);
  if (!result)
  {
    return PGGetPerThreadContext();
  }

  return result;
}

CGColorSpace **OZRenderParams::setWorkingColorDescription(CGColorSpace **this, const FxColorDescription *a2)
{
  result = PCCFRef<CGColorSpace *>::operator=(this + 88, &a2->_pcColorDesc._colorSpaceRef._obj);
  v5 = *&a2->_pcColorDesc._dynamicRange;
  *(this + 180) = LODWORD(a2->_pcColorDesc._toneMapMethod._gain);
  this[89] = v5;
  *(this + 728) = a2->_isPremultiplied;
  return result;
}

CGColorSpace **OZRenderParams::setWorkingColorDescriptionFromRenderNode(uint64_t a1, uint64_t a2, int a3)
{
  (*(*a2 + 64))(v6, a2);
  FxColorDescription::FxColorDescription(v7, v6, a3);
  PCCFRef<CGColorSpace *>::~PCCFRef(v6);
  PCCFRef<CGColorSpace *>::operator=((a1 + 704), v7);
  *(a1 + 712) = v7[1];
  *(a1 + 720) = v8;
  *(a1 + 728) = v9;
  return PCCFRef<CGColorSpace *>::~PCCFRef(v7);
}

void sub_26011B29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

uint64_t OZRenderParams::isDynamicRangeTrackingRender(FxColorDescription *this)
{
  if (FxColorDescription::isSDR(this + 22))
  {
    return 1;
  }

  return FxColorDescription::isHDR(this + 22);
}

CGColorSpace **OZRenderParams::setOutputColorDescription(CGColorSpace **this, const FxColorDescription *a2)
{
  result = PCCFRef<CGColorSpace *>::operator=(this + 93, &a2->_pcColorDesc._colorSpaceRef._obj);
  v5 = *&a2->_pcColorDesc._dynamicRange;
  *(this + 190) = LODWORD(a2->_pcColorDesc._toneMapMethod._gain);
  this[94] = v5;
  *(this + 768) = a2->_isPremultiplied;
  return result;
}

char *OZRenderParams::getOutputColorDescription(OZRenderParams *this)
{
  v2 = this + 744;
  if (FxColorDescription::getCGColorSpace((this + 744)))
  {
    return v2;
  }

  else
  {
    return this + 704;
  }
}

double OZRenderParams::setState(OZRenderParams *this, const OZRenderState *a2)
{
  OZRenderState::operator=(this, &a2->var0.var0);
  v4 = *&a2->var1;
  *(this + 27) = v4;
  *(this + 28) = v4;
  result = 0.0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  return result;
}

double OZRenderParams::setResolution(_OWORD *a1, _OWORD *a2)
{
  a1[27] = *a2;
  a1[28] = *a2;
  *(a1 + 24) = *a2;
  result = 0.0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  return result;
}

double OZRenderParams::setResolutionDynamic(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 448) = *a2;
  if (*(a1 + 424) == 1)
  {
    *(a1 + 24) = *(a1 + 448);
    *&v2 = 0;
    *(a1 + 392) = 0u;
    *(a1 + 408) = 0u;
  }

  return *&v2;
}

double OZRenderParams::setRenderQuality(uint64_t a1, int a2)
{
  *(a1 + 464) = a2;
  *(a1 + 468) = a2;
  result = 0.0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  return result;
}

uint64_t OZRenderParams::getRenderQuality(OZRenderParams *this)
{
  v1 = 464;
  if (*(this + 424))
  {
    v1 = 468;
  }

  return *(this + v1);
}

double OZRenderParams::setTextRenderQuality(uint64_t a1, int a2)
{
  *(a1 + 472) = a2;
  *(a1 + 476) = a2;
  result = 0.0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  return result;
}

uint64_t OZRenderParams::getTextRenderQuality(OZRenderParams *this)
{
  v1 = 472;
  if (*(this + 424))
  {
    v1 = 476;
  }

  return *(this + v1);
}

double OZRenderParams::setDoHighQualityResampling(OZRenderParams *this, char a2)
{
  *(this + 480) = a2;
  *(this + 481) = a2;
  result = 0.0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  return result;
}

uint64_t OZRenderParams::getDoHighQualityResampling(OZRenderParams *this)
{
  v1 = 480;
  if (*(this + 424))
  {
    v1 = 481;
  }

  return *(this + v1);
}

double OZRenderParams::setDoShapeAntialiasing(OZRenderParams *this, char a2)
{
  *(this + 482) = a2;
  *(this + 483) = a2;
  result = 0.0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  return result;
}

uint64_t OZRenderParams::getDoShapeAntialiasing(OZRenderParams *this)
{
  v1 = 482;
  if (*(this + 424))
  {
    v1 = 483;
  }

  return *(this + v1);
}

double OZRenderParams::setDo3DIntersectionAntialiasing(OZRenderParams *this, char a2)
{
  *(this + 484) = a2;
  *(this + 485) = a2;
  result = 0.0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  return result;
}

uint64_t OZRenderParams::getDo3DIntersectionAntialiasing(OZRenderParams *this)
{
  v1 = 484;
  if (*(this + 424))
  {
    v1 = 485;
  }

  return *(this + v1);
}

uint64_t OZRenderParams::getReducedResolutionMedia(OZRenderParams *this)
{
  if (*(this + 424) == 1)
  {
    v1 = *(this + 486);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t OZRenderParams::getReducedResolutionOverride(OZRenderParams *this)
{
  if (*(this + 424) == 1)
  {
    v1 = *(this + 487);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void OZRenderParams::setDestinationDevice(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 296);
  *(a1 + 288) = v3;
  *(a1 + 296) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void OZRenderParams::setRenderDevice(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 312);
  *(a1 + 304) = v3;
  *(a1 + 312) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void *OZRenderParams::getRenderGPU@<X0>(OZRenderParams *this@<X0>, void *a2@<X8>)
{
  result = *(this + 38);
  {
    v5 = *(this + 39);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void OZRenderParams::SharedInfo::~SharedInfo(OZRenderParams::SharedInfo *this)
{
  *this = &unk_28728A2E8;
  *(this + 11) = &unk_28728A318;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 64, *(this + 9));
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(this + 32);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 8, *(this + 2));
  *(this + 11) = &unk_2872DEA38;
  *(this + 104) = 0;
  PCWeakCount::~PCWeakCount(this + 12);
}

{
  *this = &unk_28728A2E8;
  *(this + 11) = &unk_28728A318;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 64, *(this + 9));
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(this + 32);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 8, *(this + 2));
  *(this + 11) = &unk_2872DEA38;
  *(this + 104) = 0;
  PCWeakCount::~PCWeakCount(this + 12);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toOZRenderParams::SharedInfo::~SharedInfo(OZRenderParams::SharedInfo *this)
{
  v1 = this + *(*this - 24);
  *v1 = &unk_28728A2E8;
  *(v1 + 11) = &unk_28728A318;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((v1 + 64), *(v1 + 9));
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray((v1 + 32));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((v1 + 8), *(v1 + 2));
  *(v1 + 11) = &unk_2872DEA38;
  v1[104] = 0;

  PCWeakCount::~PCWeakCount(v1 + 12);
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_28728A2E8;
  *(v1 + 11) = &unk_28728A318;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((v1 + 64), *(v1 + 9));
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray((v1 + 32));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((v1 + 8), *(v1 + 2));
  *(v1 + 11) = &unk_2872DEA38;
  v1[104] = 0;
  PCWeakCount::~PCWeakCount(v1 + 12);

  JUMPOUT(0x2666E9F00);
}

__n128 OZRotoshape::makeShapeRenderState@<Q0>(OZRotoshape *this@<X0>, const OZRenderState *a2@<X1>, CGColorSpaceRef space@<X2>, float a4@<S0>, uint64_t a5@<X8>)
{
  v8 = MEMORY[0x277CC08F0];
  *a5 = *MEMORY[0x277CC08F0];
  *(a5 + 16) = *(v8 + 16);
  *(a5 + 24) = 0;
  *(a5 + 26) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a5 + 32) = _Q0;
  *(a5 + 48) = 2;
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  *(a5 + 56) = 0;
  PCColorSpaceHandle::PCColorSpaceHandle((a5 + 80), space);
  *(a5 + 88) = a4;
  *a5 = *&a2->var0.var0;
  *(a5 + 16) = a2->var0.var3;
  *(a5 + 24) = a2->var10;
  *(a5 + 26) = a2->var16;
  result = *&a2->var1;
  *(a5 + 32) = result;
  *(a5 + 48) = 1;
  return result;
}

void OZRotoshapeRender::OZRotoshapeRender(OZRotoshapeRender *this, OZRotoshape *a2, const OZRenderParams *a3)
{
  *(this + 184) = &unk_2872DEA38;
  *(this + 185) = 0;
  *(this + 1488) = 1;
  LiImageSource::LiImageSource(this, &off_28728A448);
  *this = &unk_28728A360;
  *(this + 184) = &unk_28728A428;
  *(this + 2) = a2;
  OZRenderParams::OZRenderParams((this + 24), a3);
  *(this + 181) = 0;
  PCSharedCount::PCSharedCount(this + 182);
  WorkingColorSpace = OZRenderParams::getWorkingColorSpace(a3);
  BlendingGamma = OZRenderParams::getBlendingGamma(a3);
  OZRotoshape::makeShapeRenderState(a2, a3, WorkingColorSpace, BlendingGamma, v8);
  *(this + 1464) = OZShape::shouldDrawOnlyParticles(a2 + 18976, v8);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v9);
  OZChannelBase::setRangeName(a3, &v10);
  operator new();
}

void sub_26011BD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  PCSharedCount::~PCSharedCount((v6 - 72));
  PCSharedCount::~PCSharedCount(v5 + 1);
  Render360GroupAsEquirectSentry::~Render360GroupAsEquirectSentry(va);
  OZRenderParams::~OZRenderParams(va1);
  OZRenderGraphState::~OZRenderGraphState(&STACK[0x5E8]);
  LiGraphBuilder::~LiGraphBuilder(&STACK[0x718]);
  PCSharedCount::~PCSharedCount((v3 + 1456));
  OZRenderParams::~OZRenderParams((v3 + 24));
  OZChannelBase::setRangeName(v3, &off_28728A448);
  *(v3 + 1472) = v4;
  *(v3 + 1488) = 0;
  PCWeakCount::~PCWeakCount((v3 + 1480));
  _Unwind_Resume(a1);
}

uint64_t OZRotoshapeRender::getBoundary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 1464) == 1)
  {
    v3 = *(a1 + 1448);
    if (!v3)
    {
      throw_PCNullPointerException(1);
    }

    v4 = *(*v3 + 24);

    return v4();
  }

  else
  {
    (*(**(a1 + 16) + 232))(*(a1 + 16), a3, a1 + 24);
    return 1;
  }
}

uint64_t OZRotoshapeRender::estimateRenderMemory(uint64_t a1)
{
  if (*(a1 + 1464) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 1448);
  if (!v2)
  {
    throw_PCNullPointerException(1);
  }

  v3 = *(*v2 + 112);

  return v3();
}

uint64_t OZRotoshapeRender::pixelTransformSupport(OZRotoshapeRender *this, const LiRenderParameters *a2)
{
  if (*(a2 + 144))
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

CGColorSpace **OZRotoshapeRender::getHelium@<X0>(OZRotoshapeRender *this@<X0>, LiAgent *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(this + 2);
  if (*(this + 1464) == 1)
  {
    OZRotoshape::prepForGetHelium(*(this + 2), a2, (this + 24));
    v7 = *(this + 181);
    if (!v7)
    {
      throw_PCNullPointerException(1);
    }

    return LiImageSource::getHeliumPublic(a3, v7, a2);
  }

  else
  {
    DoShapeAntialiasing = OZRenderParams::getDoShapeAntialiasing((this + 24));

    return OZRotoshape::getHelium(v6, (this + 24), a2, (this + 24), DoShapeAntialiasing, a3);
  }
}

CGColorSpace **OZRotoshape::prepForGetHelium(OZRotoshape *this, LiAgent *a2, FxColorDescription *a3)
{
  WorkingColorSpace = OZRenderParams::getWorkingColorSpace(a3);
  BlendingGamma = OZRenderParams::getBlendingGamma(a3);
  OZRotoshape::makeShapeRenderState(this, a3, WorkingColorSpace, BlendingGamma, v14);
  v7 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v13, v7);
  v10[2] = v14[2];
  v10[3] = v14[3];
  v10[4] = v14[4];
  v10[0] = v14[0];
  v10[1] = v14[1];
  v11 = space;
  if (space)
  {
    PCCFRefTraits<CGColorSpace *>::retain(space);
  }

  v12 = v16;
  CurrentRenderParams = OZShape::getCurrentRenderParams(this + 18976, v10);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v11);
  OZMoShape::validateChannels((this + 18976), v14, CurrentRenderParams, 0, 1);
  OZLockingGroup::WriteSentry::~WriteSentry(v13);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&space);
}

void sub_26011C140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, CGColorSpace *a33)
{
  PCCFRef<CGColorSpace *>::~PCCFRef((v33 + 80));
  OZLockingGroup::WriteSentry::~WriteSentry(&a22);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a33);
  _Unwind_Resume(a1);
}

CGColorSpace **OZRotoshape::getHelium@<X0>(OZRotoshape *this@<X0>, const OZRenderState *a2@<X1>, LiAgent *a3@<X2>, FxColorDescription *a4@<X4>, uint64_t a5@<X3>, HGHWMultiBlend **a6@<X8>)
{
  result = OZRotoshape::_getHeliumInternal(this, a2, a3, a4, a5, a6);
  if (*a6)
  {
    PCColorDescription::PCColorDescription(&space._pcColorDesc);
    space._isPremultiplied = 1;
    if (LiAgent::isDynamicRangeTrackingRender(a3))
    {
      RequestedColorDescription = LiAgent::getRequestedColorDescription(a3);
      FxColorDescription::FxColorDescription(&v17, RequestedColorDescription, 0);
      v11 = v17;
      if (space._pcColorDesc._colorSpaceRef._obj)
      {
        if (space._pcColorDesc._colorSpaceRef._obj != v17)
        {
          PCCFRefTraits<CGColorSpace *>::release(space._pcColorDesc._colorSpaceRef._obj);
          v11 = v17;
        }
      }

      space._pcColorDesc._colorSpaceRef._obj = v11;
      v17 = 0;
      space._pcColorDesc._dynamicRange = v18;
      space._pcColorDesc._toneMapMethod = v19;
      space._isPremultiplied = v20;
      PCCFRef<CGColorSpace *>::~PCCFRef(&v17);
    }

    else
    {
      RequestedColorSpace = LiAgent::getRequestedColorSpace(a3);
      FxMakeLegacyColorDescription(RequestedColorSpace, 1, &v17);
      v13 = v17;
      if (space._pcColorDesc._colorSpaceRef._obj && space._pcColorDesc._colorSpaceRef._obj != v17)
      {
        PCCFRefTraits<CGColorSpace *>::release(space._pcColorDesc._colorSpaceRef._obj);
        v13 = v17;
      }

      space._pcColorDesc._colorSpaceRef._obj = v13;
      v17 = 0;
      space._pcColorDesc._dynamicRange = v18;
      space._pcColorDesc._toneMapMethod = v19;
      space._isPremultiplied = v20;
      PCCFRef<CGColorSpace *>::~PCCFRef(&v17);
      if (OZRenderParams::isRenderForHDR_Deprecated(a4))
      {
        WorkingColorSpace = OZRenderParams::getWorkingColorSpace(a4);
        FxApplySDRToHDR(a6, WorkingColorSpace, 1, &v17);
        v15 = *a6;
        v16 = v17;
        if (*a6 == v17)
        {
          if (v15)
          {
            (*(*v17 + 24))(v17);
          }
        }

        else
        {
          if (v15)
          {
            (*(*v15 + 24))(v15);
            v16 = v17;
          }

          *a6 = v16;
        }
      }
    }

    LiAgent::setActualColorDescription(a3, &space);
    return PCCFRef<CGColorSpace *>::~PCCFRef(&space._pcColorDesc._colorSpaceRef._obj);
  }

  return result;
}

void sub_26011C340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a2)
  {
    (*(*a2 + 24))(a2);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  if (*v5)
  {
    (*(**v5 + 24))(*v5);
  }

  _Unwind_Resume(a1);
}

void OZRotoshape::getBorderSize(OZRotoshape *this, const OZRenderState *a2, double *a3, double *a4)
{
  v8 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::ReadSentry::ReadSentry(v16, v8);
  OZShapeRenderState::OZShapeRenderState(&v9);
  v9 = *&a2->var0.var0;
  var3 = a2->var0.var3;
  var10 = a2->var10;
  var16 = a2->var16;
  v13 = *&a2->var1;
  v14 = 1;
  OZShape::getBorderSize(this + 18976, &v9, a3, a4);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v15);
  OZLockingGroup::ReadSentry::~ReadSentry(v16);
}

void sub_26011C494(_Unwind_Exception *a1)
{
  PCCFRef<CGColorSpace *>::~PCCFRef((v1 + 80));
  OZLockingGroup::ReadSentry::~ReadSentry((v2 - 40));
  _Unwind_Resume(a1);
}

CGColorSpace **OZRotoshape::setLithiumTransform(OZRotoshape *this, LiSceneObject *a2, OZRenderState *a3)
{
  OZElement::setLithiumTransform((this + 200), a2, a3);
  WorkingColorSpace = OZRenderParams::getWorkingColorSpace(a3);
  BlendingGamma = OZRenderParams::getBlendingGamma(a3);
  OZRotoshape::makeShapeRenderState(this, a3, WorkingColorSpace, BlendingGamma, v19);
  LODWORD(WorkingColorSpace) = OZShape::shouldDrawOnlyParticles(this + 18976, v19);
  result = PCCFRef<CGColorSpace *>::~PCCFRef(v20);
  if (WorkingColorSpace)
  {
    v9 = *(a2 + 88);
    v19[4] = *(a2 + 72);
    v20[0] = v9;
    v10 = *(a2 + 120);
    v20[1] = *(a2 + 104);
    v20[2] = v10;
    v11 = *(a2 + 24);
    v19[0] = *(a2 + 8);
    v19[1] = v11;
    v12 = *(a2 + 56);
    v19[2] = *(a2 + 40);
    v19[3] = v12;
    (*(**(this + 4732) + 1912))();
    v13 = *(a2 + 88);
    v18[4] = *(a2 + 72);
    v18[5] = v13;
    v14 = *(a2 + 120);
    v18[6] = *(a2 + 104);
    v18[7] = v14;
    v15 = *(a2 + 24);
    v18[0] = *(a2 + 8);
    v18[1] = v15;
    v16 = *(a2 + 56);
    v18[2] = *(a2 + 40);
    v18[3] = v16;
    PCMatrix44Tmpl<double>::operator*(v19, v18, v17);
    return (*(*a2 + 16))(a2, v17);
  }

  return result;
}

uint64_t OZRotoshape::isPrecomposed(OZRotoshape *this, const CMTime *a2)
{
  if ((*(*(this + 860) + 496))())
  {
    return 1;
  }

  v4 = this + 200;
  if ((*(*(this + 25) + 416))(this + 200) & 1) != 0 || ((*(*v4 + 1864))(this + 200) & 1) != 0 || ((*(*v4 + 1592))(this + 200, a2) & 1) != 0 || ((*(*this + 384))(this) & 1) != 0 || ((*(*this + 392))(this))
  {
    return 1;
  }

  v6 = *(*this + 400);

  return v6(this);
}

uint64_t OZRotoshape::shouldPrecompose(OZRotoshape *this, OZRenderState *a2)
{
  OZShapeRenderState::OZShapeRenderState(&var0);
  var0 = a2->var0;
  var10 = a2->var10;
  var16 = a2->var16;
  v9 = *&a2->var1;
  v10 = 1;
  if (OZShape::shouldDrawFillAndParticles(this + 18976, &var0) || OZShape::shouldDrawOnlyParticles(this + 18976, &var0) && ((*(**(this + 4733) + 64))(*(this + 4733)) & 1) != 0)
  {
    v4 = (*(*this + 104))(this, a2);
  }

  else
  {
    v4 = 0;
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&v11);
  return v4;
}

uint64_t OZRotoshape::areEffectsAppliedInScreenSpace(OZRotoshape *this)
{
  result = *(this + 4733);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t non-virtual thunk toOZRotoshape::areEffectsAppliedInScreenSpace(OZRotoshape *this)
{
  result = *(this + 3892);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

double OZRotoshape::castShadowMaxScale(OZRotoshape *this, const OZRenderParams *a2)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  v4 = (*(*this + 104))(this, &v6);
  result = 1.0;
  if (v4)
  {
    return OZElement::castShadowMaxScale((this + 200), a2);
  }

  return result;
}

uint64_t OZRotoshape::doesTransformFromLocalToScreenSpace(OZRotoshape *this, OZRenderState *a2)
{
  OZRenderState::OZRenderState(&v9, a2);
  if (OZRotoshape::shouldPrecompose(this, &v9))
  {
    return 1;
  }

  WorkingColorSpace = OZRenderParams::getWorkingColorSpace(a2);
  BlendingGamma = OZRenderParams::getBlendingGamma(a2);
  OZRotoshape::makeShapeRenderState(this, a2, WorkingColorSpace, BlendingGamma, v7);
  LODWORD(WorkingColorSpace) = OZShape::shouldDrawOnlyParticles(this + 18976, v7);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v8);
  if (WorkingColorSpace)
  {
    return (*(**(this + 4732) + 2216))(*(this + 4732), a2);
  }

  else
  {
    return OZElement::doesTransformFromLocalToScreenSpace(this + 200);
  }
}

uint64_t OZRotoshape::setGeodeProperties3D(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  OZElement::setGeodeProperties3D(a1 + 200, a2, a3, a4);
  v6 = *(a1 + 37864);
  if (v6)
  {
    result = (*(*v6 + 64))(v6);
    if (result)
    {
      result = (*(*v6 + 72))(v6);
    }
  }

  else
  {
    result = 0;
  }

  a4[556] = result;
  return result;
}

CGColorSpace **OZRotoshape::buildRenderGraph(OZRotoshape *this, FxColorDescription *a2, LiGraphBuilder *a3, const OZRenderGraphState *a4)
{
  WorkingColorSpace = OZRenderParams::getWorkingColorSpace(a2);
  BlendingGamma = OZRenderParams::getBlendingGamma(a2);
  OZRotoshape::makeShapeRenderState(this, a2, WorkingColorSpace, BlendingGamma, v25);
  shouldDrawOnlyParticles = OZShape::shouldDrawOnlyParticles(this + 18976, v25);
  OZRenderState::OZRenderState(&v24, a2);
  shouldPrecompose = OZRotoshape::shouldPrecompose(this, &v24);
  if (!(shouldPrecompose & 1 | !shouldDrawOnlyParticles))
  {
    shouldPrecompose = (*(**(this + 4733) + 64))(*(this + 4733));
  }

  if (shouldPrecompose)
  {
    LiGraphBuilder::partitionWorld(a3);
  }

  OZRenderGraphState::OZRenderGraphState(v18, a4);
  LiGraphBuilder::getCurrentLocalToWorld(a3, v17);
  for (i = 0; i != 128; i += 32)
  {
    v13 = &v18[i];
    v14 = *&v17[i + 16];
    *(v13 + 6) = *&v17[i];
    *(v13 + 7) = v14;
  }

  if (shouldDrawOnlyParticles && (*(**(this + 4733) + 64))(*(this + 4733)))
  {
    v20 = 0;
  }

  OZElement::buildRenderGraph((this + 200), a2, a3, v18);
  if (shouldPrecompose)
  {
    LiGraphBuilder::partitionWorld(a3);
  }

  v21 = &unk_2871F25A8;
  if (v22 < 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = v22;
  }

  PCArray<LiLight,PCArray_Traits<LiLight>>::resize(&v21, 0, v15);
  if (v23)
  {
    MEMORY[0x2666E9ED0](v23, 0x1000C8077774924);
  }

  v23 = 0;
  v22 = 0;
  std::__list_imp<unsigned int>::clear(v19);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v26);
}

void sub_26011CDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  OZRenderGraphState::~OZRenderGraphState(&a26);
  PCCFRef<CGColorSpace *>::~PCCFRef((v26 - 80));
  _Unwind_Resume(a1);
}

CGColorSpace **non-virtual thunk toOZRotoshape::buildRenderGraph(OZRotoshape *this, FxColorDescription *a2, LiGraphBuilder *a3, const OZRenderGraphState *a4)
{
  return OZRotoshape::buildRenderGraph((this - 200), a2, a3, a4);
}

{
  return OZRotoshape::buildRenderGraph((this - 6728), a2, a3, a4);
}

void OZRotoshape::makeRenderImageSource(OZRotoshape *this, OZRenderState *a2, const OZRenderGraphState *a3)
{
  OZRenderState::OZRenderState(&v6, a2);
  if (OZRotoshape::shouldPrecompose(this, &v6))
  {
    OZChannelBase::setRangeName(a2, &v5);
    operator new();
  }

  operator new();
}

void sub_26011D470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  PCSharedCount::~PCSharedCount(v6 + 1);
  PCSharedCount::~PCSharedCount(v9 + 1);
  PCSharedCount::~PCSharedCount(v8 + 1);
  Render360GroupAsEquirectSentry::~Render360GroupAsEquirectSentry(va);
  PCSharedCount::~PCSharedCount(v7 + 1);
  OZRenderGraphState::~OZRenderGraphState(&STACK[0x288]);
  LiGraphBuilder::~LiGraphBuilder(&STACK[0x3B8]);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZRotoshape::makeRenderImageSource(OZRotoshape *this, OZRenderState *a2, const OZRenderGraphState *a3)
{
  OZRotoshape::makeRenderImageSource((this - 200), a2, a3);
}

{
  OZRotoshape::makeRenderImageSource((this - 6728), a2, a3);
}

void OZRotoshape::getOriginalBounds(Li3DEngineScene *a1, __int128 *a2, uint64_t a3)
{
  v14 = *a3;
  Seconds = CMTimeGetSeconds(&v14);
  v23 = 0uLL;
  v21 = &unk_2871F2540;
  __asm { FMOV            V1.2D, #-1.0 }

  v24 = _Q1;
  if (OZValueCache<OZBoundsCacheItem>::find(a1 + 38128, &v21, Seconds))
  {
    if (a2)
    {
      v11 = v24;
      *a2 = v23;
      a2[1] = v11;
    }
  }

  else
  {
    v12 = Li3DEngineScene::sceneManager(a1);
    OZLockingGroup::WriteSentry::WriteSentry(v20, v12);
    OZShapeRenderState::OZShapeRenderState(&v14);
    v14 = *a3;
    v15 = *(a3 + 202);
    v16 = *(a3 + 220);
    v17 = *(a3 + 24);
    v18 = 1;
    OZMoShape::getOriginalBounds(a1 + 18976, a2, &v14.value);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v19);
    if (a2)
    {
      v13 = a2[1];
      v23 = *a2;
      v24 = v13;
      OZValueCache<OZBoundsCacheItem>::add(a1 + 38128, &v21);
    }

    OZLockingGroup::WriteSentry::~WriteSentry(v20);
  }
}

void sub_26011D710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

CGColorSpace **OZRotoshape::getUIBounds(uint64_t a1, uint64_t a2, __int128 *a3)
{
  OZShapeRenderState::OZShapeRenderState(&v7);
  v7 = *a3;
  v8 = *(a3 + 2);
  v9 = *(a3 + 202);
  v10 = *(a3 + 220);
  v11 = *(a3 + 24);
  v12 = 1;
  OZMoShape::getUIBounds(a1 + 18976, a2, &v7);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v13);
}

CGColorSpace **OZRotoshape::getOriginalBoundsNoLock(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  OZShapeRenderState::OZShapeRenderState(&v9);
  v9 = *a3;
  v10 = *(a3 + 2);
  v11 = *(a3 + 202);
  v12 = *(a3 + 220);
  v13 = *(a3 + 24);
  v14 = 1;
  OZMoShape::getShapeBounds(a1 + 18976, a2, &v9, a4);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v15);
}

uint64_t OZRotoshape::getProjectedBounds(uint64_t a1, uint64_t a2, double *a3, uint64_t a4)
{
  OZShapeRenderState::OZShapeRenderState(&v13);
  v13 = *a4;
  v14[0] = *(a4 + 202);
  v14[2] = *(a4 + 220);
  *&v14[8] = *(a4 + 24);
  LODWORD(v15) = 1;
  shouldDrawOnlyParticles = OZShape::shouldDrawOnlyParticles(a1 + 18976, &v13);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v17);
  if (!shouldDrawOnlyParticles)
  {
    return OZElement::getProjectedBounds((a1 + 200), a2, a3, a4);
  }

  v20 = 0x3FF0000000000000;
  v17 = 0x3FF0000000000000;
  *&v14[16] = 0x3FF0000000000000;
  v13.value = 0x3FF0000000000000;
  *&v13.timescale = 0u;
  *v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = *(a1 + 200);
  v9 = a1 + 200;
  (*(v10 + 1256))(v9, &v13, a4);
  v11 = PCMatrix44Tmpl<double>::leftMult(&v13, a3);
  return (*(**(v9 + 37664) + 56))(*(v9 + 37664), a2, &v13, a4, v11);
}

double OZRotoshape::calcHashForState(uint64_t a1, void *lpsrc, uint64_t a3, uint64_t a4, int a5)
{
  if (!v10)
  {
    __cxa_bad_cast();
  }

  (*(*v10 + 56))(v10, *(a3 + 332));

  return OZSceneNode::calcHashForState(a1 + 200, lpsrc, a3, a4, a5);
}

double OZRotoshape::calcHashForStateSelfOnly(OZRotoshape *this, PCSerializerWriteStream *lpsrc, CMTime *a3)
{
  if (!v6)
  {
    __cxa_bad_cast();
  }

  v7 = v6;
  v10 = *a3;
  (*(*(this + 580) + 448))(this + 4640, lpsrc, &v10);
  v10 = *a3;
  OZChannelFolder::calcHashForState((this + 6752), lpsrc, &v10);
  v10 = *a3;
  OZChannelFolder::calcHashForState((this + 1032), lpsrc, &v10);
  v8 = *(this + 88);
  (*(*lpsrc + 16))(lpsrc, 0);
  (*(*lpsrc + 72))(lpsrc, v8 & 0x8000);
  (*(*lpsrc + 24))(lpsrc);
  v10 = *a3;
  OZMoShape::calcHashForState((this + 18976), lpsrc, &v10);
  *&v10.value = *PCHashWriteStream::getHash(v7)->i8;
  *&result = PCHashWriteStream::setHash(v7, &v10).n128_u64[0];
  return result;
}

CGColorSpace **OZRotoshape::_getHeliumInternal@<X0>(OZRotoshape *this@<X0>, const OZRenderState *a2@<X1>, LiAgent *a3@<X2>, FxColorDescription *a4@<X4>, uint64_t a5@<X3>, HGHWMultiBlend **a6@<X8>)
{
  v12 = *(a3 + 20);
  v13 = v12[3];
  v15 = *v12;
  v14 = v12[1];
  v55[2] = v12[2];
  v55[3] = v13;
  v55[0] = v15;
  v55[1] = v14;
  v16 = v12[7];
  v18 = v12[4];
  v17 = v12[5];
  v55[6] = v12[6];
  v55[7] = v16;
  v55[4] = v18;
  v55[5] = v17;
  v54 = 0x3FF0000000000000;
  v51 = 0x3FF0000000000000;
  v48 = 0x3FF0000000000000;
  v45 = 0x3FF0000000000000;
  v46 = 0u;
  v47 = 0u;
  v49 = 0u;
  v50 = 0u;
  v52 = 0u;
  v53 = 0u;
  LiAgent::getInversePixelTransform(a3, 0.0, v34);
  for (i = 0; i != 128; i += 32)
  {
    v20 = (&v45 + i);
    v21 = *&v34[i + 16];
    *v20 = *&v34[i];
    v20[1] = v21;
  }

  WorkingColorSpace = OZRenderParams::getWorkingColorSpace(a4);
  BlendingGamma = OZRenderParams::getBlendingGamma(a4);
  OZRotoshape::makeShapeRenderState(this, a2, WorkingColorSpace, BlendingGamma, &v36);
  HeliumRenderer = LiAgent::getHeliumRenderer(a3);
  v37 = *(*LiAgent::getRenderDevice(a3) + 8) == 0;
  v42 = a3;
  v43 = a4;
  RenderQuality = OZRenderParams::getRenderQuality(a4);
  if (RenderQuality > 6)
  {
    v25 = 2;
  }

  else
  {
    v25 = *&asc_260851350[4 * RenderQuality];
  }

  v40 = v25;
  if (OZRenderParams::getReducedResolutionMedia(a4))
  {
    goto LABEL_7;
  }

  v27 = v38;
  if (v38 > v39)
  {
    v27 = v39;
  }

  v28 = v27;
  if (v28 <= 0.3)
  {
    v26 = 2;
    goto LABEL_15;
  }

  if (v28 < 1.0 && v28 > 0.3)
  {
LABEL_7:
    v26 = 1;
LABEL_15:
    v40 <<= v26;
  }

  v29 = OZRenderParams::getWorkingColorSpace(a4);
  LiAgent::setActualColorSpace(a3, v29);
  OZMoShape::getHelium(this + 18976, &v36, v55, &v45, a5, &v35);
  if (v35)
  {
    *a6 = v35;
  }

  else
  {
    OZShapeRenderParams::OZShapeRenderParams(v34);
    v30 = Li3DEngineScene::sceneManager(this);
    OZLockingGroup::WriteSentry::WriteSentry(&v33, v30);
    HeliumParameters = OZShape::getHeliumParameters(this + 18976, &v36, v55, &v45, a5, v34);
    OZLockingGroup::WriteSentry::~WriteSentry(&v33);
    if (HeliumParameters)
    {
      OZShape::getHeliumRender(this + 18976, &v36, v55, &v45, v34, a6);
    }

    else
    {
      *a6 = 0;
    }

    OZShapeRenderParams::~OZShapeRenderParams(v34);
    if (v35)
    {
      (*(*v35 + 24))(v35);
    }
  }

  return PCCFRef<CGColorSpace *>::~PCCFRef(&v44);
}

void sub_26011DFA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZShapeRenderParams::~OZShapeRenderParams(va);
  if (STACK[0x538])
  {
    (*(*STACK[0x538] + 24))(STACK[0x538]);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&STACK[0x590]);
  _Unwind_Resume(a1);
}

void OZRotoshape::buildLighting(OZRotoshape *this, LiGeode *a2, const LiLightSet *a3, FxColorDescription *a4)
{
  WorkingColorSpace = OZRenderParams::getWorkingColorSpace(a4);
  BlendingGamma = OZRenderParams::getBlendingGamma(a4);
  OZRotoshape::makeShapeRenderState(this, a4, WorkingColorSpace, BlendingGamma, v12);
  shouldDrawParticles = OZShape::shouldDrawParticles(this + 18976, v12);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v13);
  v11 = *(this + 4733);
  if (!v11 || (shouldDrawParticles & (*(*v11 + 64))(v11) & 1) == 0)
  {
    OZElement::buildLighting((this + 200), a2, a3, a4);
  }
}

void *OZRotoshape::buildMaterials@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = OZElement::buildMaterials((a1 + 200), a2, a3, a4, a5);
  if (*(a5 + 101) == 1)
  {
    result = OZRenderParams::getRenderQuality(a2);
    *(a5 + 104) = result == 6;
  }

  return result;
}

uint64_t OZRotoshape::prerollBegin(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  OZSceneNode::prerollBegin(a1 + 200, a2, a3, a4, a5);

  return OZMoShape::prerollBegin(a1 + 18976);
}

uint64_t non-virtual thunk toOZRotoshape::prerollBegin(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  OZSceneNode::prerollBegin(a1, a2, a3, a4, a5);

  return OZMoShape::prerollBegin(a1 + 18776);
}

uint64_t OZRotoshape::prerollEnd(OZRotoshape *this, const OZRenderParams *a2, PMFrameRequest *a3)
{
  OZSceneNode::prerollEnd(this + 200, a2, a3);

  return OZMoShape::prerollEnd(this + 18976);
}

uint64_t non-virtual thunk toOZRotoshape::prerollEnd(OZRotoshape *this, const OZRenderParams *a2, PMFrameRequest *a3)
{
  OZSceneNode::prerollEnd(this, a2, a3);

  return OZMoShape::prerollEnd(this + 18776);
}

uint64_t OZRotoshape::setRate(OZRotoshape *this, const OZRenderParams *a2, PMFrameRequest *a3, double a4)
{
  OZSceneNode::setRate(this + 200, a2, a3, a4);

  return OZMoShape::setRate(this + 18976);
}

uint64_t non-virtual thunk toOZRotoshape::setRate(OZRotoshape *this, const OZRenderParams *a2, PMFrameRequest *a3, double a4)
{
  OZSceneNode::setRate(this, a2, a3, a4);

  return OZMoShape::setRate(this + 18776);
}

uint64_t OZRotoshape::scheduleTokens(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  memset(v11, 0, sizeof(v11));
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__init_with_size[abi:ne200100]<std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*>(v11, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  (*(*(a1 + 200) + 184))(a1 + 200, a2, v11, a4);
  OZSceneNode::scheduleTokens(a1 + 200, a2, v11, a4, a5);
  v9 = OZMoShape::scheduleTokens(a1 + 18976);
  v12 = v11;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  return v9;
}

void sub_26011E524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t OZRotoshape::hintTokensWillImage(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  memset(v9, 0, sizeof(v9));
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__init_with_size[abi:ne200100]<std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*>(v9, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  (*(*(a1 + 200) + 184))(a1 + 200, a2, v9, a4);
  OZSceneNode::hintTokensWillImage(a1 + 200, a2, v9, a4);
  v7 = OZMoShape::hintTokensWillImage(a1 + 18976);
  v10 = v9;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v10);
  return v7;
}

void sub_26011E62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t OZRotoshape::getTokensImage(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  memset(v9, 0, sizeof(v9));
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__init_with_size[abi:ne200100]<std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*>(v9, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  (*(*(a1 + 200) + 184))(a1 + 200, a2, v9, a4);
  OZSceneNode::getTokensImage(a1 + 200, a2, v9, a4);
  TokensImage = OZMoShape::getTokensImage(a1 + 18976);
  v10 = v9;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v10);
  return TokensImage;
}

void sub_26011E734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t OZRotoshape::pruneTokensAtTime(OZRotoshape *this, CMTime *a2, const char *a3)
{
  v7 = *a2;
  OZSceneNode::pruneTokensAtTime(this + 200, &v7, a3);
  v7 = *a2;
  return OZMoShape::pruneTokensAtTime((this + 18976), &v7, a3);
}

uint64_t non-virtual thunk toOZRotoshape::pruneTokensAtTime(OZRotoshape *this, CMTime *a2, const char *a3)
{
  v7 = *a2;
  OZSceneNode::pruneTokensAtTime(this, &v7, a3);
  v7 = *a2;
  return OZMoShape::pruneTokensAtTime((this + 18776), &v7, a3);
}

uint64_t OZRotoshape::pruneTokensExceptAtTime(OZRotoshape *this, CMTime *a2, const char *a3)
{
  v7 = *a2;
  OZSceneNode::pruneTokensExceptAtTime(this + 200, &v7, a3);
  v7 = *a2;
  return OZMoShape::pruneTokensExceptAtTime((this + 18976), &v7, a3);
}

uint64_t non-virtual thunk toOZRotoshape::pruneTokensExceptAtTime(OZRotoshape *this, CMTime *a2, const char *a3)
{
  v7 = *a2;
  OZSceneNode::pruneTokensExceptAtTime(this, &v7, a3);
  v7 = *a2;
  return OZMoShape::pruneTokensExceptAtTime((this + 18776), &v7, a3);
}

uint64_t OZRotoshape::pruneAllTokens(OZRotoshape *this, const char *a2)
{
  OZSceneNode::pruneAllTokens(this + 200, a2);

  return OZMoShape::pruneAllTokens((this + 18976), a2);
}

uint64_t non-virtual thunk toOZRotoshape::pruneAllTokens(OZRotoshape *this, const char *a2)
{
  OZSceneNode::pruneAllTokens(this, a2);

  return OZMoShape::pruneAllTokens((this + 18776), a2);
}

void OZRotoshapeRender::~OZRotoshapeRender(PCSharedCount *this)
{
  this->var0 = &unk_28728A360;
  this[184].var0 = &unk_28728A428;
  PCSharedCount::~PCSharedCount(this + 182);
  OZRenderParams::~OZRenderParams(&this[3]);
  OZChannelBase::setRangeName(this, &off_28728A448);
  this[184].var0 = &unk_2872DEA38;
  LOBYTE(this[186].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[185].var0);
}

{
  this->var0 = &unk_28728A360;
  this[184].var0 = &unk_28728A428;
  PCSharedCount::~PCSharedCount(this + 182);
  OZRenderParams::~OZRenderParams(&this[3]);
  OZChannelBase::setRangeName(this, &off_28728A448);
  this[184].var0 = &unk_2872DEA38;
  LOBYTE(this[186].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[185].var0);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toOZRotoshapeRender::~OZRotoshapeRender(OZRotoshapeRender *this)
{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_28728A360;
  v1[184].var0 = &unk_28728A428;
  PCSharedCount::~PCSharedCount(v1 + 182);
  OZRenderParams::~OZRenderParams(&v1[3]);
  OZChannelBase::setRangeName(v1, &off_28728A448);
  v1[184].var0 = &unk_2872DEA38;
  LOBYTE(v1[186].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[185].var0);
}

{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_28728A360;
  v1[184].var0 = &unk_28728A428;
  PCSharedCount::~PCSharedCount(v1 + 182);
  OZRenderParams::~OZRenderParams(&v1[3]);
  OZChannelBase::setRangeName(v1, &off_28728A448);
  v1[184].var0 = &unk_2872DEA38;
  LOBYTE(v1[186].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[185].var0);

  JUMPOUT(0x2666E9F00);
}

void OZChannelObjectRoot::OZChannelObjectRoot(OZChannelObjectRoot *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  OZChannelObjectRootBase::OZChannelObjectRootBase(this, a2, a3, a4, a5, a6);
  v7->var0 = &unk_28728A5F0;
  v7[2].var0 = &unk_28728A988;
  v7[28].var0 = &v7[28];
  v7[29].var0 = &v7[28];
  v7[30].var0 = 0;
  PCSharedCount::PCSharedCount(v7 + 31);
  *(this + 26) = 0;
  *(this + 27) = 0;
}

void sub_26011ED4C(_Unwind_Exception *a1)
{
  std::__list_imp<unsigned int>::clear(v2);
  OZChannelObjectRootBase::~OZChannelObjectRootBase(v1);
  _Unwind_Resume(a1);
}

void OZChannelObjectRoot::OZChannelObjectRoot(OZChannelObjectRoot *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelObjectRoot_Factory::getInstance(this);
  OZChannelObjectRootBase::OZChannelObjectRootBase(this, Instance, a2, a3, a4, a5);
  *this = &unk_28728A5F0;
  *(this + 2) = &unk_28728A988;
  *(this + 28) = this + 224;
  *(this + 29) = this + 224;
  *(this + 30) = 0;
  PCSharedCount::PCSharedCount(this + 31);
  *(this + 26) = 0;
  *(this + 27) = 0;
}

void sub_26011EE20(_Unwind_Exception *a1)
{
  std::__list_imp<unsigned int>::clear(v2);
  OZChannelObjectRootBase::~OZChannelObjectRootBase(v1);
  _Unwind_Resume(a1);
}

uint64_t OZChannelObjectRoot_Factory::getInstance(OZChannelObjectRoot_Factory *this)
{
  if (atomic_load_explicit(&OZChannelObjectRoot_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelObjectRoot_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelObjectRoot_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelObjectRoot_Factory::_instance;
}

void OZChannelObjectRoot::OZChannelObjectRoot(OZChannelObjectRoot *this, const OZChannelObjectRoot *a2, OZChannelFolder *a3)
{
  OZChannelObjectRootBase::OZChannelObjectRootBase(this, a2, a3);
  v5->var0 = &unk_28728A5F0;
  v5[2].var0 = &unk_28728A988;
  v5[28].var0 = &v5[28];
  v5[29].var0 = &v5[28];
  v5[30].var0 = 0;
  PCSharedCount::PCSharedCount(v5 + 31);
  *(this + 26) = 0;
  if (*(a2 + 27))
  {
    operator new();
  }

  *(this + 27) = 0;
}