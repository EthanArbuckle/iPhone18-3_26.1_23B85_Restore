BOOL _UIRTreeContainerNode<unsigned long>::isFull(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  if (v1 == v2)
  {
    isRoot = _UIRTreeContainerNode<unsigned long>::isRoot(a1);
    v6 = 72;
    if (isRoot)
    {
      v6 = 48;
    }

    v7 = 64;
    if (isRoot)
    {
      v7 = 40;
    }

    v3 = 3;
    if (isRoot)
    {
      v3 = 4;
    }

    v1 = *(a1 + v6);
    v2 = *(a1 + v7);
  }

  else
  {
    v3 = 4;
  }

  return ((v1 - v2) >> v3) > 0xFF;
}

uint64_t std::__split_buffer<std::shared_ptr<_UIRTreeContainerNode<unsigned long>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv4_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
}

void _UIRTreeContainerNode<unsigned long>::invalidateBoundingFrameAndNotifyParents(int64x2_t *a1)
{
  a1[8].i64[0] = 0;
  a1[8].i64[1] = 0;
  a1[7] = vdupq_n_s64(0x7FF8000000000000uLL);
  v2 = a1[2].i64[0];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = a1[1].i64[1];
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
      if (v4)
      {
        v5 = a1[2].i64[0];
        if (v5)
        {
          v5 = std::__shared_weak_count::lock(v5);
          v6 = v5;
          if (v5)
          {
            v5 = a1[1].i64[1];
          }
        }

        else
        {
          v6 = 0;
        }

        _UIRTreeContainerNode<unsigned long>::invalidateBoundingFrameAndNotifyParents(v5);
        if (v6)
        {

          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }
      }
    }
  }
}

void sub_188C7C1F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

double _UISizeClampToMinimumSizeForAxis(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if ((a1 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGSize _UISizeClampToMinimumSizeForAxis(CGSize, CGSize, UIAxis)"}];
    [v13 handleFailureInFunction:v14 file:@"_UICollectionLayoutHelpers.m" lineNumber:419 description:{@"Invalid parameter not satisfying: %@", @"axis == UIAxisVertical || axis == UIAxisHorizontal"}];
  }

  v10 = _UISizeValueForAxis(a1, a2, a3);
  v11 = _UISizeValueForAxis(a1, a4, a5);
  if (v10 < v11)
  {
    return _UISetSizeValueForAxis(a1, a2, a3, v11);
  }

  return a2;
}

uint64_t _UIRTreeContainerNode<unsigned long>::~_UIRTreeContainerNode(uint64_t a1)
{
  *a1 = &unk_1EFAFCCA8;
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    *(a1 + 72) = v3;
    operator delete(v3);
  }

  v7 = (a1 + 40);
  std::vector<std::shared_ptr<_UIRTreeContainerNode<unsigned long>>>::__destroy_vector::operator()[abi:nn200100](&v7);
  v4 = *(a1 + 32);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_188C7C7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _UIRTreeContainerNode<_UICollectionViewRTreeElement>::invalidateBoundingFrameAndNotifyParents(int64x2_t *a1)
{
  a1[8].i64[0] = 0;
  a1[8].i64[1] = 0;
  a1[7] = vdupq_n_s64(0x7FF8000000000000uLL);
  v2 = a1[2].i64[0];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = a1[1].i64[1];
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
      if (v4)
      {
        v5 = a1[2].i64[0];
        if (v5)
        {
          v5 = std::__shared_weak_count::lock(v5);
          v6 = v5;
          if (v5)
          {
            v5 = a1[1].i64[1];
          }
        }

        else
        {
          v6 = 0;
        }

        _UIRTreeContainerNode<_UICollectionViewRTreeElement>::invalidateBoundingFrameAndNotifyParents(v5);
        if (v6)
        {

          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }
      }
    }
  }
}

void sub_188C7C888(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_188C7C9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _BYTE *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_188A55598(v14, v17);
  swift_dynamicCast();
  v15 = a4(a1, a2, v13);
  (*(v11 + 8))(v13, a7);
  return v15;
}

id sub_188C7CB14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_18A4A2B48();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  sub_18A4A2B18();
  v15[3] = swift_getObjectType();
  v15[0] = a4;

  v12 = a2;
  swift_unknownObjectRetain();
  v13 = v11(v12, v10, v15);

  (*(v8 + 8))(v10, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v15);

  return v13;
}

id sub_188C7CC6C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id, char *))
{
  v8 = sub_18A4A2B48();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A2B18();
  v12 = a3;
  v13 = a1;
  v14 = a5(v12, v11);

  (*(v9 + 8))(v11, v8);

  return v14;
}

_BYTE *_getCustomAttributes(_BYTE *a1)
{
  if (a1)
  {
    if ((a1[290] & 1) == 0)
    {
      a1 = 0;

      return a1;
    }

    a1 = objc_getAssociatedObject(a1, &_UICollectionViewLayoutCustomAttributesKey);
  }

  return a1;
}

uint64_t sub_188C7CFE4()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration_wrappedConfiguration + 24);
  v3 = *(v0 + OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration_wrappedConfiguration + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration_wrappedConfiguration), v2);
  swift_getObjectType();
  sub_188C7D15C(v13);
  v4 = *(v3 + 16);
  v14[3] = v2;
  v14[4] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  v4(v13, v2, v3);
  v6 = __swift_destroy_boxed_opaque_existential_0Tm(v13);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - v8;
  (*(v10 + 16))(v13 - v8, boxed_opaque_existential_0, v2, v7);
  sub_188C7D408(v9, ObjectType, v2, v3);
  v11 = swift_dynamicCastClassUnconditional();
  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  return v11;
}

uint64_t sub_188C7D15C@<X0>(uint64_t *a1@<X8>)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    a1[3] = &type metadata for UICellConfigurationState;
    a1[4] = &protocol witness table for UICellConfigurationState;
  }

  else
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v4 = [v1 traitCollection];
      a1[3] = &type metadata for UICellConfigurationState;
      a1[4] = &protocol witness table for UICellConfigurationState;
      result = swift_allocObject();
      *a1 = result;
      *(result + 24) = 0;
      *(result + 29) = 0;
      v5 = MEMORY[0x1E69E7CC8];
      *(result + 48) = 0;
      *(result + 56) = 0;
      *(result + 40) = v5;
      *(result + 64) = 1;
      *(result + 16) = v4;
      return result;
    }

    a1[3] = &type metadata for UIViewConfigurationState;
    a1[4] = &protocol witness table for UIViewConfigurationState;
  }

  *a1 = swift_allocObject();
  swift_unknownObjectRetain();
  return swift_dynamicCast();
}

uint64_t sub_188C7D2C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_188C7D308()
{

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

double sub_188C7D350(void *a1, uint64_t a2)
{
  sub_188C7D3B4(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  sub_188C97D48(a1, v7);
  v4 = v9;
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v4;
  return result;
}

void sub_188C7D3B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
  }
}

id sub_188C7D408(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a3;
  v13[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  v8 = objc_allocWithZone(a2);
  v9 = &v8[OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration____lazy_storage___wrappedConfigurationIdentifier];
  *v9 = 0;
  *(v9 + 1) = 0;
  sub_188A53994(v13, &v8[OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration_wrappedConfiguration]);
  v12.receiver = v8;
  v12.super_class = a2;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  return v10;
}

void _UINormalizeRectForPositiveOrigin(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetMinX(*&a1);
  v8.origin.x = a1;
  v8.origin.y = a2;
  v8.size.width = a3;
  v8.size.height = a4;
  CGRectGetMinY(v8);
  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  CGRectGetWidth(v9);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetHeight(v10);
}

double _UIPointValueForAxis(uint64_t a1, double a2, double a3)
{
  if (a1 != 1)
  {
    if (a1 == 2)
    {
      return a3;
    }

    else
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat _UIPointValueForAxis(CGPoint, UIAxis)"}];
      [v4 handleFailureInFunction:v5 file:@"_UICollectionLayoutHelpers.m" lineNumber:158 description:@"Unhandled layout axis."];

      return 0.0;
    }
  }

  return result;
}

double _UISetPointValueForAxis(uint64_t a1, double a2, double a3, double a4)
{
  if (a1 != 2)
  {
    if (a1 == 1)
    {
      return a4;
    }

    else
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGPoint _UISetPointValueForAxis(CGPoint, CGFloat, UIAxis)"}];
      [v5 handleFailureInFunction:v6 file:@"_UICollectionLayoutHelpers.m" lineNumber:170 description:@"Unknown layout axis."];
    }
  }

  return a2;
}

double _UISetSizeValueForAxis(uint64_t a1, double a2, double a3, double a4)
{
  if (a1 != 2)
  {
    if (a1 == 1)
    {
      return a4;
    }

    else
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGSize _UISetSizeValueForAxis(CGSize, CGFloat, UIAxis)"}];
      [v5 handleFailureInFunction:v6 file:@"_UICollectionLayoutHelpers.m" lineNumber:212 description:@"Unknown layout axis."];
    }
  }

  return a2;
}

double _UITotalEdgeDimensionsForLayoutAxis(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (a1 == 1)
  {
    return a3 + a5;
  }

  if (a1 == 2)
  {
    return a2 + a4;
  }

  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat _UITotalEdgeDimensionsForLayoutAxis(NSDirectionalEdgeInsets, UIAxis)"}];
  [v6 handleFailureInFunction:v7 file:@"_UICollectionLayoutHelpers.m" lineNumber:479 description:@"Unknown axis."];

  return 0.0;
}

void sub_188C7F240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Unwind_Resume(a1);
}

void __destructor_8_s64_s72_s80_s88_s96_s112(uint64_t a1)
{
  v2 = *(a1 + 112);
}

uint64_t _UIRTreeContainerNode<unsigned long>::isRoot(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 1;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 1;
  }

  v4 = *(a1 + 24) == 0;
  std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  return v4;
}

void sub_188C7F7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  v15 = v12[5].__vftable;
  if (v15)
  {
    v12[5].__shared_owners_ = v15;
    operator delete(v15);
  }

  std::vector<_UICollectionViewRTreeElement>::__destroy_vector::operator()[abi:nn200100](&a12);
  std::vector<std::shared_ptr<_UIRTreeContainerNode<unsigned long>>>::__destroy_vector::operator()[abi:nn200100](&a12);
  shared_weak_owners = v12[2].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  v17 = v12[2].__vftable;
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  a12 = &a9;
  std::vector<_UICollectionViewRTreeElement>::__destroy_vector::operator()[abi:nn200100](&a12);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  std::__shared_weak_count::~__shared_weak_count(v12);
  operator delete(v18);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<_UICollectionViewRTreeElement>,_UICollectionViewRTreeElement*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *(a3 + 8) = *(v5 + 8);
      v6 = *(v5 + 24);
      *(v5 + 24) = 0;
      *(a3 + 24) = v6;
      v7 = *(v5 + 32);
      *(v5 + 32) = 0;
      *(a3 + 32) = v7;
      v5 += 40;
      a3 += 40;
    }

    while (v5 != a2);
    do
    {

      v4 += 40;
    }

    while (v4 != a2);
  }
}

BOOL _UIRTreeContainerNode<_UICollectionViewRTreeElement>::isFull(void *a1)
{
  v2 = a1[5];
  v1 = a1[6];
  if (v1 == v2)
  {
    if (!_UIRTreeContainerNode<unsigned long>::isRoot(a1))
    {
      v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[9] - a1[8]) >> 3);
      return v4 > 0xFF;
    }

    v2 = a1[5];
    v1 = a1[6];
  }

  v4 = (v1 - v2) >> 4;
  return v4 > 0xFF;
}

__n128 _UIRTreeContainerNode<_UICollectionViewRTreeElement>::addContainer(_OWORD *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a3)
  {
    v49 = [MEMORY[0x1E696AAA8] currentHandler];
    v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"shared_ptr<_UIRTreeContainerNode<T>> _UIRTreeContainerNode<_UICollectionViewRTreeElement>::addContainer(shared_ptr<_UIRTreeContainerNode<T>>, shared_ptr<_UIRTreeContainerNode<T>>) [T = _UICollectionViewRTreeElement]"}];
    [v49 handleFailureInFunction:v50 file:@"_UIRTree.mm" lineNumber:382 description:{@"Invalid parameter not satisfying: %@", @"container"}];
  }

  if (_UIRTreeContainerNode<_UICollectionViewRTreeElement>::isFull(a2))
  {
    v8 = *(a2 + 32);
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = *(a2 + 24);
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
        if (v10)
        {
          v11 = *(a2 + 32);
          if (v11)
          {
            v12 = std::__shared_weak_count::lock(v11);
            if (v12)
            {
              v13 = *(a2 + 24);
              goto LABEL_45;
            }
          }

          else
          {
            v12 = 0;
          }

          v13 = 0;
LABEL_45:
          v44 = a3[1];
          v61[0] = *a3;
          v61[1] = v44;
          if (v44)
          {
            atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v45 = a4[1];
          v59 = *a4;
          v60 = v45;
          if (v45)
          {
            atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          _UIRTreeContainerNode<_UICollectionViewRTreeElement>::addContainer(&v62, v13, v61, &v59);
          v46 = a4[1];
          *a4 = v62;
          if (v46)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v46);
          }

          if (v60)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v60);
          }

          if (v44)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v44);
          }

          if (v12)
          {
            v47 = v12;
LABEL_60:
            std::__shared_weak_count::__release_shared[abi:nn200100](v47);
            goto LABEL_61;
          }

          goto LABEL_61;
        }
      }
    }

    v57 = 0uLL;
    v58 = 0;
    v23 = *(a2 + 16);
    if (v23 && std::__shared_weak_count::lock(v23))
    {
      v65 = &v57;
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<_UIRTreeContainerNode<unsigned long>>>>(1uLL);
    }

    goto LABEL_62;
  }

  v52 = *a3;
  v14 = a3[1];
  if (v14)
  {
    atomic_fetch_add_explicit((a3[1] + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a2 + 16);
  if (!v15 || (v16 = *(a2 + 8), (v17 = std::__shared_weak_count::lock(v15)) == 0))
  {
LABEL_62:
    std::__throw_bad_weak_ptr[abi:nn200100]();
LABEL_63:
    std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
  }

  v18 = v17;
  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v19 = *(v52 + 32);
  *(v52 + 24) = v16;
  *(v52 + 32) = v18;
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  std::__shared_weak_count::__release_weak(v18);
  std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  v20 = *(a2 + 48);
  v21 = *(a2 + 56);
  if (v20 >= v21)
  {
    v24 = *(a2 + 40);
    v25 = (v20 - v24) >> 4;
    v26 = v25 + 1;
    if ((v25 + 1) >> 60)
    {
      goto LABEL_63;
    }

    v27 = v21 - v24;
    if (v27 >> 3 > v26)
    {
      v26 = v27 >> 3;
    }

    if (v27 >= 0x7FFFFFFFFFFFFFF0)
    {
      v28 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v26;
    }

    v65 = (a2 + 40);
    if (v28)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<_UIRTreeContainerNode<unsigned long>>>>(v28);
    }

    v29 = 16 * v25;
    *(16 * v25) = v52;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = (v29 + 16);
    v30 = *(a2 + 40);
    v31 = *(a2 + 48) - v30;
    v32 = v29 - v31;
    memcpy((v29 - v31), v30, v31);
    v33 = *(a2 + 40);
    *(a2 + 40) = v32;
    *(a2 + 48) = v22;
    v34 = *(a2 + 56);
    *(a2 + 56) = 0;
    v63 = v33;
    v64 = v34;
    *&v62 = v33;
    *(&v62 + 1) = v33;
    std::__split_buffer<std::shared_ptr<_UIRTreeContainerNode<unsigned long>>>::~__split_buffer(&v62);
  }

  else
  {
    *v20 = v52;
    v20[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = v20 + 2;
  }

  *(a2 + 48) = v22;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  _UIRTreeContainerNode<unsigned long>::boundingFrame(v56, a2);
  v51 = v56[0];
  v53 = v56[1];
  _UIRTreeContainerNode<unsigned long>::boundingFrame(v55, *a3);
  v35 = vandq_s8(vcgeq_f64(vaddq_f64(v51, v53), vaddq_f64(v55[0], v55[1])), vcgeq_f64(v55[0], v51));
  if ((vandq_s8(vdupq_laneq_s64(v35, 1), v35).u64[0] & 0x8000000000000000) == 0)
  {
    _UIRTreeContainerNode<unsigned long>::boundingFrame(v54, *a3);
    v36 = *(a2 + 112);
    v37 = vminnmq_f64(v36, v54[0]);
    v38 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v36, *(a2 + 128)), vaddq_f64(v54[0], v54[1])), v37);
    *(a2 + 112) = v37;
    *(a2 + 128) = v38;
    v39 = *(a2 + 32);
    if (v39)
    {
      v40 = std::__shared_weak_count::lock(v39);
      if (v40)
      {
        v41 = *(a2 + 24);
        std::__shared_weak_count::__release_shared[abi:nn200100](v40);
        if (v41)
        {
          v42 = *(a2 + 32);
          if (v42)
          {
            v42 = std::__shared_weak_count::lock(v42);
            v43 = v42;
            if (v42)
            {
              v42 = *(a2 + 24);
            }
          }

          else
          {
            v43 = 0;
          }

          _UIRTreeContainerNode<_UICollectionViewRTreeElement>::invalidateBoundingFrameAndNotifyParents(v42);
          if (v43)
          {
            v47 = v43;
            goto LABEL_60;
          }
        }
      }
    }
  }

LABEL_61:
  result = *a4;
  *a1 = *a4;
  *a4 = 0;
  a4[1] = 0;
  return result;
}

__n128 _UIRTreeContainerNode<unsigned long>::addChild(float64x2_t *a1, uint64_t a2, uint64_t a3, float64x2_t *a4, float64x2_t a5, float64x2_t a6)
{
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (v11 != v10)
  {
LABEL_4:
    v12 = (v11 - v10) >> 4;
    if (!v12)
    {
      goto LABEL_22;
    }

    if (v12 == 1)
    {
      v13 = a3;
      v14 = *v10;
    }

    else
    {
      if (v10 == v11)
      {
        goto LABEL_22;
      }

      v13 = a3;
      v14 = 0;
      v350 = vaddq_f64(a5, a6);
      v15 = 1.79769313e308;
      do
      {
        _UIRTreeContainerNode<unsigned long>::boundingFrame(&v363, *v10);
        v16 = vaddq_f64(v363, v364);
        v17 = vandq_s8(vcgeq_f64(v16, v350), vcgeq_f64(a5, v363));
        if ((vandq_s8(vdupq_laneq_s64(v17, 1), v17).u64[0] & 0x8000000000000000) != 0)
        {
          v20 = 0.0;
        }

        else
        {
          v18 = vsubq_f64(vmaxnmq_f64(v16, v350), vminnmq_f64(v363, a5));
          v19 = vmulq_f64(vzip1q_s64(v18, v364), vzip2q_s64(v18, v364));
          *&v20 = *&vdivq_f64(v19, vdupq_laneq_s64(v19, 1));
        }

        if (v20 < v15)
        {
          v14 = *v10;
          v15 = v20;
          if (fabs(v20) < 2.22044605e-16)
          {
            break;
          }
        }

        v10 += 2;
      }

      while (v10 != v11);
    }

    if (v14)
    {
      v21 = *&a4->f64[1];
      v353 = a4->f64[0];
      v354 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      _UIRTreeContainerNode<unsigned long>::addChild(&v363, v14, v13, &v353, a5, a6);
      v22 = *&a4->f64[1];
      *a4 = v363;
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v22);
      }

      v23 = v354;
      if (v354)
      {
        goto LABEL_21;
      }

      goto LABEL_26;
    }

LABEL_22:
    v363 = 0uLL;
    v364.f64[0] = 0.0;
    v360 = 0;
    v361 = 0;
    v362 = 0;
    operator new();
  }

  if (_UIRTreeContainerNode<unsigned long>::isRoot(a2))
  {
    v10 = *(a2 + 40);
    v11 = *(a2 + 48);
    goto LABEL_4;
  }

  if (_UIRTreeContainerNode<unsigned long>::isFull(a2))
  {
    v363 = a5;
    v364 = a6;
    v25 = *(a2 + 64);
    v24 = *(a2 + 72);
    v361 = 0;
    v362 = 0;
    v360 = 0;
    v26 = v24 - v25;
    v27 = (v24 - v25) >> 3;
    if (v24 != v25)
    {
      std::vector<unsigned long>::__vallocate[abi:nn200100](&v360, (v24 - v25) >> 3);
    }

    v37 = 0;
    v38 = 8 * (v27 >> 1);
    if (v26 < v38)
    {
      v347 = v27 >> 1;
      v351 = (v24 - v25) >> 3;
      if (!v38)
      {
        goto LABEL_39;
      }

      v87 = (v24 - v25);
      v88 = 0;
      do
      {
        v89 = v88 - v87;
        if (v89 < 2)
        {
          break;
        }

        if (v89 == 3)
        {
          _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN21_UIRTreeContainerNodeImE46reversedIndexesOfChildrenWithClosestAffinityToEDv4_dEUlmmE_NS_11__wrap_iterIPmEELi0EEEbT1_SA_SA_T0_(v87, v87 + 1, v88 - 1, &v363, *(a2 + 88));
          break;
        }

        if (v89 == 2)
        {
          v306 = *(v88 - 1);
          v307 = *v87;
          v308 = *(a2 + 88);
          v309 = (v308 + 32 * v306);
          v311 = *v309;
          v310 = v309[1];
          v312 = vaddq_f64(*v309, v310);
          v313 = vaddq_f64(v363, v364);
          v314 = vandq_s8(vcgeq_f64(v312, v313), vcgeq_f64(v363, *v309));
          v315 = vandq_s8(vdupq_laneq_s64(v314, 1), v314).u64[0];
          v316 = 0.0;
          v317 = 0.0;
          if ((v315 & 0x8000000000000000) == 0)
          {
            v318 = vsubq_f64(vmaxnmq_f64(v312, v313), vminnmq_f64(v311, v363));
            v319 = vmulq_f64(vzip1q_s64(v318, v310), vzip2q_s64(v318, v310));
            *&v317 = *&vdivq_f64(v319, vdupq_laneq_s64(v319, 1));
          }

          v320 = (v308 + 32 * v307);
          v321 = v320[1];
          v322 = vaddq_f64(*v320, v321);
          v323 = vandq_s8(vcgeq_f64(v322, v313), vcgeq_f64(v363, *v320));
          if ((vandq_s8(vdupq_laneq_s64(v323, 1), v323).u64[0] & 0x8000000000000000) == 0)
          {
            v324 = vsubq_f64(vmaxnmq_f64(v322, v313), vminnmq_f64(*v320, v363));
            v325 = vmulq_f64(vzip1q_s64(v324, v321), vzip2q_s64(v324, v321));
            *&v316 = *&vdivq_f64(v325, vdupq_laneq_s64(v325, 1));
          }

          if (v317 > v316)
          {
            *v87 = v306;
            *(v88 - 1) = v307;
          }

          break;
        }

        if (v89 <= 7)
        {
          for (; v87 != v88 - 1; ++v87)
          {
            if (v87 != v88)
            {
              v326 = v87 + 1;
              if (v87 + 1 != v88)
              {
                v327 = *(a2 + 88);
                v328 = vaddq_f64(v363, v364);
                v329 = v87;
                do
                {
                  v330 = (v327 + 32 * *v326);
                  v332 = *v330;
                  v331 = v330[1];
                  v333 = vaddq_f64(*v330, v331);
                  v334 = vandq_s8(vcgeq_f64(v333, v328), vcgeq_f64(v363, *v330));
                  v335 = vandq_s8(vdupq_laneq_s64(v334, 1), v334).u64[0];
                  v336 = 0.0;
                  v337 = 0.0;
                  if ((v335 & 0x8000000000000000) == 0)
                  {
                    v338 = vsubq_f64(vmaxnmq_f64(v333, v328), vminnmq_f64(v332, v363));
                    v339 = vmulq_f64(vzip1q_s64(v338, v331), vzip2q_s64(v338, v331));
                    *&v337 = *&vdivq_f64(v339, vdupq_laneq_s64(v339, 1));
                  }

                  v340 = (v327 + 32 * *v329);
                  v341 = v340[1];
                  v342 = vaddq_f64(*v340, v341);
                  v343 = vandq_s8(vcgeq_f64(v342, v328), vcgeq_f64(v363, *v340));
                  if ((vandq_s8(vdupq_laneq_s64(v343, 1), v343).u64[0] & 0x8000000000000000) == 0)
                  {
                    v344 = vsubq_f64(vmaxnmq_f64(v342, v328), vminnmq_f64(*v340, v363));
                    v345 = vmulq_f64(vzip1q_s64(v344, v341), vzip2q_s64(v344, v341));
                    *&v336 = *&vdivq_f64(v345, vdupq_laneq_s64(v345, 1));
                  }

                  if (v337 > v336)
                  {
                    v329 = v326;
                  }

                  ++v326;
                }

                while (v326 != v88);
                if (v329 != v87)
                {
                  v346 = *v87;
                  *v87 = *v329;
                  *v329 = v346;
                }
              }
            }
          }

          break;
        }

        v90 = a1;
        v91 = &v87[(v88 - v87) >> 4];
        v92 = (v88 - 1);
        v93 = _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN21_UIRTreeContainerNodeImE46reversedIndexesOfChildrenWithClosestAffinityToEDv4_dEUlmmE_NS_11__wrap_iterIPmEELi0EEEbT1_SA_SA_T0_(v87, v91, v88 - 1, &v363, *(a2 + 88));
        v94 = *v87;
        v95 = *(a2 + 88);
        v96 = (v95 + 32 * *v87);
        v98 = *v96;
        v97 = v96[1];
        v99 = vaddq_f64(*v96, v97);
        v100 = vaddq_f64(v363, v364);
        v101 = vandq_s8(vcgeq_f64(v99, v100), vcgeq_f64(v363, *v96));
        v102 = vandq_s8(vdupq_laneq_s64(v101, 1), v101).u64[0];
        v103 = 0.0;
        v104 = 0.0;
        if ((v102 & 0x8000000000000000) == 0)
        {
          v105 = vsubq_f64(vmaxnmq_f64(v99, v100), vminnmq_f64(v98, v363));
          v106 = vmulq_f64(vzip1q_s64(v105, v97), vzip2q_s64(v105, v97));
          *&v104 = *&vdivq_f64(v106, vdupq_laneq_s64(v106, 1));
        }

        v107 = (v95 + 32 * *v91);
        v108 = *v107;
        v109 = v107[1];
        v110 = vaddq_f64(*v107, v109);
        v111 = vandq_s8(vcgeq_f64(v110, v100), vcgeq_f64(v363, *v107));
        v112 = vandq_s8(vdupq_laneq_s64(v111, 1), v111).u64[0];
        if ((v112 & 0x8000000000000000) == 0)
        {
          v113 = vsubq_f64(vmaxnmq_f64(v110, v100), vminnmq_f64(v108, v363));
          v114 = vmulq_f64(vzip1q_s64(v113, v109), vzip2q_s64(v113, v109));
          *&v103 = *&vdivq_f64(v114, vdupq_laneq_s64(v114, 1));
        }

        if (v104 > v103)
        {
          v115 = v88 - 1;
          goto LABEL_126;
        }

        v116 = vmuld_lane_f64(v109.f64[0], v109, 1);
        v115 = v88 - 1;
        while (--v115 != v87)
        {
          v117 = (v95 + 32 * *v115);
          v119 = *v117;
          v118 = v117[1];
          v120 = vaddq_f64(*v117, v118);
          v121 = vandq_s8(vcgeq_f64(v120, v100), vcgeq_f64(v363, *v117));
          v122 = vandq_s8(vdupq_laneq_s64(v121, 1), v121).u64[0];
          v123 = 0.0;
          v124 = 0.0;
          if ((v122 & 0x8000000000000000) == 0)
          {
            v125 = vsubq_f64(vmaxnmq_f64(v120, v100), vminnmq_f64(v119, v363));
            v126 = vmulq_f64(vzip1q_s64(v125, v118), vzip2q_s64(v125, v118));
            *&v124 = *&vdivq_f64(v126, vdupq_laneq_s64(v126, 1));
          }

          if ((v112 & 0x8000000000000000) == 0)
          {
            v127 = vsubq_f64(vmaxnmq_f64(v110, v100), vminnmq_f64(v108, v363));
            v123 = vmulq_laneq_f64(v127, v127, 1).f64[0] / v116;
          }

          if (v124 > v123)
          {
            *v87 = *v115;
            *v115 = v94;
            if (v93)
            {
              v93 = 2;
            }

            else
            {
              v93 = 1;
            }

LABEL_126:
            v128 = v87 + 1;
            if (v87 + 1 >= v115)
            {
              v150 = v87 + 1;
            }

            else
            {
              v129 = v87 + 1;
              while (1)
              {
                v130 = vaddq_f64(v363, v364);
                v131 = (v95 + 32 * *v91);
                v132 = *v131;
                v133 = v131[1];
                v134 = vaddq_f64(*v131, v133);
                v135 = vandq_s8(vcgeq_f64(v134, v130), vcgeq_f64(v363, *v131));
                v136 = vandq_s8(vdupq_laneq_s64(v135, 1), v135).u64[0];
                v137 = vmuld_lane_f64(v133.f64[0], v133, 1);
                do
                {
                  v138 = *v129;
                  v139 = (v95 + 32 * *v129);
                  v141 = *v139;
                  v140 = v139[1];
                  v142 = vaddq_f64(*v139, v140);
                  v143 = vandq_s8(vcgeq_f64(v142, v130), vcgeq_f64(v363, *v139));
                  v144 = vandq_s8(vdupq_laneq_s64(v143, 1), v143).u64[0];
                  v145 = 0.0;
                  v146 = 0.0;
                  if ((v144 & 0x8000000000000000) == 0)
                  {
                    v147 = vsubq_f64(vmaxnmq_f64(v142, v130), vminnmq_f64(v141, v363));
                    v148 = vmulq_f64(vzip1q_s64(v147, v140), vzip2q_s64(v147, v140));
                    *&v146 = *&vdivq_f64(v148, vdupq_laneq_s64(v148, 1));
                  }

                  if ((v136 & 0x8000000000000000) == 0)
                  {
                    v149 = vsubq_f64(vmaxnmq_f64(v134, v130), vminnmq_f64(v132, v363));
                    v145 = vmulq_laneq_f64(v149, v149, 1).f64[0] / v137;
                  }

                  ++v129;
                }

                while (v146 > v145);
                v150 = v129 - 1;
                do
                {
                  v152 = *--v115;
                  v151 = v152;
                  v153 = (v95 + 32 * v152);
                  v155 = *v153;
                  v154 = v153[1];
                  v156 = vaddq_f64(*v153, v154);
                  v157 = vandq_s8(vcgeq_f64(v156, v130), vcgeq_f64(v363, *v153));
                  v158 = vandq_s8(vdupq_laneq_s64(v157, 1), v157).u64[0];
                  v159 = 0.0;
                  v160 = 0.0;
                  if ((v158 & 0x8000000000000000) == 0)
                  {
                    v161 = vsubq_f64(vmaxnmq_f64(v156, v130), vminnmq_f64(v155, v363));
                    v162 = vmulq_f64(vzip1q_s64(v161, v154), vzip2q_s64(v161, v154));
                    *&v160 = *&vdivq_f64(v162, vdupq_laneq_s64(v162, 1));
                  }

                  if ((v136 & 0x8000000000000000) == 0)
                  {
                    v163 = vsubq_f64(vmaxnmq_f64(v134, v130), vminnmq_f64(v132, v363));
                    v159 = vmulq_laneq_f64(v163, v163, 1).f64[0] / v137;
                  }
                }

                while (v160 <= v159);
                if (v150 >= v115)
                {
                  break;
                }

                *v150 = v151;
                *v115 = v138;
                ++v93;
                if (v150 == v91)
                {
                  v91 = v115;
                }
              }
            }

            if (v150 != v91)
            {
              v164 = (v95 + 32 * *v91);
              v166 = *v164;
              v165 = v164[1];
              v167 = vaddq_f64(*v164, v165);
              v168 = vaddq_f64(v363, v364);
              v169 = vandq_s8(vcgeq_f64(v167, v168), vcgeq_f64(v363, *v164));
              v170 = vandq_s8(vdupq_laneq_s64(v169, 1), v169).u64[0];
              v171 = 0.0;
              v172 = 0.0;
              if ((v170 & 0x8000000000000000) == 0)
              {
                v173 = vsubq_f64(vmaxnmq_f64(v167, v168), vminnmq_f64(v166, v363));
                v174 = vmulq_f64(vzip1q_s64(v173, v165), vzip2q_s64(v173, v165));
                *&v172 = *&vdivq_f64(v174, vdupq_laneq_s64(v174, 1));
              }

              v175 = *v150;
              v176 = (v95 + 32 * *v150);
              v177 = v176[1];
              v178 = vaddq_f64(*v176, v177);
              v179 = vandq_s8(vcgeq_f64(v178, v168), vcgeq_f64(v363, *v176));
              if ((vandq_s8(vdupq_laneq_s64(v179, 1), v179).u64[0] & 0x8000000000000000) == 0)
              {
                v180 = vsubq_f64(vmaxnmq_f64(v178, v168), vminnmq_f64(*v176, v363));
                v181 = vmulq_f64(vzip1q_s64(v180, v177), vzip2q_s64(v180, v177));
                *&v171 = *&vdivq_f64(v181, vdupq_laneq_s64(v181, 1));
              }

              if (v172 > v171)
              {
                *v150 = *v91;
                *v91 = v175;
                ++v93;
              }
            }

            a1 = v90;
            if (v150 != v38)
            {
              if (v93)
              {
LABEL_154:
                if (v150 <= v38)
                {
                  v87 = v150 + 1;
                }

                else
                {
                  v88 = v150;
                }

                goto LABEL_206;
              }

              v182 = vaddq_f64(v363, v364);
              if (v150 <= v38)
              {
                v210 = v150 + 1;
                while (v210 != v88)
                {
                  v211 = (v95 + 32 * *v210);
                  v213 = *v211;
                  v212 = v211[1];
                  v214 = vaddq_f64(*v211, v212);
                  v215 = vandq_s8(vcgeq_f64(v214, v182), vcgeq_f64(v363, *v211));
                  v216 = vandq_s8(vdupq_laneq_s64(v215, 1), v215).u64[0];
                  v217 = 0.0;
                  v218 = 0.0;
                  if ((v216 & 0x8000000000000000) == 0)
                  {
                    v219 = vsubq_f64(vmaxnmq_f64(v214, v182), vminnmq_f64(v213, v363));
                    v220 = vmulq_f64(vzip1q_s64(v219, v212), vzip2q_s64(v219, v212));
                    *&v218 = *&vdivq_f64(v220, vdupq_laneq_s64(v220, 1));
                  }

                  v221 = (v95 + 32 * *(v210 - 1));
                  v222 = v221[1];
                  v223 = vaddq_f64(*v221, v222);
                  v224 = vandq_s8(vcgeq_f64(v223, v182), vcgeq_f64(v363, *v221));
                  if ((vandq_s8(vdupq_laneq_s64(v224, 1), v224).u64[0] & 0x8000000000000000) == 0)
                  {
                    v225 = vsubq_f64(vmaxnmq_f64(v223, v182), vminnmq_f64(*v221, v363));
                    v226 = vmulq_f64(vzip1q_s64(v225, v222), vzip2q_s64(v225, v222));
                    *&v217 = *&vdivq_f64(v226, vdupq_laneq_s64(v226, 1));
                  }

                  ++v210;
                  if (v218 > v217)
                  {
                    goto LABEL_154;
                  }
                }
              }

              else
              {
                while (v128 != v150)
                {
                  v183 = (v95 + 32 * *v128);
                  v185 = *v183;
                  v184 = v183[1];
                  v186 = vaddq_f64(*v183, v184);
                  v187 = vandq_s8(vcgeq_f64(v186, v182), vcgeq_f64(v363, *v183));
                  v188 = vandq_s8(vdupq_laneq_s64(v187, 1), v187).u64[0];
                  v189 = 0.0;
                  v190 = 0.0;
                  if ((v188 & 0x8000000000000000) == 0)
                  {
                    v191 = vsubq_f64(vmaxnmq_f64(v186, v182), vminnmq_f64(v185, v363));
                    v192 = vmulq_f64(vzip1q_s64(v191, v184), vzip2q_s64(v191, v184));
                    *&v190 = *&vdivq_f64(v192, vdupq_laneq_s64(v192, 1));
                  }

                  v193 = (v95 + 32 * *(v128 - 1));
                  v194 = v193[1];
                  v195 = vaddq_f64(*v193, v194);
                  v196 = vandq_s8(vcgeq_f64(v195, v182), vcgeq_f64(v363, *v193));
                  if ((vandq_s8(vdupq_laneq_s64(v196, 1), v196).u64[0] & 0x8000000000000000) == 0)
                  {
                    v197 = vsubq_f64(vmaxnmq_f64(v195, v182), vminnmq_f64(*v193, v363));
                    v198 = vmulq_f64(vzip1q_s64(v197, v194), vzip2q_s64(v197, v194));
                    *&v189 = *&vdivq_f64(v198, vdupq_laneq_s64(v198, 1));
                  }

                  ++v128;
                  if (v190 > v189)
                  {
                    goto LABEL_154;
                  }
                }
              }
            }

            goto LABEL_39;
          }
        }

        v199 = *v92;
        v200 = vsubq_f64(vmaxnmq_f64(v99, v100), vminnmq_f64(v98, v363));
        v201 = vmulq_f64(vzip1q_s64(v200, v97), vzip2q_s64(v200, v97));
        *&v202 = *&vdivq_f64(v201, vdupq_laneq_s64(v201, 1));
        if (v102 < 0)
        {
          v202 = 0.0;
        }

        v203 = (v95 + 32 * v199);
        v204 = v203[1];
        v205 = vaddq_f64(*v203, v204);
        v206 = vandq_s8(vcgeq_f64(v205, v100), vcgeq_f64(v363, *v203));
        if ((vandq_s8(vdupq_laneq_s64(v206, 1), v206).u64[0] & 0x8000000000000000) != 0)
        {
          v209 = 0.0;
        }

        else
        {
          v207 = vsubq_f64(vmaxnmq_f64(v205, v100), vminnmq_f64(*v203, v363));
          v208 = vmulq_f64(vzip1q_s64(v207, v204), vzip2q_s64(v207, v204));
          *&v209 = *&vdivq_f64(v208, vdupq_laneq_s64(v208, 1));
        }

        a1 = v90;
        v227 = (v87 + 1);
        if (v202 <= v209)
        {
          if (v227 == v92)
          {
            break;
          }

          v228 = vmuld_lane_f64(v97.f64[0], v97, 1);
          while (1)
          {
            v229 = 0.0;
            v230 = 0.0;
            if ((v102 & 0x8000000000000000) == 0)
            {
              v230 = vmulq_laneq_f64(v200, v200, 1).f64[0] / v228;
            }

            v231 = *v227;
            v232 = (v95 + 32 * *v227);
            v233 = v232[1];
            v234 = vaddq_f64(*v232, v233);
            v235 = vandq_s8(vcgeq_f64(v234, v100), vcgeq_f64(v363, *v232));
            if ((vandq_s8(vdupq_laneq_s64(v235, 1), v235).u64[0] & 0x8000000000000000) == 0)
            {
              v236 = vsubq_f64(vmaxnmq_f64(v234, v100), vminnmq_f64(*v232, v363));
              v237 = vmulq_f64(vzip1q_s64(v236, v233), vzip2q_s64(v236, v233));
              *&v229 = *&vdivq_f64(v237, vdupq_laneq_s64(v237, 1));
            }

            if (v230 > v229)
            {
              break;
            }

            if (++v227 == v92)
            {
              goto LABEL_39;
            }
          }

          *v227++ = v199;
          *v92 = v231;
        }

        if (v227 == v92)
        {
          break;
        }

        while (1)
        {
          v238 = (v95 + 32 * *v87);
          v239 = *v238;
          v240 = v238[1];
          v241 = vaddq_f64(*v238, v240);
          v242 = vaddq_f64(v363, v364);
          v243 = vandq_s8(vcgeq_f64(v241, v242), vcgeq_f64(v363, *v238));
          v244 = vandq_s8(vdupq_laneq_s64(v243, 1), v243).u64[0];
          v245 = vmuld_lane_f64(v240.f64[0], v240, 1);
          do
          {
            v246 = *v227;
            v247 = 0.0;
            v248 = 0.0;
            if ((v244 & 0x8000000000000000) == 0)
            {
              v249 = vsubq_f64(vmaxnmq_f64(v241, v242), vminnmq_f64(v239, v363));
              v248 = vmulq_laneq_f64(v249, v249, 1).f64[0] / v245;
            }

            v250 = (v95 + 32 * v246);
            v251 = v250[1];
            v252 = vaddq_f64(*v250, v251);
            v253 = vandq_s8(vcgeq_f64(v252, v242), vcgeq_f64(v363, *v250));
            if ((vandq_s8(vdupq_laneq_s64(v253, 1), v253).u64[0] & 0x8000000000000000) == 0)
            {
              v254 = vsubq_f64(vmaxnmq_f64(v252, v242), vminnmq_f64(*v250, v363));
              v255 = vmulq_f64(vzip1q_s64(v254, v251), vzip2q_s64(v254, v251));
              *&v247 = *&vdivq_f64(v255, vdupq_laneq_s64(v255, 1));
            }

            ++v227;
          }

          while (v248 <= v247);
          v256 = v227 - 1;
          do
          {
            v258 = *--v92;
            v257 = v258;
            v259 = 0.0;
            v260 = 0.0;
            if ((v244 & 0x8000000000000000) == 0)
            {
              v261 = vsubq_f64(vmaxnmq_f64(v241, v242), vminnmq_f64(v239, v363));
              v260 = vmulq_laneq_f64(v261, v261, 1).f64[0] / v245;
            }

            v262 = (v95 + 32 * v257);
            v263 = v262[1];
            v264 = vaddq_f64(*v262, v263);
            v265 = vandq_s8(vcgeq_f64(v264, v242), vcgeq_f64(v363, *v262));
            if ((vandq_s8(vdupq_laneq_s64(v265, 1), v265).u64[0] & 0x8000000000000000) == 0)
            {
              v266 = vsubq_f64(vmaxnmq_f64(v264, v242), vminnmq_f64(*v262, v363));
              v267 = vmulq_f64(vzip1q_s64(v266, v263), vzip2q_s64(v266, v263));
              *&v259 = *&vdivq_f64(v267, vdupq_laneq_s64(v267, 1));
            }
          }

          while (v260 > v259);
          if (v256 >= v92)
          {
            break;
          }

          *v256 = v257;
          *v92 = v246;
        }

        v87 = (v227 - 1);
        if (v256 > v38)
        {
          break;
        }

LABEL_206:
        ;
      }

      while (v88 != v38);
LABEL_39:
      v39 = 126 - 2 * __clz(v347);
      if (v351 >= 2)
      {
        v40 = v39;
      }

      else
      {
        v40 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *,true>(v26, v38, v40, 1);
      v26 = v360;
      v37 = v361;
      if (v38)
      {
        if (v361)
        {
          memmove(v38, 0, v361);
          v26 = v360;
        }

        v37 = &v361[v38 / 8];
        v361 = (v361 + v38);
      }
    }

    v41 = ((v37 - v26) >> 3) + 1;
    v363 = 0uLL;
    v364.f64[0] = 0.0;
    v357 = 0;
    v358 = 0;
    v359 = 0;
    _ZNSt3__16vectorIDv4_dNS_9allocatorIS1_EEE7reserveEm(&v363, v41);
    if (v41)
    {
      if (!(v41 >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(&v357, v41);
      }

LABEL_269:
      std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
    }

    v43 = v360;
    v42 = v361;
    if (v360 == v361)
    {
      v45 = v363.f64[1];
      v46 = v363.f64[0];
    }

    else
    {
      v348 = a3;
      v45 = v363.f64[1];
      v44 = v364.f64[0];
      v46 = v363.f64[0];
      do
      {
        v47 = *v43;
        v48 = (*(a2 + 88) + 32 * *v43);
        if (*&v45 >= *&v44)
        {
          v50 = *&v45 - *&v46;
          v51 = (*&v45 - *&v46) >> 5;
          v52 = v51 + 1;
          if ((v51 + 1) >> 59)
          {
            goto LABEL_267;
          }

          if ((*&v44 - *&v46) >> 4 > v52)
          {
            v52 = (*&v44 - *&v46) >> 4;
          }

          if (*&v44 - *&v46 >= 0x7FFFFFFFFFFFFFE0uLL)
          {
            v53 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v53 = v52;
          }

          if (v53)
          {
            _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv4_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(v53);
          }

          v54 = (32 * v51);
          v55 = v48[1];
          v44 = 0.0;
          *v54 = *v48;
          v54[1] = v55;
          *&v45 = 32 * v51 + 32;
          memcpy(0, *&v46, v50);
          if (v46 != 0.0)
          {
            operator delete(*&v46);
          }

          v46 = 0.0;
        }

        else
        {
          v49 = v48[1];
          **&v45 = *v48;
          *(*&v45 + 16) = v49;
          *&v45 += 32;
        }

        v56 = *(a2 + 96);
        v57 = v56 - (v48 + 2);
        if (v56 != (v48 + 2))
        {
          memmove(v48, v48 + 2, v56 - (v48 + 2));
        }

        *(a2 + 96) = v48 + v57;
        v58 = (*(a2 + 64) + 8 * v47);
        v59 = v358;
        if (v358 >= v359)
        {
          v61 = v357;
          v62 = v358 - v357;
          v63 = v358 - v357;
          v64 = v63 + 1;
          if ((v63 + 1) >> 61)
          {
            v363.f64[0] = v46;
            std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
          }

          v65 = v359 - v357;
          if ((v359 - v357) >> 2 > v64)
          {
            v64 = v65 >> 2;
          }

          v66 = v65 >= 0x7FFFFFFFFFFFFFF8;
          v67 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v66)
          {
            v67 = v64;
          }

          if (v67)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(&v357, v67);
          }

          v68 = (8 * v63);
          v69 = &v68[-(v358 - v357)];
          *v68 = *v58;
          v60 = v68 + 1;
          memcpy(v69, v61, v62);
          v70 = v357;
          v357 = v69;
          v358 = v60;
          v359 = 0;
          if (v70)
          {
            operator delete(v70);
          }
        }

        else
        {
          *v358 = *v58;
          v60 = v59 + 1;
        }

        v358 = v60;
        v71 = *(a2 + 72);
        v72 = v71 - (v58 + 1);
        if (v71 != (v58 + 1))
        {
          memmove(v58, v58 + 1, v71 - (v58 + 1));
        }

        *(a2 + 72) = v58 + v72;
        ++v43;
      }

      while (v43 != v42);
      v363.f64[1] = v45;
      v364.f64[0] = v44;
      v363.f64[0] = v46;
      a3 = v348;
    }

    if (*&v46 != *&v45)
    {
      v73 = (*&v45 - 32);
      if ((*&v45 - 32) > *&v46)
      {
        v74 = *&v46 + 32;
        do
        {
          v75 = *(v74 - 32);
          v76 = *(v74 - 16);
          v77 = v73[1];
          *(v74 - 32) = *v73;
          *(v74 - 16) = v77;
          *v73 = v75;
          v73[1] = v76;
          v73 -= 2;
          v66 = v74 >= v73;
          v74 += 32;
        }

        while (!v66);
      }
    }

    v78 = v358 - 1;
    if (v357 != v358 && v78 > v357)
    {
      v80 = (v357 + 1);
      do
      {
        v81 = *(v80 - 8);
        *(v80 - 8) = *v78;
        *v78-- = v81;
        v66 = v80 >= v78;
        v80 += 8;
      }

      while (!v66);
    }

    if (*&v45 < *&v364.f64[0])
    {
      **&v45 = a5;
      *(*&v45 + 16) = a6;
      v82 = *&v45 + 32;
      goto LABEL_230;
    }

    v83 = (*&v45 - *&v46) >> 5;
    v84 = v83 + 1;
    if (!((v83 + 1) >> 59))
    {
      v85 = *&v364.f64[0] - *&v46;
      if ((*&v364.f64[0] - *&v46) >> 4 > v84)
      {
        v84 = v85 >> 4;
      }

      if (v85 >= 0x7FFFFFFFFFFFFFE0)
      {
        v86 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v86 = v84;
      }

      if (v86)
      {
        _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv4_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(v86);
      }

      v293 = (32 * v83);
      *v293 = a5;
      v293[1] = a6;
      v82 = 32 * v83 + 32;
      memcpy(0, *&v46, *&v45 - *&v46);
      v363.f64[0] = 0.0;
      *&v363.f64[1] = v82;
      v364.f64[0] = 0.0;
      if (v46 != 0.0)
      {
        operator delete(*&v46);
      }

LABEL_230:
      *&v363.f64[1] = v82;
      v294 = v358;
      if (v358 >= v359)
      {
        v296 = v357;
        v297 = v358 - v357;
        v298 = v358 - v357;
        v299 = v298 + 1;
        if ((v298 + 1) >> 61)
        {
          goto LABEL_269;
        }

        v300 = v359 - v357;
        if ((v359 - v357) >> 2 > v299)
        {
          v299 = v300 >> 2;
        }

        v66 = v300 >= 0x7FFFFFFFFFFFFFF8;
        v301 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v66)
        {
          v301 = v299;
        }

        if (v301)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(&v357, v301);
        }

        v302 = (8 * v298);
        v303 = &v302[-(v358 - v357)];
        *v302 = a3;
        v295 = v302 + 1;
        memcpy(v303, v296, v297);
        v304 = v357;
        v357 = v303;
        v358 = v295;
        v359 = 0;
        if (v304)
        {
          operator delete(v304);
        }
      }

      else
      {
        *v358 = a3;
        v295 = v294 + 1;
      }

      v358 = v295;
      v356 = 0uLL;
      v305 = *(a2 + 32);
      if (v305)
      {
        *(&v356 + 1) = std::__shared_weak_count::lock(v305);
        if (*(&v356 + 1))
        {
          *&v356 = *(a2 + 24);
        }
      }

      _ZNSt3__115allocate_sharedB8nn200100I21_UIRTreeContainerNodeImENS_9allocatorIS2_EEJNS_10shared_ptrIS2_EENS_6vectorImNS3_ImEEEENS7_IDv4_dNS3_ISA_EEEEELi0EEENS5_IT_EERKT0_DpOT1_();
    }

LABEL_267:
    std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
  }

  v30 = *(a2 + 96);
  v29 = *(a2 + 104);
  if (v30 >= v29)
  {
    v32 = *(a2 + 88);
    v33 = (v30 - v32) >> 5;
    v34 = v33 + 1;
    if ((v33 + 1) >> 59)
    {
      goto LABEL_267;
    }

    v35 = v29 - v32;
    if (v35 >> 4 > v34)
    {
      v34 = v35 >> 4;
    }

    if (v35 >= 0x7FFFFFFFFFFFFFE0)
    {
      v36 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v36 = v34;
    }

    if (v36)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv4_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(v36);
    }

    v268 = (32 * v33);
    *v268 = a5;
    v268[1] = a6;
    v31 = 32 * v33 + 32;
    v269 = *(a2 + 88);
    v270 = *(a2 + 96) - v269;
    v271 = v268 - v270;
    memcpy(v268 - v270, v269, v270);
    v272 = *(a2 + 88);
    *(a2 + 88) = v271;
    *(a2 + 96) = v31;
    *(a2 + 104) = 0;
    if (v272)
    {
      operator delete(v272);
    }
  }

  else
  {
    *v30 = a5;
    v30[1] = a6;
    v31 = &v30[2];
  }

  *(a2 + 96) = v31;
  v274 = *(a2 + 72);
  v273 = *(a2 + 80);
  if (v274 >= v273)
  {
    v276 = *(a2 + 64);
    v277 = v274 - v276;
    v278 = (v274 - v276) >> 3;
    v279 = v278 + 1;
    if ((v278 + 1) >> 61)
    {
      std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
    }

    v280 = v273 - v276;
    if (v280 >> 2 > v279)
    {
      v279 = v280 >> 2;
    }

    v66 = v280 >= 0x7FFFFFFFFFFFFFF8;
    v281 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v66)
    {
      v281 = v279;
    }

    if (v281)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a2 + 64, v281);
    }

    v282 = v278;
    v283 = (8 * v278);
    v284 = &v283[-v282];
    *v283 = a3;
    v275 = v283 + 1;
    memcpy(v284, v276, v277);
    v285 = *(a2 + 64);
    *(a2 + 64) = v284;
    *(a2 + 72) = v275;
    *(a2 + 80) = 0;
    if (v285)
    {
      operator delete(v285);
    }
  }

  else
  {
    *v274 = a3;
    v275 = v274 + 8;
  }

  *(a2 + 72) = v275;
  _UIRTreeContainerNode<unsigned long>::boundingFrame(v355, a2);
  v286 = vaddq_f64(a5, a6);
  v287 = vandq_s8(vcgeq_f64(vaddq_f64(v355[0], v355[1]), v286), vcgeq_f64(a5, v355[0]));
  if ((vandq_s8(vdupq_laneq_s64(v287, 1), v287).u64[0] & 0x8000000000000000) == 0)
  {
    v288 = *(a2 + 112);
    v289 = vaddq_f64(v288, *(a2 + 128));
    v290 = vminnmq_f64(v288, a5);
    *(a2 + 112) = v290;
    *(a2 + 128) = vsubq_f64(vmaxnmq_f64(v289, v286), v290);
    v291 = *(a2 + 32);
    if (v291)
    {
      v291 = std::__shared_weak_count::lock(v291);
      v292 = v291;
      if (v291)
      {
        v291 = *(a2 + 24);
      }
    }

    else
    {
      v292 = 0;
    }

    _UIRTreeContainerNode<unsigned long>::invalidateBoundingFrameAndNotifyParents(v291);
    if (v292)
    {
      v23 = v292;
LABEL_21:
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }
  }

LABEL_26:
  result = *a4;
  *a1 = *a4;
  a4->f64[0] = 0.0;
  a4->f64[1] = 0.0;
  return result;
}

void sub_188C81A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<_UIRTreeContainerNode<unsigned long>>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<_UICollectionViewRTreeElement>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<_UICollectionViewRTreeElement>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 _UIRTreeContainerNode<_UICollectionViewRTreeElement>::addChild(float64x2_t *a1, void *a2, uint64_t *a3, float64x2_t *a4, float64x2_t a5, float64x2_t a6)
{
  v7 = a2[5];
  v8 = a2[6];
  if (v8 != v7)
  {
LABEL_4:
    v10 = (v8 - v7) >> 4;
    if (!v10)
    {
      goto LABEL_23;
    }

    if (v10 == 1)
    {
      v11 = *v7;
    }

    else
    {
      if (v7 == v8)
      {
        goto LABEL_23;
      }

      v11 = 0;
      v370 = vaddq_f64(a5, a6);
      v12 = 1.79769313e308;
      do
      {
        _UIRTreeContainerNode<unsigned long>::boundingFrame(&v390, *v7);
        v13 = vaddq_f64(v390, v391);
        v14 = vandq_s8(vcgeq_f64(v13, v370), vcgeq_f64(a5, v390));
        if ((vandq_s8(vdupq_laneq_s64(v14, 1), v14).u64[0] & 0x8000000000000000) != 0)
        {
          v17 = 0.0;
        }

        else
        {
          v15 = vsubq_f64(vmaxnmq_f64(v13, v370), vminnmq_f64(v390, a5));
          v16 = vmulq_f64(vzip1q_s64(v15, v391), vzip2q_s64(v15, v391));
          *&v17 = *&vdivq_f64(v16, vdupq_laneq_s64(v16, 1));
        }

        if (v17 < v12)
        {
          v11 = *v7;
          v12 = v17;
          if (fabs(v17) < 2.22044605e-16)
          {
            break;
          }
        }

        v7 += 2;
      }

      while (v7 != v8);
    }

    if (v11)
    {
      v18 = *a3;
      v19 = *(a3 + 1);
      v20 = *(a3 + 3);
      a3[3] = 0;
      a3[4] = 0;
      v376 = v19;
      v377 = v20;
      v21 = *&a4->f64[1];
      v373 = a4->f64[0];
      v374 = v21;
      v375 = v18;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      _UIRTreeContainerNode<_UICollectionViewRTreeElement>::addChild(&v390, v11, &v375, &v373, a5, a6);
      v22 = *&a4->f64[1];
      *a4 = v390;
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v22);
      }

      if (v374)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v374);
      }

      goto LABEL_27;
    }

LABEL_23:
    v387 = 0;
    v388 = 0;
    v389 = 0;
    v384 = 0;
    v385 = 0;
    v386 = 0;
    operator new();
  }

  if (_UIRTreeContainerNode<unsigned long>::isRoot(a2))
  {
    v7 = a2[5];
    v8 = a2[6];
    goto LABEL_4;
  }

  if (_UIRTreeContainerNode<_UICollectionViewRTreeElement>::isFull(a2))
  {
    v390 = a5;
    v391 = a6;
    v23 = a2[8];
    v24 = a2[9];
    v388 = 0;
    v389 = 0;
    v387 = 0;
    v25 = (v24 - v23) >> 3;
    v26 = 0xCCCCCCCCCCCCCCCDLL * v25;
    if (v24 != v23)
    {
      std::vector<unsigned long>::__vallocate[abi:nn200100](&v387, 0xCCCCCCCCCCCCCCCDLL * v25);
    }

    v36 = 0;
    v37 = 0;
    v38 = (8 * (v26 >> 1));
    if (v38)
    {
      v100 = 0;
      v101 = 0;
      do
      {
        v102 = v101 - v100;
        if (v102 < 2)
        {
          break;
        }

        if (v102 == 3)
        {
          _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN21_UIRTreeContainerNodeImE46reversedIndexesOfChildrenWithClosestAffinityToEDv4_dEUlmmE_NS_11__wrap_iterIPmEELi0EEEbT1_SA_SA_T0_(v100, v100 + 1, v101 - 1, &v390, a2[11]);
          break;
        }

        if (v102 == 2)
        {
          v326 = *(v101 - 1);
          v327 = *v100;
          v328 = a2[11];
          v329 = (v328 + 32 * v326);
          v331 = *v329;
          v330 = v329[1];
          v332 = vaddq_f64(*v329, v330);
          v333 = vaddq_f64(v390, v391);
          v334 = vandq_s8(vcgeq_f64(v332, v333), vcgeq_f64(v390, *v329));
          v335 = vandq_s8(vdupq_laneq_s64(v334, 1), v334).u64[0];
          v336 = 0.0;
          v337 = 0.0;
          if ((v335 & 0x8000000000000000) == 0)
          {
            v338 = vsubq_f64(vmaxnmq_f64(v332, v333), vminnmq_f64(v331, v390));
            v339 = vmulq_f64(vzip1q_s64(v338, v330), vzip2q_s64(v338, v330));
            *&v337 = *&vdivq_f64(v339, vdupq_laneq_s64(v339, 1));
          }

          v340 = (v328 + 32 * v327);
          v341 = v340[1];
          v342 = vaddq_f64(*v340, v341);
          v343 = vandq_s8(vcgeq_f64(v342, v333), vcgeq_f64(v390, *v340));
          if ((vandq_s8(vdupq_laneq_s64(v343, 1), v343).u64[0] & 0x8000000000000000) == 0)
          {
            v344 = vsubq_f64(vmaxnmq_f64(v342, v333), vminnmq_f64(*v340, v390));
            v345 = vmulq_f64(vzip1q_s64(v344, v341), vzip2q_s64(v344, v341));
            *&v336 = *&vdivq_f64(v345, vdupq_laneq_s64(v345, 1));
          }

          if (v337 > v336)
          {
            *v100 = v326;
            *(v101 - 1) = v327;
          }

          break;
        }

        if (v102 <= 7)
        {
          for (; v100 != v101 - 1; ++v100)
          {
            if (v100 != v101)
            {
              v346 = v100 + 1;
              if (v100 + 1 != v101)
              {
                v347 = a2[11];
                v348 = vaddq_f64(v390, v391);
                v349 = v100;
                do
                {
                  v350 = (v347 + 32 * *v346);
                  v352 = *v350;
                  v351 = v350[1];
                  v353 = vaddq_f64(*v350, v351);
                  v354 = vandq_s8(vcgeq_f64(v353, v348), vcgeq_f64(v390, *v350));
                  v355 = vandq_s8(vdupq_laneq_s64(v354, 1), v354).u64[0];
                  v356 = 0.0;
                  v357 = 0.0;
                  if ((v355 & 0x8000000000000000) == 0)
                  {
                    v358 = vsubq_f64(vmaxnmq_f64(v353, v348), vminnmq_f64(v352, v390));
                    v359 = vmulq_f64(vzip1q_s64(v358, v351), vzip2q_s64(v358, v351));
                    *&v357 = *&vdivq_f64(v359, vdupq_laneq_s64(v359, 1));
                  }

                  v360 = (v347 + 32 * *v349);
                  v361 = v360[1];
                  v362 = vaddq_f64(*v360, v361);
                  v363 = vandq_s8(vcgeq_f64(v362, v348), vcgeq_f64(v390, *v360));
                  if ((vandq_s8(vdupq_laneq_s64(v363, 1), v363).u64[0] & 0x8000000000000000) == 0)
                  {
                    v364 = vsubq_f64(vmaxnmq_f64(v362, v348), vminnmq_f64(*v360, v390));
                    v365 = vmulq_f64(vzip1q_s64(v364, v361), vzip2q_s64(v364, v361));
                    *&v356 = *&vdivq_f64(v365, vdupq_laneq_s64(v365, 1));
                  }

                  if (v357 > v356)
                  {
                    v349 = v346;
                  }

                  ++v346;
                }

                while (v346 != v101);
                if (v349 != v100)
                {
                  v366 = *v100;
                  *v100 = *v349;
                  *v349 = v366;
                }
              }
            }
          }

          break;
        }

        v103 = &v100[(v101 - v100) >> 4];
        v104 = (v101 - 1);
        v105 = _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN21_UIRTreeContainerNodeImE46reversedIndexesOfChildrenWithClosestAffinityToEDv4_dEUlmmE_NS_11__wrap_iterIPmEELi0EEEbT1_SA_SA_T0_(v100, v103, v101 - 1, &v390, a2[11]);
        v106 = *v100;
        v107 = a2[11];
        v108 = (v107 + 32 * *v100);
        v110 = *v108;
        v109 = v108[1];
        v111 = vaddq_f64(*v108, v109);
        v112 = vaddq_f64(v390, v391);
        v113 = vandq_s8(vcgeq_f64(v111, v112), vcgeq_f64(v390, *v108));
        v114 = vandq_s8(vdupq_laneq_s64(v113, 1), v113).u64[0];
        v115 = 0.0;
        v116 = 0.0;
        if ((v114 & 0x8000000000000000) == 0)
        {
          v117 = vsubq_f64(vmaxnmq_f64(v111, v112), vminnmq_f64(v110, v390));
          v118 = vmulq_f64(vzip1q_s64(v117, v109), vzip2q_s64(v117, v109));
          *&v116 = *&vdivq_f64(v118, vdupq_laneq_s64(v118, 1));
        }

        v119 = (v107 + 32 * *v103);
        v120 = *v119;
        v121 = v119[1];
        v122 = vaddq_f64(*v119, v121);
        v123 = vandq_s8(vcgeq_f64(v122, v112), vcgeq_f64(v390, *v119));
        v124 = vandq_s8(vdupq_laneq_s64(v123, 1), v123).u64[0];
        if ((v124 & 0x8000000000000000) == 0)
        {
          v125 = vsubq_f64(vmaxnmq_f64(v122, v112), vminnmq_f64(v120, v390));
          v126 = vmulq_f64(vzip1q_s64(v125, v121), vzip2q_s64(v125, v121));
          *&v115 = *&vdivq_f64(v126, vdupq_laneq_s64(v126, 1));
        }

        if (v116 > v115)
        {
          v127 = v101 - 1;
          goto LABEL_126;
        }

        v128 = vmuld_lane_f64(v121.f64[0], v121, 1);
        v127 = v101 - 1;
        while (--v127 != v100)
        {
          v129 = (v107 + 32 * *v127);
          v131 = *v129;
          v130 = v129[1];
          v132 = vaddq_f64(*v129, v130);
          v133 = vandq_s8(vcgeq_f64(v132, v112), vcgeq_f64(v390, *v129));
          v134 = vandq_s8(vdupq_laneq_s64(v133, 1), v133).u64[0];
          v135 = 0.0;
          v136 = 0.0;
          if ((v134 & 0x8000000000000000) == 0)
          {
            v137 = vsubq_f64(vmaxnmq_f64(v132, v112), vminnmq_f64(v131, v390));
            v138 = vmulq_f64(vzip1q_s64(v137, v130), vzip2q_s64(v137, v130));
            *&v136 = *&vdivq_f64(v138, vdupq_laneq_s64(v138, 1));
          }

          if ((v124 & 0x8000000000000000) == 0)
          {
            v139 = vsubq_f64(vmaxnmq_f64(v122, v112), vminnmq_f64(v120, v390));
            v135 = vmulq_laneq_f64(v139, v139, 1).f64[0] / v128;
          }

          if (v136 > v135)
          {
            *v100 = *v127;
            *v127 = v106;
            if (v105)
            {
              v105 = 2;
            }

            else
            {
              v105 = 1;
            }

LABEL_126:
            v140 = v100 + 1;
            if (v100 + 1 >= v127)
            {
              v162 = v100 + 1;
            }

            else
            {
              v141 = v100 + 1;
              while (1)
              {
                v142 = vaddq_f64(v390, v391);
                v143 = (v107 + 32 * *v103);
                v144 = *v143;
                v145 = v143[1];
                v146 = vaddq_f64(*v143, v145);
                v147 = vandq_s8(vcgeq_f64(v146, v142), vcgeq_f64(v390, *v143));
                v148 = vandq_s8(vdupq_laneq_s64(v147, 1), v147).u64[0];
                v149 = vmuld_lane_f64(v145.f64[0], v145, 1);
                do
                {
                  v150 = *v141;
                  v151 = (v107 + 32 * *v141);
                  v153 = *v151;
                  v152 = v151[1];
                  v154 = vaddq_f64(*v151, v152);
                  v155 = vandq_s8(vcgeq_f64(v154, v142), vcgeq_f64(v390, *v151));
                  v156 = vandq_s8(vdupq_laneq_s64(v155, 1), v155).u64[0];
                  v157 = 0.0;
                  v158 = 0.0;
                  if ((v156 & 0x8000000000000000) == 0)
                  {
                    v159 = vsubq_f64(vmaxnmq_f64(v154, v142), vminnmq_f64(v153, v390));
                    v160 = vmulq_f64(vzip1q_s64(v159, v152), vzip2q_s64(v159, v152));
                    *&v158 = *&vdivq_f64(v160, vdupq_laneq_s64(v160, 1));
                  }

                  if ((v148 & 0x8000000000000000) == 0)
                  {
                    v161 = vsubq_f64(vmaxnmq_f64(v146, v142), vminnmq_f64(v144, v390));
                    v157 = vmulq_laneq_f64(v161, v161, 1).f64[0] / v149;
                  }

                  ++v141;
                }

                while (v158 > v157);
                v162 = v141 - 1;
                do
                {
                  v164 = *--v127;
                  v163 = v164;
                  v165 = (v107 + 32 * v164);
                  v167 = *v165;
                  v166 = v165[1];
                  v168 = vaddq_f64(*v165, v166);
                  v169 = vandq_s8(vcgeq_f64(v168, v142), vcgeq_f64(v390, *v165));
                  v170 = vandq_s8(vdupq_laneq_s64(v169, 1), v169).u64[0];
                  v171 = 0.0;
                  v172 = 0.0;
                  if ((v170 & 0x8000000000000000) == 0)
                  {
                    v173 = vsubq_f64(vmaxnmq_f64(v168, v142), vminnmq_f64(v167, v390));
                    v174 = vmulq_f64(vzip1q_s64(v173, v166), vzip2q_s64(v173, v166));
                    *&v172 = *&vdivq_f64(v174, vdupq_laneq_s64(v174, 1));
                  }

                  if ((v148 & 0x8000000000000000) == 0)
                  {
                    v175 = vsubq_f64(vmaxnmq_f64(v146, v142), vminnmq_f64(v144, v390));
                    v171 = vmulq_laneq_f64(v175, v175, 1).f64[0] / v149;
                  }
                }

                while (v172 <= v171);
                if (v162 >= v127)
                {
                  break;
                }

                *v162 = v163;
                *v127 = v150;
                ++v105;
                if (v162 == v103)
                {
                  v103 = v127;
                }
              }
            }

            if (v162 != v103)
            {
              v176 = (v107 + 32 * *v103);
              v178 = *v176;
              v177 = v176[1];
              v179 = vaddq_f64(*v176, v177);
              v180 = vaddq_f64(v390, v391);
              v181 = vandq_s8(vcgeq_f64(v179, v180), vcgeq_f64(v390, *v176));
              v182 = vandq_s8(vdupq_laneq_s64(v181, 1), v181).u64[0];
              v183 = 0.0;
              v184 = 0.0;
              if ((v182 & 0x8000000000000000) == 0)
              {
                v185 = vsubq_f64(vmaxnmq_f64(v179, v180), vminnmq_f64(v178, v390));
                v186 = vmulq_f64(vzip1q_s64(v185, v177), vzip2q_s64(v185, v177));
                *&v184 = *&vdivq_f64(v186, vdupq_laneq_s64(v186, 1));
              }

              v187 = *v162;
              v188 = (v107 + 32 * *v162);
              v189 = v188[1];
              v190 = vaddq_f64(*v188, v189);
              v191 = vandq_s8(vcgeq_f64(v190, v180), vcgeq_f64(v390, *v188));
              if ((vandq_s8(vdupq_laneq_s64(v191, 1), v191).u64[0] & 0x8000000000000000) == 0)
              {
                v192 = vsubq_f64(vmaxnmq_f64(v190, v180), vminnmq_f64(*v188, v390));
                v193 = vmulq_f64(vzip1q_s64(v192, v189), vzip2q_s64(v192, v189));
                *&v183 = *&vdivq_f64(v193, vdupq_laneq_s64(v193, 1));
              }

              if (v184 > v183)
              {
                *v162 = *v103;
                *v103 = v187;
                ++v105;
              }
            }

            if (v162 != v38)
            {
              if (v105)
              {
LABEL_154:
                if (v162 <= v38)
                {
                  v100 = v162 + 1;
                }

                else
                {
                  v101 = v162;
                }

                goto LABEL_205;
              }

              v194 = vaddq_f64(v390, v391);
              if (v162 <= v38)
              {
                v222 = v162 + 1;
                while (v222 != v101)
                {
                  v223 = (v107 + 32 * *v222);
                  v225 = *v223;
                  v224 = v223[1];
                  v226 = vaddq_f64(*v223, v224);
                  v227 = vandq_s8(vcgeq_f64(v226, v194), vcgeq_f64(v390, *v223));
                  v228 = vandq_s8(vdupq_laneq_s64(v227, 1), v227).u64[0];
                  v229 = 0.0;
                  v230 = 0.0;
                  if ((v228 & 0x8000000000000000) == 0)
                  {
                    v231 = vsubq_f64(vmaxnmq_f64(v226, v194), vminnmq_f64(v225, v390));
                    v232 = vmulq_f64(vzip1q_s64(v231, v224), vzip2q_s64(v231, v224));
                    *&v230 = *&vdivq_f64(v232, vdupq_laneq_s64(v232, 1));
                  }

                  v233 = (v107 + 32 * *(v222 - 1));
                  v234 = v233[1];
                  v235 = vaddq_f64(*v233, v234);
                  v236 = vandq_s8(vcgeq_f64(v235, v194), vcgeq_f64(v390, *v233));
                  if ((vandq_s8(vdupq_laneq_s64(v236, 1), v236).u64[0] & 0x8000000000000000) == 0)
                  {
                    v237 = vsubq_f64(vmaxnmq_f64(v235, v194), vminnmq_f64(*v233, v390));
                    v238 = vmulq_f64(vzip1q_s64(v237, v234), vzip2q_s64(v237, v234));
                    *&v229 = *&vdivq_f64(v238, vdupq_laneq_s64(v238, 1));
                  }

                  ++v222;
                  if (v230 > v229)
                  {
                    goto LABEL_154;
                  }
                }
              }

              else
              {
                while (v140 != v162)
                {
                  v195 = (v107 + 32 * *v140);
                  v197 = *v195;
                  v196 = v195[1];
                  v198 = vaddq_f64(*v195, v196);
                  v199 = vandq_s8(vcgeq_f64(v198, v194), vcgeq_f64(v390, *v195));
                  v200 = vandq_s8(vdupq_laneq_s64(v199, 1), v199).u64[0];
                  v201 = 0.0;
                  v202 = 0.0;
                  if ((v200 & 0x8000000000000000) == 0)
                  {
                    v203 = vsubq_f64(vmaxnmq_f64(v198, v194), vminnmq_f64(v197, v390));
                    v204 = vmulq_f64(vzip1q_s64(v203, v196), vzip2q_s64(v203, v196));
                    *&v202 = *&vdivq_f64(v204, vdupq_laneq_s64(v204, 1));
                  }

                  v205 = (v107 + 32 * *(v140 - 1));
                  v206 = v205[1];
                  v207 = vaddq_f64(*v205, v206);
                  v208 = vandq_s8(vcgeq_f64(v207, v194), vcgeq_f64(v390, *v205));
                  if ((vandq_s8(vdupq_laneq_s64(v208, 1), v208).u64[0] & 0x8000000000000000) == 0)
                  {
                    v209 = vsubq_f64(vmaxnmq_f64(v207, v194), vminnmq_f64(*v205, v390));
                    v210 = vmulq_f64(vzip1q_s64(v209, v206), vzip2q_s64(v209, v206));
                    *&v201 = *&vdivq_f64(v210, vdupq_laneq_s64(v210, 1));
                  }

                  ++v140;
                  if (v202 > v201)
                  {
                    goto LABEL_154;
                  }
                }
              }
            }

            goto LABEL_40;
          }
        }

        v211 = *v104;
        v212 = vsubq_f64(vmaxnmq_f64(v111, v112), vminnmq_f64(v110, v390));
        v213 = vmulq_f64(vzip1q_s64(v212, v109), vzip2q_s64(v212, v109));
        *&v214 = *&vdivq_f64(v213, vdupq_laneq_s64(v213, 1));
        if (v114 < 0)
        {
          v214 = 0.0;
        }

        v215 = (v107 + 32 * v211);
        v216 = v215[1];
        v217 = vaddq_f64(*v215, v216);
        v218 = vandq_s8(vcgeq_f64(v217, v112), vcgeq_f64(v390, *v215));
        if ((vandq_s8(vdupq_laneq_s64(v218, 1), v218).u64[0] & 0x8000000000000000) != 0)
        {
          v221 = 0.0;
        }

        else
        {
          v219 = vsubq_f64(vmaxnmq_f64(v217, v112), vminnmq_f64(*v215, v390));
          v220 = vmulq_f64(vzip1q_s64(v219, v216), vzip2q_s64(v219, v216));
          *&v221 = *&vdivq_f64(v220, vdupq_laneq_s64(v220, 1));
        }

        v239 = (v100 + 1);
        if (v214 <= v221)
        {
          if (v239 == v104)
          {
            break;
          }

          v240 = vmuld_lane_f64(v109.f64[0], v109, 1);
          while (1)
          {
            v241 = 0.0;
            v242 = 0.0;
            if ((v114 & 0x8000000000000000) == 0)
            {
              v242 = vmulq_laneq_f64(v212, v212, 1).f64[0] / v240;
            }

            v243 = *v239;
            v244 = (v107 + 32 * *v239);
            v245 = v244[1];
            v246 = vaddq_f64(*v244, v245);
            v247 = vandq_s8(vcgeq_f64(v246, v112), vcgeq_f64(v390, *v244));
            if ((vandq_s8(vdupq_laneq_s64(v247, 1), v247).u64[0] & 0x8000000000000000) == 0)
            {
              v248 = vsubq_f64(vmaxnmq_f64(v246, v112), vminnmq_f64(*v244, v390));
              v249 = vmulq_f64(vzip1q_s64(v248, v245), vzip2q_s64(v248, v245));
              *&v241 = *&vdivq_f64(v249, vdupq_laneq_s64(v249, 1));
            }

            if (v242 > v241)
            {
              break;
            }

            if (++v239 == v104)
            {
              goto LABEL_40;
            }
          }

          *v239++ = v211;
          *v104 = v243;
        }

        if (v239 == v104)
        {
          break;
        }

        while (1)
        {
          v250 = (v107 + 32 * *v100);
          v251 = *v250;
          v252 = v250[1];
          v253 = vaddq_f64(*v250, v252);
          v254 = vaddq_f64(v390, v391);
          v255 = vandq_s8(vcgeq_f64(v253, v254), vcgeq_f64(v390, *v250));
          v256 = vandq_s8(vdupq_laneq_s64(v255, 1), v255).u64[0];
          v257 = vmuld_lane_f64(v252.f64[0], v252, 1);
          do
          {
            v258 = *v239;
            v259 = 0.0;
            v260 = 0.0;
            if ((v256 & 0x8000000000000000) == 0)
            {
              v261 = vsubq_f64(vmaxnmq_f64(v253, v254), vminnmq_f64(v251, v390));
              v260 = vmulq_laneq_f64(v261, v261, 1).f64[0] / v257;
            }

            v262 = (v107 + 32 * v258);
            v263 = v262[1];
            v264 = vaddq_f64(*v262, v263);
            v265 = vandq_s8(vcgeq_f64(v264, v254), vcgeq_f64(v390, *v262));
            if ((vandq_s8(vdupq_laneq_s64(v265, 1), v265).u64[0] & 0x8000000000000000) == 0)
            {
              v266 = vsubq_f64(vmaxnmq_f64(v264, v254), vminnmq_f64(*v262, v390));
              v267 = vmulq_f64(vzip1q_s64(v266, v263), vzip2q_s64(v266, v263));
              *&v259 = *&vdivq_f64(v267, vdupq_laneq_s64(v267, 1));
            }

            ++v239;
          }

          while (v260 <= v259);
          v268 = v239 - 1;
          do
          {
            v270 = *--v104;
            v269 = v270;
            v271 = 0.0;
            v272 = 0.0;
            if ((v256 & 0x8000000000000000) == 0)
            {
              v273 = vsubq_f64(vmaxnmq_f64(v253, v254), vminnmq_f64(v251, v390));
              v272 = vmulq_laneq_f64(v273, v273, 1).f64[0] / v257;
            }

            v274 = (v107 + 32 * v269);
            v275 = v274[1];
            v276 = vaddq_f64(*v274, v275);
            v277 = vandq_s8(vcgeq_f64(v276, v254), vcgeq_f64(v390, *v274));
            if ((vandq_s8(vdupq_laneq_s64(v277, 1), v277).u64[0] & 0x8000000000000000) == 0)
            {
              v278 = vsubq_f64(vmaxnmq_f64(v276, v254), vminnmq_f64(*v274, v390));
              v279 = vmulq_f64(vzip1q_s64(v278, v275), vzip2q_s64(v278, v275));
              *&v271 = *&vdivq_f64(v279, vdupq_laneq_s64(v279, 1));
            }
          }

          while (v272 > v271);
          if (v268 >= v104)
          {
            break;
          }

          *v268 = v269;
          *v104 = v258;
        }

        v100 = (v239 - 1);
        if (v268 > v38)
        {
          break;
        }

LABEL_205:
        ;
      }

      while (v101 != v38);
LABEL_40:
      v39 = 126 - 2 * __clz(v26 >> 1);
      if (v26 >= 2)
      {
        v40 = v39;
      }

      else
      {
        v40 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *,true>(0, v38, v40, 1);
      v37 = v387;
      if (v388)
      {
        memmove(v38, 0, v388);
        v37 = v387;
      }

      v36 = v38 + v388;
      v388 += v38;
    }

    v41 = ((v36 - v37) >> 3) + 1;
    v384 = 0;
    v385 = 0;
    v386 = 0;
    *&v381 = 0.0;
    v382 = 0;
    *&v383 = 0.0;
    _ZNSt3__16vectorIDv4_dNS_9allocatorIS1_EEE7reserveEm(&v384, v41);
    if (v41)
    {
      if (v41 <= 0x666666666666666)
      {
        v392 = &v381;
        std::__allocate_at_least[abi:nn200100]<std::allocator<_UICollectionViewRTreeElement>>(v41);
      }

LABEL_266:
      std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
    }

    v42 = v387;
    v43 = v388;
    for (i = a2; v42 != v43; ++v42)
    {
      v45 = *v42;
      v46 = (i[11] + 32 * *v42);
      v47 = v385;
      if (v385 >= v386)
      {
        v50 = v384;
        v51 = v385 - v384;
        v52 = (v385 - v384) >> 5;
        v53 = v52 + 1;
        if ((v52 + 1) >> 59)
        {
          goto LABEL_267;
        }

        v54 = v386 - v384;
        if ((v386 - v384) >> 4 > v53)
        {
          v53 = v54 >> 4;
        }

        if (v54 >= 0x7FFFFFFFFFFFFFE0)
        {
          v55 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v55 = v53;
        }

        if (v55)
        {
          _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv4_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(v55);
        }

        v56 = (32 * v52);
        v57 = v46[1];
        *v56 = *v46;
        v56[1] = v57;
        v49 = 32 * v52 + 32;
        memcpy(0, v50, v51);
        v384 = 0;
        v386 = 0;
        if (v50)
        {
          operator delete(v50);
        }

        i = a2;
      }

      else
      {
        v48 = v46[1];
        *v385 = *v46;
        v47[1] = v48;
        v49 = &v47[2];
      }

      v385 = v49;
      v58 = i[12];
      v59 = v58 - &v46[2];
      if (v58 != &v46[2])
      {
        memmove(v46, &v46[2], v58 - &v46[2]);
      }

      i[12] = v46 + v59;
      v60 = i[8] + 40 * v45;
      v61 = v382;
      if (v382 >= v383)
      {
        v65 = 0xCCCCCCCCCCCCCCCDLL * ((v382 - v381) >> 3);
        v66 = v65 + 1;
        if (v65 + 1 > 0x666666666666666)
        {
          goto LABEL_266;
        }

        if (0x999999999999999ALL * ((v383 - v381) >> 3) > v66)
        {
          v66 = 0x999999999999999ALL * ((v383 - v381) >> 3);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v383 - v381) >> 3) >= 0x333333333333333)
        {
          v67 = 0x666666666666666;
        }

        else
        {
          v67 = v66;
        }

        v392 = &v381;
        if (v67)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<_UICollectionViewRTreeElement>>(v67);
        }

        v68 = 8 * ((v382 - v381) >> 3);
        *v68 = *v60;
        *(v68 + 8) = *(v60 + 8);
        v69 = *(v60 + 24);
        *(v60 + 24) = 0;
        *(v68 + 24) = v69;
        v70 = *(v60 + 32);
        *(v60 + 32) = 0;
        *(v68 + 32) = v70;
        v64 = (40 * v65 + 40);
        v71 = 40 * v65 + v381 - v382;
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<_UICollectionViewRTreeElement>,_UICollectionViewRTreeElement*>(v381, v382, v71);
        v72 = *&v381;
        v73 = *&v383;
        v381 = v71;
        v382 = v64;
        *&v383 = 0.0;
        v391.f64[0] = v72;
        v391.f64[1] = v73;
        v390.f64[0] = v72;
        v390.f64[1] = v72;
        std::__split_buffer<_UICollectionViewRTreeElement>::~__split_buffer(&v390);
        i = a2;
      }

      else
      {
        *v382 = *v60;
        *(v61 + 1) = *(v60 + 8);
        v62 = *(v60 + 24);
        *(v60 + 24) = 0;
        v61[3] = v62;
        v63 = *(v60 + 32);
        *(v60 + 32) = 0;
        v61[4] = v63;
        v64 = v61 + 5;
      }

      v382 = v64;
      v74 = i[9];
      if (v60 + 40 == v74)
      {
        v75 = v60;
      }

      else
      {
        do
        {
          v75 = v60 + 40;
          _UICollectionViewRTreeElement::operator=(v60, v60 + 40);
          v76 = v60 + 80;
          v60 += 40;
        }

        while (v76 != v74);
      }

      std::vector<_UICollectionViewRTreeElement>::__base_destruct_at_end[abi:nn200100]((a2 + 8), v75);
    }

    v77 = v385;
    v78 = v385 - 2;
    if (v384 != v385 && v78 > v384)
    {
      n128_u64 = v384[2].n128_u64;
      do
      {
        v81 = *(n128_u64 - 32);
        v82 = *(n128_u64 - 16);
        v83 = v78[1];
        *(n128_u64 - 32) = *v78;
        *(n128_u64 - 16) = v83;
        *v78 = v81;
        v78[1] = v82;
        v78 -= 2;
        v84 = n128_u64 >= v78;
        n128_u64 += 32;
      }

      while (!v84);
    }

    v85 = v381;
    v86 = (v382 - 5);
    if (v381 != v382 && v86 > v381)
    {
      do
      {
        v88 = *v85;
        v390 = *(v85 + 8);
        v89 = *(v85 + 24);
        v90 = *(v85 + 32);
        *(v85 + 24) = 0;
        *(v85 + 32) = 0;
        _UICollectionViewRTreeElement::operator=(v85, v86);
        *v86 = v88;
        *(v86 + 8) = v390.f64[0];
        *(v86 + 16) = LOBYTE(v390.f64[1]);
        v91 = *(v86 + 24);
        *(v86 + 24) = v89;

        v92 = *(v86 + 32);
        *(v86 + 32) = v90;

        v85 += 40;
        v86 -= 40;
      }

      while (v85 < v86);
      v77 = v385;
    }

    if (v77 < v386)
    {
      *v77 = a5;
      v77[1] = a6;
      v93 = &v77[2];
      goto LABEL_229;
    }

    v94 = v384;
    v95 = v77 - v384;
    v96 = (v77 - v384) >> 5;
    v97 = v96 + 1;
    if (!((v96 + 1) >> 59))
    {
      v98 = v386 - v384;
      if ((v386 - v384) >> 4 > v97)
      {
        v97 = v98 >> 4;
      }

      if (v98 >= 0x7FFFFFFFFFFFFFE0)
      {
        v99 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v99 = v97;
      }

      if (v99)
      {
        _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv4_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(v99);
      }

      v311 = (32 * v96);
      *v311 = a5;
      v311[1] = a6;
      v93 = 32 * v96 + 32;
      memcpy(0, v94, v95);
      v384 = 0;
      v386 = 0;
      if (v94)
      {
        operator delete(v94);
      }

LABEL_229:
      v385 = v93;
      v312 = v382;
      if (v382 >= v383)
      {
        v316 = 0xCCCCCCCCCCCCCCCDLL * ((v382 - v381) >> 3);
        v317 = v316 + 1;
        if (v316 + 1 > 0x666666666666666)
        {
          goto LABEL_266;
        }

        if (0x999999999999999ALL * ((v383 - v381) >> 3) > v317)
        {
          v317 = 0x999999999999999ALL * ((v383 - v381) >> 3);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v383 - v381) >> 3) >= 0x333333333333333)
        {
          v318 = 0x666666666666666;
        }

        else
        {
          v318 = v317;
        }

        v392 = &v381;
        if (v318)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<_UICollectionViewRTreeElement>>(v318);
        }

        v319 = 8 * ((v382 - v381) >> 3);
        *v319 = *a3;
        *(v319 + 8) = *(a3 + 1);
        v320 = a3[3];
        a3[3] = 0;
        *(v319 + 24) = v320;
        v321 = a3[4];
        a3[4] = 0;
        *(v319 + 32) = v321;
        v315 = (40 * v316 + 40);
        v322 = v319 + v381 - v382;
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<_UICollectionViewRTreeElement>,_UICollectionViewRTreeElement*>(v381, v382, v322);
        v323 = *&v381;
        v324 = *&v383;
        v381 = v322;
        v382 = v315;
        *&v383 = 0.0;
        v391.f64[0] = v323;
        v391.f64[1] = v324;
        v390.f64[0] = v323;
        v390.f64[1] = v323;
        std::__split_buffer<_UICollectionViewRTreeElement>::~__split_buffer(&v390);
      }

      else
      {
        *v382 = *a3;
        *(v312 + 1) = *(a3 + 1);
        v313 = a3[3];
        a3[3] = 0;
        v312[3] = v313;
        v314 = a3[4];
        a3[4] = 0;
        v312[4] = v314;
        v315 = v312 + 5;
      }

      v382 = v315;
      v379 = 0;
      v380 = 0;
      v325 = a2[4];
      if (v325)
      {
        v380 = std::__shared_weak_count::lock(v325);
        if (v380)
        {
          v379 = a2[3];
        }
      }

      _ZNSt3__115allocate_sharedB8nn200100I21_UIRTreeContainerNodeI29_UICollectionViewRTreeElementENS_9allocatorIS3_EEJNS_10shared_ptrIS3_EENS_6vectorIS2_NS4_IS2_EEEENS8_IDv4_dNS4_ISB_EEEEELi0EEENS6_IT_EERKT0_DpOT1_();
    }

LABEL_267:
    std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
  }

  v29 = a2[12];
  v28 = a2[13];
  if (v29 >= v28)
  {
    v31 = a2[11];
    v32 = (v29 - v31) >> 5;
    v33 = v32 + 1;
    if ((v32 + 1) >> 59)
    {
      goto LABEL_267;
    }

    v34 = v28 - v31;
    if (v34 >> 4 > v33)
    {
      v33 = v34 >> 4;
    }

    if (v34 >= 0x7FFFFFFFFFFFFFE0)
    {
      v35 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v35 = v33;
    }

    if (v35)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv4_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(v35);
    }

    v280 = (32 * v32);
    *v280 = a5;
    v280[1] = a6;
    v30 = 32 * v32 + 32;
    v281 = a2[11];
    v282 = a2[12] - v281;
    v283 = v280 - v282;
    memcpy(v280 - v282, v281, v282);
    v284 = a2[11];
    a2[11] = v283;
    a2[12] = v30;
    a2[13] = 0;
    if (v284)
    {
      operator delete(v284);
    }
  }

  else
  {
    *v29 = a5;
    v29[1] = a6;
    v30 = &v29[2];
  }

  v285 = a2;
  a2[12] = v30;
  v286 = a2[9];
  v287 = a2[10];
  if (v286 >= v287)
  {
    v291 = a2[8];
    v292 = 0xCCCCCCCCCCCCCCCDLL * ((v286 - v291) >> 3);
    v293 = v292 + 1;
    if (v292 + 1 > 0x666666666666666)
    {
      goto LABEL_266;
    }

    v294 = 0xCCCCCCCCCCCCCCCDLL * ((v287 - v291) >> 3);
    if (2 * v294 > v293)
    {
      v293 = 2 * v294;
    }

    if (v294 >= 0x333333333333333)
    {
      v295 = 0x666666666666666;
    }

    else
    {
      v295 = v293;
    }

    v392 = a2 + 8;
    if (v295)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<_UICollectionViewRTreeElement>>(v295);
    }

    v296 = 40 * v292;
    *v296 = *a3;
    *(v296 + 8) = *(a3 + 1);
    v297 = a3[3];
    a3[3] = 0;
    *(v296 + 24) = v297;
    v298 = a3[4];
    a3[4] = 0;
    *(v296 + 32) = v298;
    v290 = 40 * v292 + 40;
    v285 = a2;
    v299 = a2[8];
    v300 = a2[9];
    v301 = v296 + v299 - v300;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<_UICollectionViewRTreeElement>,_UICollectionViewRTreeElement*>(v299, v300, v301);
    v302 = *(a2 + 8);
    a2[8] = v301;
    a2[9] = v290;
    v303 = *(a2 + 10);
    a2[10] = 0;
    v391.f64[0] = v302;
    v391.f64[1] = v303;
    v390.f64[0] = v302;
    v390.f64[1] = v302;
    std::__split_buffer<_UICollectionViewRTreeElement>::~__split_buffer(&v390);
  }

  else
  {
    *v286 = *a3;
    *(v286 + 8) = *(a3 + 1);
    v288 = a3[3];
    a3[3] = 0;
    *(v286 + 24) = v288;
    v289 = a3[4];
    a3[4] = 0;
    *(v286 + 32) = v289;
    v290 = v286 + 40;
  }

  *(v285 + 72) = v290;
  _UIRTreeContainerNode<unsigned long>::boundingFrame(v378, v285);
  v304 = vaddq_f64(a5, a6);
  v305 = vandq_s8(vcgeq_f64(vaddq_f64(v378[0], v378[1]), v304), vcgeq_f64(a5, v378[0]));
  if ((vandq_s8(vdupq_laneq_s64(v305, 1), v305).u64[0] & 0x8000000000000000) == 0)
  {
    v306 = *(v285 + 112);
    v307 = vaddq_f64(v306, *(v285 + 128));
    v308 = vminnmq_f64(v306, a5);
    *(v285 + 112) = v308;
    *(v285 + 128) = vsubq_f64(vmaxnmq_f64(v307, v304), v308);
    v309 = *(v285 + 32);
    if (v309)
    {
      v309 = std::__shared_weak_count::lock(v309);
      v310 = v309;
      if (v309)
      {
        v309 = *(v285 + 24);
      }
    }

    else
    {
      v310 = 0;
    }

    _UIRTreeContainerNode<_UICollectionViewRTreeElement>::invalidateBoundingFrameAndNotifyParents(v309);
    if (v310)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v310);
    }
  }

LABEL_27:
  result = *a4;
  *a1 = *a4;
  a4->f64[0] = 0.0;
  a4->f64[1] = 0.0;
  return result;
}

void sub_188C83558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v41);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void std::vector<_UICollectionViewRTreeElement>::__base_destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 40)
  {
  }

  *(a1 + 8) = a2;
}

void _UIOrderedRangeIndexerImpl::appendRange(_UIOrderedRangeIndexerImpl *this, _NSRange a2)
{
  length = a2.length;
  location = a2.location;
  if (a2.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIOrderedRangeIndexerImpl::appendRange(NSRange)"];
    [v16 handleFailureInFunction:v17 file:@"_UIOrderedRangeIndexer.mm" lineNumber:110 description:@"Attempted to insert an invalid range (location == NSNotFound)"];
  }

  v5 = *(this + 1);
  if (*this == v5)
  {
    *(this + 3) = location;
    v6 = length;
  }

  else
  {
    if (location < *(v5 - 1) + *(v5 - 2))
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIOrderedRangeIndexerImpl::appendRange(NSRange)"];
      [v18 handleFailureInFunction:v19 file:@"_UIOrderedRangeIndexer.mm" lineNumber:114 description:@"Attempted to append a range that does not follow the preceeding range."];

      v5 = *(this + 1);
    }

    v6 = location + length - *(this + 3);
  }

  *(this + 4) = v6;
  v7 = *(this + 2);
  if (v5 >= v7)
  {
    v9 = *this;
    v10 = v5 - *this;
    v11 = v10 >> 4;
    v12 = (v10 >> 4) + 1;
    if (v12 >> 60)
    {
      std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
    }

    v13 = v7 - v9;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 60))
      {
        operator new();
      }

      std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
    }

    v15 = (16 * v11);
    *v15 = location;
    v15[1] = length;
    v8 = 16 * v11 + 16;
    memcpy(0, v9, v10);
    *this = 0;
    *(this + 1) = v8;
    *(this + 2) = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v5 = location;
    v5[1] = length;
    v8 = (v5 + 2);
  }

  *(this + 1) = v8;
}

id sub_188C83F80(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_188C842F0();

  return v6;
}

id sub_188C840F8()
{
  v0 = sub_188C84134();

  return v0;
}

id sub_188C842F0()
{
  v1 = [*(v0 + qword_1EA940A40) expandCollapseAnimationContext];

  return v1;
}

void std::__shared_ptr_emplace<_UIOrderedRangeIndexerImpl>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

char *sub_188C846F4()
{
  *&v0[OBJC_IVAR____UIZoomTransitionController_clientTransition] = 0;
  v0[OBJC_IVAR____UIZoomTransitionController_isZoomingIn] = 1;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____UIZoomTransitionController_activeTransitionContext] = 0;
  v0[OBJC_IVAR____UIZoomTransitionController_isForNavigation] = 0;
  *&v0[OBJC_IVAR____UIZoomTransitionController_foregroundView] = 0;
  *&v0[OBJC_IVAR____UIZoomTransitionController_backgroundView] = 0;
  *&v0[OBJC_IVAR____UIZoomTransitionController_viewToScaleBack] = 0;
  v0[OBJC_IVAR____UIZoomTransitionController_isPreempting] = 0;
  *&v0[OBJC_IVAR____UIZoomTransitionController_morphInteractionAssertion] = 0;
  *&v0[OBJC_IVAR____UIZoomTransitionController_shimPropertyAnimator] = 0;
  v1 = OBJC_IVAR____UIZoomTransitionController_transitionOverlayView;
  *&v0[v1] = [objc_allocWithZone(_UITouchPassthroughView) init];
  *&v0[OBJC_IVAR____UIZoomTransitionController_fallbackSourceView] = 0;
  *&v0[OBJC_IVAR____UIZoomTransitionController_sourceViewHidingAssertion] = 0;
  *&v0[OBJC_IVAR____UIZoomTransitionController_showcasePortal] = 0;
  *&v0[OBJC_IVAR____UIZoomTransitionController_morphAnimation] = [objc_allocWithZone(type metadata accessor for _UIMagicMorphAnimation()) init];
  v2 = [objc_allocWithZone(_UIDismissInteraction) init];
  *&v0[OBJC_IVAR____UIZoomTransitionController_dismissInteraction] = v2;
  v3 = [objc_allocWithZone(UIVisualEffectView) init];
  *&v0[OBJC_IVAR____UIZoomTransitionController_dimmingView] = v3;
  [v3 setUserInteractionEnabled_];
  v4 = [objc_allocWithZone(UIView) initWithFrame_];
  *&v0[OBJC_IVAR____UIZoomTransitionController_shimAnimationView] = v4;
  v5 = *&v0[v1];
  v6 = type metadata accessor for _UIZoomToolbarTransitionController();
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_isZoomingIn] = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *&v7[OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_temporaryViews] = MEMORY[0x1E69E7CC0];
  *&v7[OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_toolbarSnapshot] = 0;
  *&v7[OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_overlay] = v5;
  v13.receiver = v7;
  v13.super_class = v6;
  v9 = v5;
  *&v0[OBJC_IVAR____UIZoomTransitionController_toolbarTransitionController] = objc_msgSendSuper2(&v13, sel_init);
  v0[OBJC_IVAR____UIZoomTransitionController_style] = 0;
  *&v0[OBJC_IVAR____UIZoomTransitionController_behaviors] = v8;
  v12.receiver = v0;
  v12.super_class = _UIZoomTransitionController;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  [*&v10[OBJC_IVAR____UIZoomTransitionController_dismissInteraction] setDelegate_];
  return v10;
}

void sub_188C84A1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64B810;
  *(v0 + 32) = sub_1890DF270();
  *(v0 + 40) = sub_1890DF348();
  *(v0 + 48) = sub_188C84C30();
  *(v0 + 56) = sub_188C8530C();
  v1 = objc_opt_self();
  sub_188A34624(0, &qword_1ED48F690);
  v2 = sub_18A4A7518();

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = sub_188D85A4C;
  v12 = v3;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_188A4A8F0;
  v10 = &block_descriptor_133_1;
  v4 = _Block_copy(&v7);

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = sub_188D76094;
  v12 = v5;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_188A4A8F0;
  v10 = &block_descriptor_137_0;
  v6 = _Block_copy(&v7);

  [v1 _createTransformerWithInputAnimatableProperties_modelValueSetter_presentationValueSetter_];
  _Block_release(v6);
  _Block_release(v4);
}

id sub_188C84C50(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v14.receiver = objc_allocWithZone(v9);
    v14.super_class = v9;
    v10 = objc_msgSendSuper2(&v14, sel_initWithView_length_, v4, a4);
    v11 = *(v4 + v5);
    *(v4 + v5) = v10;
    v7 = v10;

    v6 = 0;
  }

  v12 = v6;
  return v7;
}

unint64_t sub_188C84E54(uint64_t a1)
{
  result = sub_188C84E7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188C84E7C()
{
  result = qword_1EA931008;
  if (!qword_1EA931008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA931008);
  }

  return result;
}

unint64_t sub_188C84ED0(uint64_t a1)
{
  result = sub_188C84EF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188C84EF8()
{
  result = qword_1EA931020;
  if (!qword_1EA931020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA931020);
  }

  return result;
}

unint64_t sub_188C84F50()
{
  result = qword_1EA931010;
  if (!qword_1EA931010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA931010);
  }

  return result;
}

unint64_t sub_188C84FA8()
{
  result = qword_1EA931018;
  if (!qword_1EA931018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA931018);
  }

  return result;
}

uint64_t sub_188C84FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v20 = a1;
  v21 = a2;
  v19 = sub_18A4A7A58();
  v8 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18A4A6E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_18A4A7A38();
  MEMORY[0x1EEE9AC00](v12 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940D90);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  *(v5 + 32) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B7E0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = 0;
  *(v5 + 40) = v14;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 104) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 72) = 0;
  *(v5 + 96) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 136) = 0;
  *(v5 + 144) = a3;
  *(v5 + 152) = a4;
  sub_188A5E418();

  sub_18A4A7A28();
  sub_18A4A6E38();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8090], v19);
  *(v5 + 16) = sub_18A4A7A98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940D98);
  v15 = swift_allocObject();
  *(v15 + 32) = 0;
  v16 = v20;
  swift_bridgeObjectRetain_n();

  *(v15 + 16) = v16;
  *(v15 + 24) = v16;

  *(v5 + 24) = v15;
  swift_beginAccess();
  *(v5 + 56) = 0;

  swift_beginAccess();
  *(v5 + 48) = 0;

  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  swift_unknownObjectWeakAssign();
  return v5;
}

id sub_188C8537C()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____UIDismissInteraction_isEnabled] = 1;
  *&v0[OBJC_IVAR____UIDismissInteraction_subInteractions] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____UIDismissInteraction__isActive] = 0;
  v0[OBJC_IVAR____UIDismissInteraction_trackingViewDidBecomeVisible] = 0;
  v1 = &v0[OBJC_IVAR____UIDismissInteraction_originalTrackingViewPosition];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____UIDismissInteraction_originalTouchPosition];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____UIDismissInteraction_touchAdjustment];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v0[OBJC_IVAR____UIDismissInteraction_translation];
  *v4 = 0;
  v4[1] = 0;
  *&v0[OBJC_IVAR____UIDismissInteraction_styles] = 7;
  v7.receiver = v0;
  v7.super_class = _UIDismissInteraction;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_188C8549C();

  return v5;
}

char *sub_188C8549C()
{
  v1 = v0;
  if ([v0 styles])
  {
    result = [objc_allocWithZone(type metadata accessor for _UIEdgePanDismissSubInteraction()) init];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v2 = result;
    v5 = result;
    v3 = sub_188C8599C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v7 = v3[2];
    v6 = v3[3];
    if (v7 >= v6 >> 1)
    {
      v3 = sub_188C8599C((v6 > 1), v7 + 1, 1, v3);
    }

    v3[2] = v7 + 1;
    v8 = &v3[2 * v7];
    v8[4] = v5;
    v8[5] = &off_1EFAE9DD0;
  }

  else
  {
    v2 = 0;
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (([v1 styles] & 2) != 0)
  {
    v9 = [objc_allocWithZone(type metadata accessor for _UIContentSwipeDismissSubInteraction()) init];
    v10 = v9;
    if (v2)
    {
      [*&v9[OBJC_IVAR____TtC5UIKit36_UIContentSwipeDismissSubInteraction_gesture] requireGestureRecognizerToFail_];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_188C8599C(0, v3[2] + 1, 1, v3);
    }

    v12 = v3[2];
    v11 = v3[3];
    if (v12 >= v11 >> 1)
    {
      v3 = sub_188C8599C((v11 > 1), v12 + 1, 1, v3);
    }

    v3[2] = v12 + 1;
    v13 = &v3[2 * v12];
    v13[4] = v10;
    v13[5] = &off_1EFAD9868;
  }

  v27 = v2;
  if (([v1 styles] & 4) != 0)
  {
    v14 = [objc_allocWithZone(type metadata accessor for _UIPinchDismissSubInteraction()) init];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_188C8599C(0, v3[2] + 1, 1, v3);
    }

    v16 = v3[2];
    v15 = v3[3];
    if (v16 >= v15 >> 1)
    {
      v3 = sub_188C8599C((v15 > 1), v16 + 1, 1, v3);
    }

    v3[2] = v16 + 1;
    v17 = &v3[2 * v16];
    v17[4] = v14;
    v17[5] = &off_1EFAFA098;
  }

  sub_188C86894();
  v28 = v3;
  v18 = v3[2];
  if (v18)
  {
    v19 = v3 + 5;
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      ObjectType = swift_getObjectType();
      v23 = *(v21 + 16);
      swift_unknownObjectRetain();
      v24 = v1;
      v23(v1, ObjectType, v21);
      v25 = [v24 view];
      if (v25)
      {
        v26 = v25;
        [v25 addInteraction_];
      }

      swift_unknownObjectRelease();
      v19 += 2;
      --v18;
    }

    while (v18);
  }

  *&v1[OBJC_IVAR____UIDismissInteraction_subInteractions] = v28;
}

char *sub_188C85830()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC5UIKit31_UIEdgePanDismissSubInteraction_axis] = 1;
  v2 = OBJC_IVAR____TtC5UIKit31_UIEdgePanDismissSubInteraction_gesture;
  *&v0[v2] = [objc_allocWithZone(_UIParallaxTransitionPanGestureRecognizer) init];
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v10, sel_init);
  v4 = OBJC_IVAR____TtC5UIKit31_UIEdgePanDismissSubInteraction_gesture;
  v5 = *&v3[OBJC_IVAR____TtC5UIKit31_UIEdgePanDismissSubInteraction_gesture];
  v6 = v3;
  [v5 addTarget:v6 action:sel_handlePan_];
  [*&v3[v4] setDelegate_];
  v7 = *&v3[v4];
  v8 = sub_18A4A7258();
  [v7 setName_];

  [*&v3[v4] setAllowedScrollTypesMask_];
  [*&v3[v4] set:1 skipDynamicDependentRequirementOverride:?];

  return v6;
}

void sub_188C85A08()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC5UIKit36_UIContentSwipeDismissSubInteraction_gesture;
  type metadata accessor for _UIContentSwipeDismissGestureRecognizer();
  *&v0[v2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_18A4A7F68())
  {
    sub_188FC0114(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CD0];
  }

  *&v0[OBJC_IVAR____TtC5UIKit36_UIContentSwipeDismissSubInteraction_conflictingScrollViews] = v3;
  v19.receiver = v0;
  v19.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v19, sel_init);
  v5 = OBJC_IVAR____TtC5UIKit36_UIContentSwipeDismissSubInteraction_gesture;
  v6 = *&v4[OBJC_IVAR____TtC5UIKit36_UIContentSwipeDismissSubInteraction_gesture];
  v7 = v4;
  [v6 addTarget:v7 action:sel_handlePan_];
  [*&v4[v5] setDelegate_];
  v8 = *&v4[v5];
  v9 = sub_18A4A7258();
  [v8 setName_];

  v10 = *&v4[v5];
  type metadata accessor for _UIDismissInteractionSettingsDomain();
  v18.receiver = swift_getObjCClassFromMetadata();
  v18.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
  v11 = v10;
  v12 = objc_msgSendSuper2(&v18, sel_rootSettings);
  if (v12)
  {
    v13 = v12;
    type metadata accessor for _UIDismissInteractionSettings();
    v14 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_swipeDown);

    v15 = 90.0 - *&v14[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_coneOfInfluenceRightAngle];
    v16 = *&v14[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_coneOfInfluenceLeftAngle];

    if (v15 <= v16 + 90.0)
    {
      v17 = &v11[OBJC_IVAR____TtC5UIKit39_UIContentSwipeDismissGestureRecognizer_angleRange];
      *v17 = v15;
      v17[1] = v16 + 90.0;

      [*&v4[v5] setMaximumNumberOfTouches_];
      [*&v4[v5] setAllowedScrollTypesMask_];

      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_188C85D28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_188C85D98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC5UIKit39_UIContentSwipeDismissGestureRecognizer_angleRange];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR____TtC5UIKit39_UIContentSwipeDismissGestureRecognizer_recognizedAxis] = 0;
  sub_188C85D28(a1, v18);
  v8 = v19;
  if (v19)
  {
    v9 = __swift_project_boxed_opaque_existential_0(v18, v19);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x1EEE9AC00](v9);
    v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_18A4A86A8();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v3;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_initWithTarget_action_, v14, a2);
  swift_unknownObjectRelease();
  sub_188A553EC(a1);
  return v15;
}

id sub_188C85FA0()
{
  v1 = OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_edgePan;
  type metadata accessor for _UIDismissInteractionSubInteractionSettings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v0[v1] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_scroll;
  *&v0[v3] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v4 = OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_swipeDown;
  *&v0[v4] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v5 = OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_pinch;
  *&v0[v5] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v0[OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_showDebugUI] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for _UIDismissInteractionSettings();
  return objc_msgSendSuper2(&v7, sel_initWithDefaultValues);
}

id sub_188C860D8()
{
  v1 = OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_updateSpring;
  *&v0[v1] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  *&v0[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_effectiveDistanceFactor] = 0x3FE3333333333333;
  *&v0[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_dismissThreshold] = 0x4069000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_scaleDismissThreshold] = 0x3FE0000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_hysteresisPadding] = 0x402E000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_coneOfInfluenceLeftAngle] = 0x4036800000000000;
  *&v0[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_coneOfInfluenceRightAngle] = 0x4036800000000000;
  *&v0[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_minScale] = 0x3FE4CCCCCCCCCCCDLL;
  *&v0[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_scaleStretchinessLowerBound] = 0xBFB999999999999ALL;
  *&v0[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_scaleStretchinessUpperBound] = 0x3FE8000000000000;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for _UIDismissInteractionSubInteractionSettings();
  return objc_msgSendSuper2(&v3, sel_initWithDefaultValues);
}

id sub_188C86234()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for _UIDismissInteractionSubInteractionSettings();
  objc_msgSendSuper2(&v3, sel_setDefaultValues);
  v1 = OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_updateSpring;
  [*&v0[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_updateSpring] setDampingRatio_];
  [*&v0[v1] setResponse_];
  [*&v0[v1] setTrackingDampingRatio_];
  [*&v0[v1] setTrackingResponse_];
  return [*&v0[v1] setSmoothingAndProjectionEnabled_];
}

id sub_188C8632C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for _UIDismissInteractionSettings();
  result = objc_msgSendSuper2(&v3, sel_setDefaultValues);
  *(*&v0[OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_edgePan] + OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_minScale) = 0x3FE3333333333333;
  v2 = *&v0[OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_swipeDown];
  *(v2 + OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_minScale) = 0x3FE3333333333333;
  *(*&v0[OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_pinch] + OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_minScale) = 0x3FD0000000000000;
  *(*&v0[OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_scroll] + OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_dismissThreshold) = 0x4062C00000000000;
  *(v2 + OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_dismissThreshold) = 0x4062C00000000000;
  return result;
}

char *sub_188C86464()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC5UIKit29_UIPinchDismissSubInteraction_axis] = 3;
  v2 = OBJC_IVAR____TtC5UIKit29_UIPinchDismissSubInteraction_gesture;
  *&v0[v2] = [objc_allocWithZone(_UITransformGestureRecognizer) init];
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v10, sel_init);
  v4 = OBJC_IVAR____TtC5UIKit29_UIPinchDismissSubInteraction_gesture;
  v5 = *&v3[OBJC_IVAR____TtC5UIKit29_UIPinchDismissSubInteraction_gesture];
  v6 = v3;
  [v5 addTarget:v6 action:sel_handlePinch_];
  [*&v3[v4] setDelegate_];
  v7 = *&v3[v4];
  v8 = sub_18A4A7258();
  [v7 setName_];

  return v6;
}

_UIGestureRecognizerCompositionDriver *_UIGestureRecognizerComposeParallelDrivers(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [_UIGestureRecognizerCompositionDriver alloc];
  if (v2)
  {
    if ([a1 count] <= 1)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:sel_initWithDrivers_stateCombiner_ object:v2 file:@"_UIGestureRecognizerDriverComposition.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"drivers.count >= 2"}];
    }

    v15.receiver = v2;
    v15.super_class = _UIGestureRecognizerCompositionDriver;
    v3 = objc_msgSendSuper2(&v15, sel_init);
    v2 = v3;
    if (v3)
    {
      objc_storeStrong(&v3->_drivers, a1);
      v2->_stateCombiner = _combineParallel;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v4 = v2->_drivers;
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v12;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(v4);
            }

            [*(*(&v11 + 1) + 8 * i) setDelegate:v2];
          }

          v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
        }

        while (v6);
      }
    }
  }

  return v2;
}

void sub_188C86894()
{
  v1 = *(v0 + OBJC_IVAR____UIDismissInteraction_subInteractions);
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = 32;
    do
    {
      v4 = *(v1 + v3);
      v5 = [swift_unknownObjectRetain() view];
      if (v5)
      {
        v6 = v5;
        [v5 removeInteraction_];
      }

      swift_unknownObjectRelease();
      v3 += 16;
      --v2;
    }

    while (v2);
  }
}

void sub_188C8696C(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void sub_188C869E8(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void sub_188C86A30(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_188C86B14(char a1)
{
  v2 = OBJC_IVAR____UIDismissInteraction_isEnabled;
  *(v1 + OBJC_IVAR____UIDismissInteraction_isEnabled) = a1;
  result = *(v1 + OBJC_IVAR____UIDismissInteraction_subInteractions);
  v4 = *(result + 16);
  if (v4)
  {
    v5 = ( + 40);
    do
    {
      v6 = *v5;
      ObjectType = swift_getObjectType();
      v8 = *(v1 + v2);
      v9 = *(v6 + 40);
      swift_unknownObjectRetain();
      v9(v8, ObjectType, v6);
      swift_unknownObjectRelease();
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_188C86D34(void *a1)
{
  v2 = v1;
  v4 = [v2 view];
  v5 = v4;
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!v4 || (sub_188A34624(0, &qword_1ED48F680), v6 = a1, v7 = sub_18A4A7C88(), v6, v5, (v7 & 1) == 0))
  {
LABEL_7:
    sub_188C86894();
  }

LABEL_8:

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_188C86F08(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + OBJC_IVAR____UIDismissInteraction_subInteractions);
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = a1;

      v5 = 32;
      do
      {
        [v4 addInteraction_];
        v5 += 16;
        --v3;
      }

      while (v3);
    }
  }

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_188C87024(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = Strong;
  if (!a1)
  {
    if (!Strong)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!Strong || (sub_188AF7A44(), v6 = a1, v7 = sub_18A4A7C88(), v6, v5, (v7 & 1) == 0))
  {
LABEL_7:
    v8 = *(v2 + OBJC_IVAR____TtC5UIKit31_UIEdgePanDismissSubInteraction_gesture);
    v9 = [v8 view];
    [v9 removeGestureRecognizer_];
  }

LABEL_8:

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_188C87170(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5UIKit31_UIEdgePanDismissSubInteraction_gesture);
  v4 = [v3 view];
  if (!v4)
  {
    if (!a1)
    {
      goto LABEL_8;
    }

    v5 = a1;
    [v5 addGestureRecognizer_];
    if ([v5 effectiveUserInterfaceLayoutDirection])
    {
      v6 = 8;
    }

    else
    {
      v6 = 2;
    }

    [v3 setEdges_];
    v4 = v5;
  }

LABEL_8:

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_188C872A0(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = Strong;
  if (!a1)
  {
    if (!Strong)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!Strong || (sub_188A34624(0, &qword_1ED48F680), v6 = a1, v7 = sub_18A4A7C88(), v6, v5, (v7 & 1) == 0))
  {
LABEL_7:
    v8 = *(v2 + OBJC_IVAR____TtC5UIKit36_UIContentSwipeDismissSubInteraction_gesture);
    v9 = [v8 view];
    [v9 removeGestureRecognizer_];
  }

LABEL_8:

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_188C874B8(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = Strong;
  if (!a1)
  {
    if (!Strong)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!Strong || (sub_188A34624(0, &qword_1ED48F680), v6 = a1, v7 = sub_18A4A7C88(), v6, v5, (v7 & 1) == 0))
  {
LABEL_7:
    v8 = *(v2 + OBJC_IVAR____TtC5UIKit29_UIPinchDismissSubInteraction_gesture);
    v9 = [v8 view];
    [v9 removeGestureRecognizer_];
  }

LABEL_8:

  return swift_unknownObjectWeakAssign();
}

void sub_188C88744(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v8 - 200));
  objc_destroyWeak((v8 - 160));
  objc_destroyWeak((v8 - 120));
  objc_destroyWeak((v8 - 112));
  _Unwind_Resume(a1);
}

void sub_188C88BC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

double _UIScrollViewRubberBandCoefficient(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v7 = _UIInternalPreferenceUsesDefault(&unk_1ED48B6F0, @"ContinuousMouseRubberBandingCoefficient", _UIInternalPreferenceUpdateDouble);
      result = *&qword_1ED48B6F8;
      v3 = v7 == 0;
      v4 = 0.4;
      goto LABEL_14;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        v1 = _UIInternalPreferenceUsesDefault(&unk_1ED48B710, @"DiscreteLowResolutionMouseRubberBandingCoefficient", _UIInternalPreferenceUpdateDouble);
        result = *&qword_1ED48B718;
        v3 = v1 == 0;
        v4 = 0.5;
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v5 = &unk_1ED48B700;
    v6 = @"DiscreteHighResolutionMouseRubberBandingCoefficient";
LABEL_11:
    v8 = _UIInternalPreferenceUsesDefault(v5, v6, _UIInternalPreferenceUpdateDouble);
    result = *(v5 + 1);
    v3 = v8 == 0;
    v4 = 0.17;
    goto LABEL_14;
  }

  if (a1 == 1)
  {
    v9 = _UIInternalPreferenceUsesDefault(&unk_1ED48B6D0, @"SmallTrackpadRubberBandingCoefficient", _UIInternalPreferenceUpdateDouble);
    result = *&qword_1ED48B6D8;
    v3 = v9 == 0;
    v4 = 0.715;
    goto LABEL_14;
  }

  if (a1 == 2)
  {
    v5 = &unk_1ED48B6E0;
    v6 = @"LargeTrackpadRubberBandingCoefficient";
    goto LABEL_11;
  }

LABEL_13:
  v10 = _UIInternalPreferenceUsesDefault(&unk_1ED48B720, @"TouchRubberBandingCoefficient", _UIInternalPreferenceUpdateDouble);
  result = *&qword_1ED48B728;
  v3 = v10 == 0;
  v4 = 0.55;
LABEL_14:
  if (!v3)
  {
    return v4;
  }

  return result;
}

UILayoutGuide *CreateLayoutGuide(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_alloc_init(UILayoutGuide);
  [(UILayoutGuide *)v5 setIdentifier:v4];

  [v3 addLayoutGuide:v5];

  return v5;
}

id CreateWidthMinimizingConstraint(void *a1)
{
  v1 = [a1 constraintEqualToConstant:0.0];
  LODWORD(v2) = 1112014848;
  [v1 setPriority:v2];

  return v1;
}

void sub_188C8BAD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _UIBarsDesktopNavigationBarEnabled()
{
  if (qword_1ED49BF98 != -1)
  {
    dispatch_once(&qword_1ED49BF98, &__block_literal_global_98_1);
  }

  return byte_1ED49BF64;
}

uint64_t sub_188C8BF34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 520) = 0;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 522) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 376) = (a2 - 1);
      return result;
    }

    *(result + 522) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_188C8C67C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____UIMagicMorphAnimation_animationItems] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____UIMagicMorphAnimation_currentItem] = 0;
  *&v1[OBJC_IVAR____UIMagicMorphAnimation_currentReparentingItem] = 0;
  *&v1[OBJC_IVAR____UIMagicMorphAnimation____lazy_storage___geometryTrackingDisplayLink] = 0;
  v5 = OBJC_IVAR____UIMagicMorphAnimation_morphView;
  type metadata accessor for _UIMagicMorphView();
  *&v1[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____UIMagicMorphAnimation_animationContainerView;
  v7 = [objc_allocWithZone(type metadata accessor for _UIMorphAnimationContainerView()) initWithFrame_];
  v8 = &v7[OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_name];
  *v8 = 0xD000000000000020;
  *(v8 + 1) = 0x800000018A6938C0;

  *&v1[v6] = v7;
  *&v1[OBJC_IVAR____UIMagicMorphAnimation_intermediateStepHidingAssertion] = 0;
  type metadata accessor for _UIMorphAnimationSettingsDomain();
  v14.receiver = swift_getObjCClassFromMetadata();
  v14.super_class = &OBJC_METACLASS____TtC5UIKit31_UIMorphAnimationSettingsDomain;
  result = objc_msgSendSuper2(&v14, sel_rootSettings);
  if (result)
  {
    v10 = OBJC_IVAR____UIMagicMorphAnimation_animationSettings;
    type metadata accessor for _UIMorphAnimationSettings();
    *&v1[v10] = swift_dynamicCastClassUnconditional();
    *&v1[OBJC_IVAR____UIMagicMorphAnimation_intermediateStepDelayTimer] = 0;
    v11 = OBJC_IVAR____UIMagicMorphAnimation_genieAnimator;
    type metadata accessor for _UIGenieAnimator();
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = v4;
    v12[4] = v4;
    v12[5] = 0x3FD0000000000000;
    v12[6] = 0;
    *&v1[v11] = v12;
    swift_unknownObjectWeakInit();
    v1[OBJC_IVAR____UIMagicMorphAnimation_cleansUpAutomatically] = 1;
    v1[OBJC_IVAR____UIMagicMorphAnimation_reparentsDuringMorph] = 1;
    *&v1[OBJC_IVAR____UIMagicMorphAnimation_groupCompletion] = a1;
    v13.receiver = v1;
    v13.super_class = ObjectType;
    return objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for _UIMagicMorphView()
{
  result = qword_1EA930E80;
  if (!qword_1EA930E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_188C8C900(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____UIMagicMorphView_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C9D0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *&v4[v9] = v10;
  *&v4[OBJC_IVAR____UIMagicMorphView_destinations] = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC8];
  *&v4[OBJC_IVAR____UIMagicMorphView_milestones] = MEMORY[0x1E69E7CC8];
  v12 = OBJC_IVAR____UIMagicMorphView_clippingView;
  *&v4[v12] = [objc_allocWithZone(UIView) init];
  v4[OBJC_IVAR____UIMagicMorphView_contentSizeDidChange] = 0;
  *&v4[OBJC_IVAR____UIMagicMorphView____lazy_storage___traitObserver] = 0;
  *&v4[OBJC_IVAR____UIMagicMorphView____lazy_storage___contentWidth] = 0;
  *&v4[OBJC_IVAR____UIMagicMorphView____lazy_storage___contentHeight] = 0;
  *&v4[OBJC_IVAR____UIMagicMorphView____lazy_storage___insets] = 0;
  *&v4[OBJC_IVAR____UIMagicMorphView____lazy_storage___cornerRadii] = 0;
  v4[OBJC_IVAR____UIMagicMorphView_allDestinationsAreOpaque] = 1;
  *&v4[OBJC_IVAR____UIMagicMorphView_magicMoveItems] = v11;
  v4[OBJC_IVAR____UIMagicMorphView_wantsEdgeAntialiasing] = 1;
  v4[OBJC_IVAR____UIMagicMorphView_crossBlurWhenMorphing] = 0;
  v4[OBJC_IVAR____UIMagicMorphView_appliesBackgroundFromView] = 1;
  *&v4[OBJC_IVAR____UIMagicMorphView_preferredMorphingAxis] = 0;
  *&v4[OBJC_IVAR____UIMagicMorphView_currentMorphingAxis] = 0;
  *&v4[OBJC_IVAR____UIMagicMorphView_shadowIntensity] = 1065353216;
  v13 = &v4[OBJC_IVAR____UIMagicMorphView_overrideCornerRadii];
  v24 = 1;
  *(v13 + 2) = 0u;
  *(v13 + 3) = 0u;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v13[64] = 1;
  v14 = &v4[OBJC_IVAR____UIMagicMorphView_overrideBounds];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  *&v4[OBJC_IVAR____UIMagicMorphView_backgroundView] = 0;
  v15 = OBJC_IVAR____UIMagicMorphView_savedGlassState;
  v16 = type metadata accessor for GlassState(0);
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  *&v4[OBJC_IVAR____UIMagicMorphView_multiLayerAssertion] = 0;
  v23.receiver = v4;
  v23.super_class = type metadata accessor for _UIMagicMorphView();
  v17 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  [v17 setClipsToBounds_];
  [v17 _setSafeAreaInsetsFrozen_];
  sub_188C84A1C();
  v18 = [v17 layer];
  [v18 setShadowPathIsBounds_];

  v19 = [v17 layer];
  [v19 setPunchoutShadow_];

  v20 = OBJC_IVAR____UIMagicMorphView_clippingView;
  [*&v17[OBJC_IVAR____UIMagicMorphView_clippingView] setClipsToBounds_];
  v21 = [*&v17[v20] layer];
  [v21 setAllowsEdgeAntialiasing_];

  [*&v17[v20] _setShouldAdaptToMaterials_];
  [v17 addSubview_];

  return v17;
}

uint64_t sub_188C8CD6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _GlassBackgroundStyle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void _removeItem(_UIUpdateSequenceItemInternal *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  if (*a1)
  {
    *(v2 + 8) = v3;
  }

  *v3 = v2;
  v4 = *(a1 + 5);
  *(a1 + 5) = 0;

  free(a1);
}

uint64_t sub_188C8D150(void *a1)
{
  result = _UIFlexiGlassEnabled();
  if (result)
  {
    v3 = [a1 traitCollection];
    v4 = [v3 userInterfaceIdiom];

    if (!v4)
    {
      return 1;
    }

    v5 = [a1 traitCollection];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 1)
    {
      return 1;
    }

    v7 = [a1 traitCollection];
    v8 = [v7 userInterfaceIdiom];

    if (v8 == 4)
    {
      return 1;
    }

    else
    {
      v9 = [a1 traitCollection];
      v10 = [v9 userInterfaceIdiom];

      return v10 == 8;
    }
  }

  return result;
}

id sub_188C8D2B4(uint64_t a1)
{
  v3 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33[-1] - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33[-1] - v10;
  v12 = *(a1 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v33[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, v1, a1, v14);
  if (swift_dynamicCast())
  {
    v17 = v41;
    v18 = v42;
    v19 = v43;
    v20 = v44;
    v21 = v45;
    v22 = [objc_allocWithZone(_UIViewGlassGroup) init];
    v39 = &type metadata for _GlassGroup;
    v40 = &protocol witness table for _GlassGroup;
    LOBYTE(v36) = v17;
    BYTE1(v36) = v18;
    *(&v36 + 1) = v19;
    v37 = v20;
    v38 = v21;
    v23 = OBJC_IVAR____UIViewGlassGroup__underlyingMaterial;
    swift_beginAccess();
    v24 = v22;
    __swift_destroy_boxed_opaque_existential_0Tm(v22 + v23);
    v25 = v22 + v23;
LABEL_5:
    sub_188A5EBAC(&v36, v25);
    swift_endAccess();

    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
    sub_18902C0CC(v11, v8, type metadata accessor for _Glass);
    sub_188A82098(v8, v5, type metadata accessor for _Glass);
    v26 = [objc_allocWithZone(_UIViewGlass) init];
    v39 = v3;
    v40 = &protocol witness table for _Glass;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v36);
    sub_18902C0CC(v5, boxed_opaque_existential_0, type metadata accessor for _Glass);
    v24 = v26;
    sub_188A828FC(v8, type metadata accessor for _Glass);
    v28 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0Tm(v24 + v28);
    v25 = v24 + v28;
    goto LABEL_5;
  }

  sub_188A34624(0, qword_1ED4913C0);
  if (swift_dynamicCast() || (sub_188A34624(0, &unk_1EA931120), swift_dynamicCast()))
  {
    v24 = v36;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A4E8);
    if (swift_dynamicCast())
    {
      sub_188A5EBAC(&v36, v33);
      v30 = v34;
      v31 = v35;
      __swift_project_boxed_opaque_existential_0(v33, v34);
      v24 = (*(v31 + 8))(v30, v31);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
    }

    else
    {
      type metadata accessor for _UIViewAnyMaterial();
      v24 = sub_18902BB6C(v1);
    }
  }

LABEL_6:
  (*(v12 + 8))(v16, a1);
  return v24;
}

char *sub_188C8D8B4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939660);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id _UISheetDetentInternalBlockForType(uint64_t a1, double a2)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v5 = &__block_literal_global_22_3;
    }

    else if (a1 == 4)
    {
      aBlock[5] = v2;
      v8 = v3;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___UISheetDetentInternalBlockForType_block_invoke;
      aBlock[3] = &__block_descriptor_40_e65_d16__0____UISheetPresentationControllerDetentResolutionContext__8l;
      *&aBlock[4] = a2;
      v5 = _Block_copy(aBlock);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v4 = &__block_literal_global_19_3;
    if (a1 != 2)
    {
      v4 = 0;
    }

    if (a1 == 1)
    {
      v5 = &__block_literal_global_17_8;
    }

    else
    {
      v5 = v4;
    }
  }

  return v5;
}

uint64_t _UITabBarControllerWantsNavigationBarExtensionForFloatingTabBar()
{
  if (_UITabBarControllerWantsNavigationBarExtensionForFloatingTabBar_onceToken != -1)
  {
    dispatch_once(&_UITabBarControllerWantsNavigationBarExtensionForFloatingTabBar_onceToken, &__block_literal_global_24);
  }

  return _UITabBarControllerWantsNavigationBarExtensionForFloatingTabBar_wantsNavigationBarExtensionForFloatingTabBar;
}

double _minimumBackButtonWidth(void *a1)
{
  if (a1[72])
  {
    v2 = a1[72];

    [v2 minimumBackButtonWidth];
  }

  else
  {
    v4 = [a1 traitCollection];
    v5 = [v4 userInterfaceIdiom];

    result = 44.0;
    if (v5 == 5)
    {
      return 34.0;
    }
  }

  return result;
}

void ___navigationBarPrefersLargeTitles_block_invoke()
{
  v2 = _UIKitUserDefaults();
  v0 = [v2 objectForKey:@"ForceLargeTitlesOn"];
  v1 = v0;
  if (v0 && [v0 BOOLValue])
  {
    word_1ED498169 = 257;
  }
}

void _UIButtonBarCommonInit(void *a1)
{
  obj = a1;
  v1 = objc_opt_new();
  v2 = v1;
  if (v1)
  {
    objc_storeWeak((v1 + 440), obj);
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setLayoutMargins:{0.0, 8.0, 0.0, 8.0}];
  [v2 setLayoutMarginsRelativeArrangement:1];
  [v2 setAlignment:3];
  v3 = obj[1];
  obj[1] = v2;
  v4 = v2;

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = obj[8];
  obj[8] = v5;

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = obj[12];
  obj[12] = v7;

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = obj[11];
  obj[11] = v9;

  v11 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  v12 = obj[14];
  obj[14] = v11;

  obj[22] = 0x412E848000000000;
  obj[18] = 0x4020000000000000;
  v13 = [MEMORY[0x1E69977A8] anchorNamed:@"UIButtonBar.flexibleSpaceEqualSize" inItem:obj[1]];
  v14 = obj[2];
  obj[2] = v13;

  v15 = [MEMORY[0x1E69977A8] anchorNamed:@"UIButtonBar.minimumInterItemSpace" inItem:obj[1]];
  v16 = obj[3];
  obj[3] = v15;

  v17 = [obj[3] constraintEqualToConstant:*(obj + 18)];
  v18 = obj[4];
  obj[4] = v17;

  [obj[4] setActive:1];
  v19 = [obj[2] constraintGreaterThanOrEqualToAnchor:obj[3]];
  [v19 setActive:1];

  v20 = objc_alloc_init(_UIButtonBarLayoutMetrics);
  v21 = [v4 layoutMarginsGuide];
  v22 = [v21 heightAnchor];
  [(_UIButtonBarLayoutMetrics *)v20 setVerticalSizeGuide:v22];

  [(_UIButtonBarLayoutMetrics *)v20 setMinimumSpaceGuide:obj[3]];
  [(_UIButtonBarLayoutMetrics *)v20 setFlexibleSpaceGuide:obj[2]];
  [(_UIButtonBarLayoutMetrics *)v20 setAllowsViewWrappers:0];
  v23 = obj[7];
  obj[7] = v20;
}

id _UIButtonBarButtonMakerForVisualProvider()
{
  v0 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___UIButtonBarButtonMakerForVisualProvider_block_invoke;
  aBlock[3] = &unk_1E70F72F8;
  v6 = v0;
  v1 = v0;
  v2 = _Block_copy(aBlock);
  v3 = _Block_copy(v2);

  return v3;
}

void sub_188C94908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _UIButtonBarClearOwners(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [v9 _relinquishOwnership:v4];
        v10 = [v9 representativeItem];
        [v10 _relinquishOwnership:v4];
        v11 = [v9 _items];
        _UIButtonBarClearOwnedItems(v11, v4);
      }

      v6 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

void _UIButtonBarSetOwners(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [v9 _setOwner:v4];
        v10 = [v9 representativeItem];
        [v10 _setViewOwner:v4];

        v11 = [v9 _items];
        _UIButtonBarSetItemOwners(v11, v4);
      }

      v6 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

void _UIButtonBarSetItemOwners(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v8++) _setViewOwner:v4];
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

uint64_t _truncatedDebuggingDescriptionForLayout(void *a1)
{
  if (UILayoutConstraintDebuggingMaximumLayoutDescriptionLength_onceToken != -1)
  {
    dispatch_once(&UILayoutConstraintDebuggingMaximumLayoutDescriptionLength_onceToken, &__block_literal_global_1102);
  }

  v2 = UILayoutConstraintDebuggingMaximumLayoutDescriptionLength_maxLength;
  if ([a1 length] <= v2)
  {
    return a1;
  }

  v3 = [a1 substringToIndex:v2];

  return [v3 stringByAppendingString:@"..."];
}

uint64_t __UILayoutConstraintDebuggingMaximumLayoutDescriptionLength_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (result)
  {
    UILayoutConstraintDebuggingMaximumLayoutDescriptionLength_maxLength = result;
  }

  return result;
}

id _UIButtonBarButtonFromItem(void *a1)
{
  v1 = [a1 view];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_188C952D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIBarHairlineShadowColorForBarStyle(uint64_t a1)
{
  if ((a1 - 1) >= 2)
  {
    +[UIColor _systemChromeShadowColor];
  }

  else
  {
    +[UIColor _barStyleBlackHairlineShadowColor];
  }
  v1 = ;

  return v1;
}

void __getSBSApplicationShortcutTemplateIconClass_block_invoke(uint64_t a1)
{
  SpringBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SBSApplicationShortcutTemplateIcon");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSBSApplicationShortcutTemplateIconClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSBSApplicationShortcutTemplateIconClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIApplicationShortcutItem.m" lineNumber:23 description:{@"Unable to find class %s", "SBSApplicationShortcutTemplateIcon"}];

    __break(1u);
  }
}

void sub_188C96364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 184), 8);
  _Unwind_Resume(a1);
}

double _UITabBarMetricsForStyleAndScene(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (a1 == 2)
    {
      v4 = 20.0;
      dyld_program_sdk_at_least();
    }

    else if (a1 == 1)
    {
      v4 = 30.0;
      if (dyld_program_sdk_at_least())
      {
        v5 = [v3 traitCollection];
        v6 = [v5 userInterfaceIdiom];

        v7 = [v3 screen];
        [v7 scale];

        if (v6 == 1)
        {
          v4 = 30.0;
        }

        else
        {
          v4 = 29.0;
        }
      }

      if (dyld_program_sdk_at_least())
      {
        v8 = [v3 screen];
        [v8 scale];
      }
    }

    else
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UITabBarItemLayoutMetrics _UITabBarMetricsForStyleAndScene(_UITabBarItemTitleStyle, UIWindowScene *__strong _Nonnull)"}];
      [v9 handleFailureInFunction:v10 file:@"_UITabBarItemData.m" lineNumber:819 description:{@"Unsupported style %li", a1}];

      v4 = 0.0;
    }
  }

  else
  {
    v4 = 45.0;
  }

  return v4;
}

double _yOffsetForBaselinedImageView(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v4 _firstBaselineOffsetFromTop];
  [v4 alignmentRectInsets];

  UIRoundToViewScale(v3);
  v6 = v5;

  return v6;
}

uint64_t _UIQOSExpectComplexCommit(char *__src)
{
  _MergedGlobals_1364 = 0;
  if (qword_1ED4A28F8 != -1)
  {
    dispatch_once(&qword_1ED4A28F8, &__block_literal_global_7_4);
  }

  if (dword_1ED4A2908 || word_1ED4A2938 == 1)
  {
    result = _adjustOptions(__src, 1);
    if (result)
    {

      return work_interval_instance_update();
    }
  }

  else
  {
    result = CFDictionaryGetCount(qword_1ED4A2900);
    if (result)
    {
      v3 = _MergedGlobals_1364;
      if (!_MergedGlobals_1364)
      {
        v3 = mach_absolute_time();
        _MergedGlobals_1364 = v3;
      }

      qword_1ED4A2918 = v3;
      qword_1ED4A2920 = (qword_1ED4A2910 * 0.5 + v3);
      qword_1ED4A2940 |= 1uLL;
      strncpy(__dst, __src, 8uLL);
      _tracepointArg4(&qword_1ED4A2900);
      kdebug_trace();
      _beginInterval();
      return _waitCommitEnd();
    }
  }

  return result;
}

id sub_188C97B78(void *a1)
{
  v1 = a1;
  result = [v1 _configurationState];
  if (result)
  {
    v3 = result;
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)(result, &v6);

    sub_188C984D4();
    v5 = v4;
    sub_188C98804(&v6);

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_188C97D48(a1, v5);
    v3 = v5[1];
    *a2 = v5[0];
    *(a2 + 16) = v3;
    *(a2 + 32) = v5[2];
    *(a2 + 48) = v6;
  }

  else
  {
    sub_18A4A80E8();

    sub_188A34624(0, &qword_1EA930B28);
    v4 = sub_18A4A8AA8();
    MEMORY[0x18CFE22D0](v4);

    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    MEMORY[0x18CFE22D0](0xD000000000000018, 0x800000018A676710);
    sub_18A4A8398();
    __break(1u);
  }
}

void sub_188C97D48(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [v3 traitCollection];
  v82 = 1;
  v5 = [v3 isDisabled];
  v6 = [v3 isHighlighted];
  v7 = [v3 isSelected];
  v8 = [v3 isFocused];
  v70 = [v3 isPinned];

  v69 = [v3 isEditing];
  v68 = [v3 isExpanded];
  v67 = [v3 isSwiped];
  v66 = [v3 isReordering];
  sub_188C98384([v3 cellDragState], type metadata accessor for __UICellConfigurationDragState, 0x7461745367617244, v80);
  v65 = v80[0];
  sub_188C98384([v3 cellDropState], type metadata accessor for __UICellConfigurationDropState, 0x74617453706F7244, v80);
  v64 = v80[0];
  v63 = [v3 _usesAnyPlainListStyle];
  v62 = [v3 _inMultiSelectGroup];
  v9 = [v3 _customStatesForSwiftBridging];
  if (v9)
  {
    v10 = v9;
    v55 = v8;
    v56 = v7;
    v57 = v6;
    v58 = v5;
    v59 = v4;
    v60 = v3;
    v61 = a2;
    type metadata accessor for UIConfigurationStateCustomKey(0);
    sub_188D0CBBC();
    v11 = MEMORY[0x1E69E7CA0];
    v12 = sub_18A4A70A8();

    v13 = 0;
    v14 = v12 + 64;
    v72 = v12;
    v15 = 1 << *(v12 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v12 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = MEMORY[0x1E69E7CC8];
    v20 = 0uLL;
    v21 = MEMORY[0x1E69E69B8];
    v71 = v14;
    while (v17)
    {
      v22 = v13;
LABEL_17:
      v25 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v26 = v25 | (v22 << 6);
      v27 = *(*(v72 + 48) + 8 * v26);
      sub_188A55598(*(v72 + 56) + 32 * v26, &v73);
      *&v77 = v27;
      sub_188A55538(&v73, (&v77 + 8));
      v28 = v27;
LABEL_18:
      v80[0] = v77;
      v80[1] = v78;
      v81 = v79;
      v29 = v77;
      if (!v77)
      {

        v3 = v60;
        a2 = v61;
        v4 = v59;
        v6 = v57;
        v5 = v58;
        v8 = v55;
        v7 = v56;
        goto LABEL_37;
      }

      sub_188A55538((v80 + 8), &v76);
      if (swift_dynamicCast())
      {
        v30 = v21;
        v31 = v11;
        v73 = v77;
        v74 = v78;
        v75 = v79;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = sub_188B00858(v29);
        v35 = v19[2];
        v36 = (v33 & 1) == 0;
        v37 = v35 + v36;
        if (__OFADD__(v35, v36))
        {
          goto LABEL_39;
        }

        v38 = v33;
        if (v19[3] >= v37)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_188FA1AB8();
          }
        }

        else
        {
          sub_188D0CC5C(v37, isUniquelyReferenced_nonNull_native);
          v39 = sub_188B00858(v29);
          if ((v38 & 1) != (v40 & 1))
          {
            goto LABEL_41;
          }

          v34 = v39;
        }

        v11 = v31;
        v21 = v30;
        if (v38)
        {
          sub_188EA2468(&v73, v19[7] + 40 * v34);

          v20 = 0uLL;
          v14 = v71;
        }

        else
        {
          v19[(v34 >> 6) + 8] |= 1 << v34;
          *(v19[6] + 8 * v34) = v29;
          v47 = v19[7] + 40 * v34;
          v48 = v73;
          v49 = v74;
          *(v47 + 32) = v75;
          *v47 = v48;
          *(v47 + 16) = v49;
          v50 = v19[2];
          v51 = __OFADD__(v50, 1);
          v52 = v50 + 1;
          v14 = v71;
          if (v51)
          {
            goto LABEL_40;
          }

          v19[2] = v52;
          v20 = 0uLL;
        }
      }

      else
      {
        v79 = 0;
        v77 = 0u;
        v78 = 0u;
        sub_188F736F0(&v77);
        v41 = sub_188B00858(v29);
        if (v42)
        {
          v43 = v41;
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_188FA1AB8();
          }

          v44 = v19[7] + 40 * v43;
          v45 = *(v44 + 32);
          v46 = *(v44 + 16);
          v73 = *v44;
          v74 = v46;
          v75 = v45;
          sub_188F9D054(v43, v19);
        }

        else
        {

          v75 = 0;
          v73 = 0u;
          v74 = 0u;
        }

        sub_188F736F0(&v73);
        v20 = 0uLL;
      }
    }

    if (v18 <= v13 + 1)
    {
      v23 = v13 + 1;
    }

    else
    {
      v23 = v18;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v22 >= v18)
      {
        v17 = 0;
        v79 = 0;
        v13 = v24;
        v77 = v20;
        v78 = v20;
        goto LABEL_18;
      }

      v17 = *(v14 + 8 * v22);
      ++v13;
      if (v17)
      {
        v13 = v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    sub_18A4A87A8();
    __break(1u);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC8];
LABEL_37:
    v53 = v3;
    v54 = [v53 _mutations];

    v82 = 0;
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 9) = v6;
    *(a2 + 10) = v7;
    *(a2 + 11) = v8;
    *(a2 + 12) = v70;
    *(a2 + 13) = v69;
    *(a2 + 14) = v68;
    *(a2 + 15) = v67;
    *(a2 + 16) = v66;
    *(a2 + 17) = v65;
    *(a2 + 18) = v64;
    *(a2 + 19) = v63;
    *(a2 + 20) = v62;
    *(a2 + 24) = v19;
    *(a2 + 32) = v3;
    *(a2 + 40) = v54;
    *(a2 + 48) = 0;
  }
}

unint64_t sub_188C98384@<X0>(unint64_t result@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (result >= 3)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A68EE10);
    a2(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    MEMORY[0x18CFE22D0](a3, 0xE900000000000065);
    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    *a4 = result;
  }

  return result;
}

void sub_188C984D4()
{
  v1 = *v0;
  v36 = *(v0 + 8);
  v37 = *(v0 + 9);
  v38 = *(v0 + 10);
  v39 = *(v0 + 11);
  v40 = *(v0 + 12);
  v42 = *(v0 + 13);
  v2 = *(v0 + 14);
  v3 = *(v0 + 15);
  v4 = *(v0 + 16);
  v5 = *(v0 + 17);
  v6 = *(v0 + 18);
  v7 = *(v0 + 19);
  v8 = *(v0 + 20);
  v10 = v0[3];
  v9 = v0[4];
  if (v9)
  {
    v34 = *v0;
    v35 = *(v0 + 14);
    v11 = *(v0 + 15);
    v12 = *(v0 + 16);
    v13 = *(v0 + 17);
    v14 = *(v0 + 18);
    v15 = *(v0 + 19);
    v16 = *(v0 + 20);
    v17 = v0[5];
    v18 = *(v0 + 48);
    v19 = v9;
    v20 = [v19 _mutations];
    if ((v18 & 1) == 0 && v17 == v20)
    {
      return;
    }

    v8 = v16;
    v7 = v15;
    v6 = v14;
    v5 = v13;
    v4 = v12;
    v3 = v11;
    v2 = v35;
    v1 = v34;
  }

  v21 = [objc_allocWithZone(UICellConfigurationState) initWithTraitCollection_];
  [v21 setDisabled_];
  [v21 setHighlighted_];
  [v21 setSelected_];
  [v21 setFocused_];
  [v21 setPinned_];

  [v21 setEditing_];
  [v21 setExpanded_];
  [v21 setSwiped_];
  [v21 setReordering_];
  [v21 setCellDragState_];
  [v21 setCellDropState_];
  [v21 _setUsesAnyPlainListStyle_];
  [v21 _setInMultiSelectGroup_];
  v22 = 1 << *(v10 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v10 + 64);
  v25 = (v22 + 63) >> 6;

  v26 = 0;
  if (v24)
  {
    while (1)
    {
      v27 = v26;
LABEL_12:
      v28 = __clz(__rbit64(v24)) | (v27 << 6);
      v29 = *(*(v10 + 48) + 8 * v28);
      sub_188BBA230(*(v10 + 56) + 40 * v28, &v44);
      v41 = v45;
      v43 = v44;
      v30 = v46;
      v31 = v29;
      if (!v29)
      {
        break;
      }

      v32 = v31;
      v24 &= v24 - 1;
      v44 = v43;
      v45 = v41;
      v46 = v30;
      v33 = sub_18A4A7FF8();
      sub_188BBA15C(&v44);
      [v21 _setSwiftBridgingCustomState_forKey_];

      v26 = v27;
      if (!v24)
      {
        goto LABEL_9;
      }
    }

LABEL_15:
  }

  else
  {
LABEL_9:
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v25)
      {
        goto LABEL_15;
      }

      v24 = *(v10 + 64 + 8 * v27);
      ++v26;
      if (v24)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t IndexPath.section.getter()
{
  result = sub_18A4A2B28();
  if (result < 1)
  {
    __break(1u);
  }

  else
  {

    return sub_18A4A2B58();
  }

  return result;
}

uint64_t _sSo023UITableViewHeaderFooterB0C5UIKitE20contentConfigurationAC09UIContentG0_pSgvs_0(uint64_t a1)
{
  sub_188BC6E54(a1, v11);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8);
    if (swift_dynamicCast())
    {
      [v1 setContentConfiguration_];

      return sub_188BC6DEC(a1);
    }
  }

  else
  {
    sub_188BC6DEC(v11);
  }

  sub_188BC6E54(a1, &v9);
  if (v10)
  {
    sub_188A5EBAC(&v9, v11);
    sub_188A53994(v11, &v9);
    v3 = type metadata accessor for _UICustomContentConfiguration();
    v4 = objc_allocWithZone(v3);
    v5 = &v4[OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration____lazy_storage___wrappedConfigurationIdentifier];
    *v5 = 0;
    *(v5 + 1) = 0;
    sub_188A53994(&v9, &v4[OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration_wrappedConfiguration]);
    v8.receiver = v4;
    v8.super_class = v3;
    v6 = objc_msgSendSuper2(&v8, sel_init);
    __swift_destroy_boxed_opaque_existential_0Tm(&v9);
    [v1 setContentConfiguration_];

    sub_188BC6DEC(a1);
    return __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  sub_188BC6DEC(&v9);
  [v1 setContentConfiguration_];
  return sub_188BC6DEC(a1);
}

uint64_t _UIShouldApplyVerticalLayoutMarginsToListHeaderFooterViews()
{
  result = dyld_program_sdk_at_least();
  if (result)
  {
    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v1 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar < 1 || (v3 = _UIInternalPreference_ApplyVerticalLayoutMarginsToListHeaderFooterViews, _UIInternalPreferencesRevisionVar == _UIInternalPreference_ApplyVerticalLayoutMarginsToListHeaderFooterViews))
    {
      v2 = 0;
    }

    else
    {
      do
      {
        v2 = v1 < v3;
        if (v1 < v3)
        {
          break;
        }

        _UIInternalPreferenceSync(v1, &_UIInternalPreference_ApplyVerticalLayoutMarginsToListHeaderFooterViews, @"ApplyVerticalLayoutMarginsToListHeaderFooterViews", _UIInternalPreferenceUpdateBool);
        v3 = _UIInternalPreference_ApplyVerticalLayoutMarginsToListHeaderFooterViews;
      }

      while (v1 != _UIInternalPreference_ApplyVerticalLayoutMarginsToListHeaderFooterViews);
    }

    return byte_1ED48B534 && v2;
  }

  return result;
}

double UIPixelBoundaryOffset(int a1, double a2, double a3)
{
  v4 = a3;
  if (a3 == 0.0)
  {
    v6 = [objc_opt_self() mainScreen];
    [v6 scale];
    v4 = v7;
  }

  v8 = ceil(v4 * a2);
  v9 = floor(v4 * a2);
  if (a1)
  {
    v9 = v8;
  }

  return v9 / v4;
}

NSString *_UIContentSizeCategoryMin(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if (UIContentSizeCategoryCompareToCategory(v4, v3) == NSOrderedDescending)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v5;
}

uint64_t _UICollectionViewCompositionalLayoutShouldDeferResolvesUntilQueried()
{
  result = dyld_program_sdk_at_least();
  if (result)
  {
    LODWORD(result) = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_CompositionalLayoutDeferResolveToQueryTime, @"CompositionalLayoutDeferResolveToQueryTime");
    if (byte_1ED48AA9C)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  return result;
}

id _interpolateColors(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5 == v6 || a3 <= 0.0)
  {
    goto LABEL_7;
  }

  if (a3 >= 1.0)
  {
    v8 = v6;
    goto LABEL_8;
  }

  if (!v5)
  {
    [v6 alphaComponent];
    v12 = v11 * a3;
    v13 = v7;
LABEL_14:
    v8 = [v13 colorWithAlphaComponent:v12];
    goto LABEL_8;
  }

  if (!v6)
  {
    [v5 alphaComponent];
    v12 = (1.0 - a3) * v14;
    v13 = v5;
    goto LABEL_14;
  }

  if ([v5 isEqual:v6])
  {
LABEL_7:
    v8 = v5;
    goto LABEL_8;
  }

  v22 = 0.0;
  v23 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  [v5 getRed:&v23 green:&v22 blue:&v21 alpha:&v20];
  v22 = v20 * v22;
  v23 = v20 * v23;
  v21 = v20 * v21;
  v18 = 0.0;
  v19 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  [v7 getRed:&v19 green:&v18 blue:&v17 alpha:&v16];
  v19 = v16 * v19;
  v21 = v16 * v21;
  v22 = v16 * v22;
  v15 = 0.0001;
  if (v20 + (v16 - v20) * a3 >= 0.0001)
  {
    v15 = v20 + (v16 - v20) * a3;
  }

  v8 = [UIColor colorWithRed:(v23 + (v19 - v23) * a3) / v15 green:(v22 + (v18 - v22) * a3) / v15 blue:(v21 + (v17 - v21) * a3) / v15 alpha:?];
LABEL_8:
  v9 = v8;

  return v9;
}

__CFString *_UISplitViewControllerColumnDescription(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v2 = @"Compact";

        break;
      case 4:
        v2 = @"Inspector";

        break;
      case 999:
        v2 = @"Unspecified";

        break;
      default:
LABEL_20:
        v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu (not defined as an enum value)", a1];

        return v2;
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        v2 = @"Secondary";

        return v2;
      }

      goto LABEL_20;
    }

    v2 = @"Supplementary";
  }

  else
  {
    v2 = @"Primary";
  }

  return v2;
}

uint64_t sub_188C99D68(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_188BB6798(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 24 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 56), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

unint64_t sub_188C99E48(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v4;
  v10 = v9 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_21;
  }

  result = v10 + 24 * a3;
  v15 = (v9 + 32 + 24 * a2);
  if (result != v15 || result >= v15 + 24 * v14)
  {
    result = memmove(result, v15, 24 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_22;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

uint64_t _IsKindOfUITableViewCell(void *a1)
{
  v1 = qword_1EA9675E8[0];
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(qword_1EA9675E8, &__block_literal_global_2989);
  }

  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id _UITableViewSubviewToMoveForView(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (_IsKindOfUITableViewCell(v1))
  {
    v3 = v1;
    v4 = [v3 _containerView];
    v5 = v4;
    v2 = v3;
    if (v4)
    {
      v2 = v4;
    }
  }

  return v2;
}

uint64_t _IsKindOfUITableViewHeaderFooterView(void *a1)
{
  v1 = qword_1EA9675D8;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1EA9675D8, &__block_literal_global_2987);
  }

  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_188C9A23C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = [a1 traitCollection];
  v74 = 1;
  v5 = [v2 isDisabled];
  v6 = [v2 isHighlighted];
  v7 = [v2 isSelected];
  v8 = [v2 isFocused];
  v62 = [v2 isPinned];
  v9 = [v2 _customStatesForSwiftBridging];
  if (v9)
  {
    v10 = v9;
    v55 = v8;
    v56 = v7;
    v57 = v6;
    v58 = v5;
    v59 = v4;
    v60 = v2;
    v61 = a2;
    type metadata accessor for UIConfigurationStateCustomKey(0);
    sub_188D0CBBC();
    v11 = MEMORY[0x1E69E7CA0];
    v12 = sub_18A4A70A8();

    v13 = 0;
    v14 = v12 + 64;
    v64 = v12;
    v15 = 1 << *(v12 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v12 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = MEMORY[0x1E69E7CC8];
    v20 = 0uLL;
    v21 = MEMORY[0x1E69E69B8];
    v63 = v14;
    while (v17)
    {
      v22 = v13;
LABEL_17:
      v25 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v26 = v25 | (v22 << 6);
      v27 = *(*(v64 + 48) + 8 * v26);
      sub_188A55598(*(v64 + 56) + 32 * v26, &v65);
      *&v69 = v27;
      sub_188A55538(&v65, (&v69 + 8));
      v28 = v27;
LABEL_18:
      v72[0] = v69;
      v72[1] = v70;
      v73 = v71;
      v29 = v69;
      if (!v69)
      {

        v2 = v60;
        a2 = v61;
        v4 = v59;
        v6 = v57;
        v5 = v58;
        v8 = v55;
        v7 = v56;
        goto LABEL_37;
      }

      sub_188A55538((v72 + 8), &v68);
      if (swift_dynamicCast())
      {
        v30 = v21;
        v31 = v11;
        v65 = v69;
        v66 = v70;
        v67 = v71;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = sub_188B00858(v29);
        v35 = v19[2];
        v36 = (v33 & 1) == 0;
        v37 = v35 + v36;
        if (__OFADD__(v35, v36))
        {
          goto LABEL_39;
        }

        v38 = v33;
        if (v19[3] >= v37)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_188FA1AB8();
          }
        }

        else
        {
          sub_188D0CC5C(v37, isUniquelyReferenced_nonNull_native);
          v39 = sub_188B00858(v29);
          if ((v38 & 1) != (v40 & 1))
          {
            goto LABEL_41;
          }

          v34 = v39;
        }

        v11 = v31;
        v21 = v30;
        if (v38)
        {
          sub_188EA2468(&v65, v19[7] + 40 * v34);

          v20 = 0uLL;
          v14 = v63;
        }

        else
        {
          v19[(v34 >> 6) + 8] |= 1 << v34;
          *(v19[6] + 8 * v34) = v29;
          v47 = v19[7] + 40 * v34;
          v48 = v65;
          v49 = v66;
          *(v47 + 32) = v67;
          *v47 = v48;
          *(v47 + 16) = v49;
          v50 = v19[2];
          v51 = __OFADD__(v50, 1);
          v52 = v50 + 1;
          v14 = v63;
          if (v51)
          {
            goto LABEL_40;
          }

          v19[2] = v52;
          v20 = 0uLL;
        }
      }

      else
      {
        v71 = 0;
        v69 = 0u;
        v70 = 0u;
        sub_188F736F0(&v69);
        v41 = sub_188B00858(v29);
        if (v42)
        {
          v43 = v41;
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_188FA1AB8();
          }

          v44 = v19[7] + 40 * v43;
          v45 = *(v44 + 32);
          v46 = *(v44 + 16);
          v65 = *v44;
          v66 = v46;
          v67 = v45;
          sub_188F9D054(v43, v19);
        }

        else
        {

          v67 = 0;
          v65 = 0u;
          v66 = 0u;
        }

        sub_188F736F0(&v65);
        v20 = 0uLL;
      }
    }

    if (v18 <= v13 + 1)
    {
      v23 = v13 + 1;
    }

    else
    {
      v23 = v18;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v22 >= v18)
      {
        v17 = 0;
        v71 = 0;
        v13 = v24;
        v69 = v20;
        v70 = v20;
        goto LABEL_18;
      }

      v17 = *(v14 + 8 * v22);
      ++v13;
      if (v17)
      {
        v13 = v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    sub_18A4A87A8();
    __break(1u);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC8];
LABEL_37:
    v53 = v2;
    v54 = [v53 _mutations];

    v74 = 0;
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 9) = v6;
    *(a2 + 10) = v7;
    *(a2 + 11) = v8;
    *(a2 + 12) = v62;
    *(a2 + 16) = v19;
    *(a2 + 24) = v2;
    *(a2 + 32) = v54;
    *(a2 + 40) = 0;
  }
}

uint64_t _UIUpdateLabelUsingTextConfiguration(void *a1, id *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (!a2)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIListTextPropertiesUpdateResult _UIUpdateLabelUsingTextConfiguration(UIView * _Nonnull __strong, UILabel * _Nullable __strong * _Nonnull, UIListContentTextProperties * _Nonnull __strong)"}];
    [v11 handleFailureInFunction:v12 file:@"UIListContentTextProperties_Internal.h" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"labelPtr != NULL"}];
  }

  v7 = *a2;
  if ([v6 _hasText])
  {
    if (v7)
    {
      if ([(UIView *)v7 isHidden])
      {
        [(UIView *)v7 setHidden:0];
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v7 = objc_alloc_init(UILabel);
      v9 = *a2;
      *a2 = v7;

      [v5 addSubview:v7];
      v8 = 1;
    }

    [(UIListContentTextProperties *)v6 _applyToLabel:v7];
  }

  else if (v7 && ![(UIView *)v7 isHidden])
  {
    [(UIView *)v7 setHidden:1];
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_188C9B84C(uint64_t a1, double a2)
{
  v4 = type metadata accessor for GlassState(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 1.0;
  if (a2 <= 1.0)
  {
    v7 = a2;
  }

  v8 = v7 * 32.0;
  if (a2 > 0.0)
  {
    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0.0;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v9 = v8;
  if (v8 >= 31)
  {
    v9 = 31;
  }

  v10 = v9 / 31.0;
  v11 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_state;
  swift_beginAccess();
  sub_189063880(a1 + v11, v6, type metadata accessor for GlassState);
  v12 = &v6[*(v4 + 20)];
  *v12 = v10;
  v12[8] = 0;
  sub_18905D630(v6);
}

uint64_t sub_188C9BABC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188C9BAF4(uint64_t a1)
{
  sub_188C2A1B4(a1, v6);
  if (v6[88] - 1 < 3)
  {
    sub_188C26480(v6);
    return 0;
  }

  sub_188A53994(v6, v5);
  sub_188C26480(v6);
  v3 = __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  v4 = sub_188C26B20(*v3, *(v3 + 8));
  if ((v4 - 1) < 2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    v1 = 3;
    if ((_UIFloatingBarEnabled() & 1) == 0)
    {
      if (dyld_program_sdk_at_least())
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }
  }

  else
  {
    if (v4 != 3)
    {
      if (v4 != 4)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v5);
        return 3;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v5);
      return 0;
    }

    if (dyld_program_sdk_at_least())
    {
      v1 = 2;
    }

    else
    {
      v1 = 3;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  return v1;
}

double _UITableViewHeaderFooterViewConcreteDefaultLayoutMargins(void *a1, int a2, double a3)
{
  v3 = a2;
  if (dyld_program_sdk_at_least() == a2)
  {
    goto LABEL_19;
  }

  v6 = [a1 tableViewStyle];
  if (v6 < 0)
  {
    v7 = [a1 _table];
    v6 = [v7 _tableStyle];
  }

  if (v6 == 16)
  {
    goto LABEL_7;
  }

  if (v6 != 2)
  {
    if (v6 != 1)
    {
      goto LABEL_19;
    }

LABEL_7:
    v8 = [a1 _table];
    [v8 _sectionContentInset];
    v10 = v9;
    v12 = v11;

    if (v10 <= 0.0 && v12 <= 0.0)
    {
      goto LABEL_19;
    }
  }

  if (v3)
  {
    v13 = [a1 contentView];
    [v13 frame];
  }

  else
  {
    [a1 frame];
  }

  v14 = [a1 traitCollection];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == 6)
  {
    v16 = [a1 _constants];
    [v16 defaultHeaderFooterLayoutMarginsForTableViewStyle:objc_msgSend(a1 isHeader:"tableViewStyle") isFirstSection:{objc_msgSend(a1, "sectionHeader"), objc_msgSend(a1, "_isTopHeader")}];
    a3 = v17;
  }

  else
  {
    v16 = [a1 _metricsAdapter];
    a3 = [(UITableMetricsAdapter *)v16 defaultTableLayoutMargins];
    [a1 _shouldReverseLayoutDirection];
  }

  if ((v3 & 1) == 0)
  {
    v45 = a3;
    [a1 _contentRect];
    v19 = v18;
    v47 = v18;
    v48 = v20;
    v22 = v21;
    v23 = v20;
    v49 = v24;
    [a1 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v50.origin.x = v19;
    v50.origin.y = v22;
    v50.size.width = v23;
    v50.size.height = v49;
    MinY = CGRectGetMinY(v50);
    v51.origin.x = v26;
    v51.origin.y = v28;
    v51.size.width = v30;
    v51.size.height = v32;
    v46 = MinY - CGRectGetMinY(v51);
    v52.origin.x = v47;
    v52.origin.y = v22;
    v52.size.width = v48;
    v52.size.height = v49;
    CGRectGetMinX(v52);
    v53.origin.x = v26;
    v53.origin.y = v28;
    v53.size.width = v30;
    v53.size.height = v32;
    CGRectGetMinX(v53);
    v54.origin.x = v26;
    v54.origin.y = v28;
    v54.size.width = v30;
    v54.size.height = v32;
    CGRectGetMaxY(v54);
    v55.origin.x = v47;
    v55.origin.y = v22;
    v55.size.width = v48;
    v55.size.height = v49;
    CGRectGetMaxY(v55);
    v56.origin.x = v26;
    v56.origin.y = v28;
    v56.size.width = v30;
    v56.size.height = v32;
    CGRectGetMaxX(v56);
    v57.origin.x = v47;
    v57.size.width = v48;
    v57.origin.y = v22;
    v57.size.height = v49;
    CGRectGetMaxX(v57);
    [a1 edgesInsettingLayoutMarginsFromSafeArea];
    [a1 safeAreaInsets];
    v34 = [a1 superview];

    if (!v34)
    {
      v35 = [a1 _table];
      v36 = [v35 _scrollView];
      [v36 safeAreaInsets];
    }

    a3 = v45 + v46;
  }

LABEL_19:
  if (_UIShouldApplyVerticalLayoutMarginsToListHeaderFooterViews())
  {
    a3 = 0.0;
    if ((v3 & 1) == 0)
    {
      v37 = [a1 tableViewStyle];
      if (v37 < 0)
      {
        v38 = [a1 _table];
        v37 = [v38 _tableStyle];
      }

      v39 = [a1 _constants];
      v40 = v39;
      if (v39)
      {
        v41 = v39;
      }

      else
      {
        v42 = [a1 traitCollection];
        v41 = _UITableConstantsForTraitCollection(v42);
      }

      [v41 defaultHeaderFooterLayoutMarginsForTableViewStyle:v37 isHeader:objc_msgSend(a1 isFirstSection:{"sectionHeader"), objc_msgSend(a1, "_isTopHeader")}];
      a3 = v43;
    }
  }

  return a3;
}

void sub_188C9C24C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  v5 = *(v0 + 11);
  v6 = *(v0 + 12);
  v8 = v0[2];
  v7 = v0[3];
  if (v7)
  {
    v9 = v0[4];
    v10 = *(v0 + 40);
    v11 = v7;
    v12 = [v11 _mutations];
    if ((v10 & 1) == 0 && v9 == v12)
    {
      return;
    }
  }

  v13 = [objc_allocWithZone(UIViewConfigurationState) initWithTraitCollection_];
  [v13 setDisabled_];
  [v13 setHighlighted_];
  [v13 setSelected_];
  [v13 setFocused_];
  [v13 setPinned_];
  v14 = 1 << *(v8 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v8 + 64);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v20 = __clz(__rbit64(v16)) | (v19 << 6);
      v21 = *(*(v8 + 48) + 8 * v20);
      sub_188BBA230(*(v8 + 56) + 40 * v20, &v28);
      v26 = v29;
      v27 = v28;
      v22 = v30;
      v23 = v21;
      if (!v21)
      {
        break;
      }

      v24 = v23;
      v16 &= v16 - 1;
      v28 = v27;
      v29 = v26;
      v30 = v22;
      v25 = sub_18A4A7FF8();
      sub_188BBA15C(&v28);
      [v13 _setSwiftBridgingCustomState_forKey_];

      v18 = v19;
      if (!v16)
      {
        goto LABEL_9;
      }
    }

LABEL_15:
  }

  else
  {
LABEL_9:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {
        goto LABEL_15;
      }

      v16 = *(v8 + 64 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t static _UICornerMaskingConfiguration.containerConcentric.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1ED48D020 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1ED48D058;
  v8[2] = xmmword_1ED48D048;
  v9[0] = unk_1ED48D058;
  v2 = unk_1ED48D062;
  *(v9 + 10) = unk_1ED48D062;
  v4 = xmmword_1ED48D028;
  v3 = unk_1ED48D038;
  v8[0] = xmmword_1ED48D028;
  v8[1] = unk_1ED48D038;
  a1[2] = xmmword_1ED48D048;
  a1[3] = v1;
  *(a1 + 58) = v2;
  *a1 = v4;
  a1[1] = v3;
  return sub_188AF8100(v8, &v7);
}

void _UIGrabberCommonInit(_BYTE *a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  a1[457] = 1;
  v1 = a1;
  v2 = [_UILumaTrackingBackdropView alloc];
  [v1 bounds];
  v7 = [(_UILumaTrackingBackdropView *)v2 initWithTransitionBoundaries:v1 delegate:0.45 frame:0.55, v3, v4, v5, v6];
  v8 = v1[59];
  v1[59] = v7;

  [v1 addSubview:v1[59]];
  v9 = objc_alloc_init(UIVisualEffectView);
  v10 = v1[58];
  v1[58] = v9;

  [v1 addSubview:v1[58]];
  v11 = *MEMORY[0x1E69796E8];
  v12 = [v1 layer];
  [v12 setCornerCurve:v11];

  [v1 setClipsToBounds:1];
  v16[0] = 0x1EFE323B0;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v14 = [v1 _registerForTraitTokenChanges:v13 withTarget:v1 action:sel_setNeedsLayout];

  v15 = [v1 pointerInteraction];

  [v15 setEnabled:1];
}

uint64_t _s21CornerRadiiResolutionCMa()
{
  result = qword_1EA938EA0;
  if (!qword_1EA938EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_188C9CE54()
{
  result = sub_18A4A2C48();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void __getAFAnalyticsClass_block_invoke(uint64_t a1)
{
  AssistantServicesLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AFAnalytics");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED49F230 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFAnalyticsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationConnection.m" lineNumber:57 description:{@"Unable to find class %s", "AFAnalytics"}];

    __break(1u);
  }
}

void __getAFAnalyticsClass_block_invoke_0(uint64_t a1)
{
  AssistantServicesLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AFAnalytics");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAFAnalyticsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFAnalyticsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:229 description:{@"Unable to find class %s", "AFAnalytics"}];

    __break(1u);
  }
}

void __UITextCheckerGrammarCheckingEnabled_block_invoke()
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v0 = _UIMainBundleIdentifier();
  v1 = [v3 objectForKey:@"UITextCheckerEnablePostEditingGrammarCheck"];

  if (v1)
  {
    v2 = [v3 BOOLForKey:@"UITextCheckerEnablePostEditingGrammarCheck"];
LABEL_11:
    byte_1ED49AD62 = v2;
    goto LABEL_12;
  }

  if ((_os_feature_enabled_impl() & 1) != 0 || ([v0 isEqualToString:@"com.apple.MobileSMS"] & 1) != 0 || (objc_msgSend(v0, "isEqualToString:", @"com.apple.mobilemail") & 1) != 0 || (objc_msgSend(v0, "isEqualToString:", @"com.apple.mobilenotes") & 1) != 0 || (objc_msgSend(v0, "isEqualToString:", @"com.apple.mobilesafari") & 1) != 0 || (objc_msgSend(v0, "isEqualToString:", @"com.apple.UIKitester") & 1) != 0 || objc_msgSend(v0, "isEqualToString:", @"com.apple.Typist"))
  {
    v2 = 1;
    goto LABEL_11;
  }

LABEL_12:
}

_OWORD *sub_188C9D3F4()
{
  v1 = v0;
  v2 = [(UIView *)v0 _typedStorage];
  v3 = sub_188B22DB8();

  if (!v3)
  {
    v4 = [v1 traitCollection];
    sub_188B2266C(v4, v13);

    _s21CornerRadiiResolutionCMa();
    v3 = swift_allocObject();
    sub_18A4A2C38();
    v5 = v13[1];
    v3[1] = v13[0];
    v3[2] = v5;
    v6 = v13[3];
    v3[3] = v13[2];
    v3[4] = v6;

    v7 = [(UIView *)v1 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938F80);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    v9 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(&v7->super.isa + v9);
    *(&v7->super.isa + v9) = 0x8000000000000000;
    sub_188A40430(v8, &_s21CornerRadiiResolutionC3KeyVN, isUniquelyReferenced_nonNull_native);
    *(&v7->super.isa + v9) = v12;
    swift_endAccess();
  }

  return v3;
}

void sub_188C9D56C(char a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v7 = v6;
  if (a1)
  {
    v10 = 0;
    v11 = 1;
    v12 = 2;
  }

  else if ((a1 & 2) != 0)
  {
    v11 = 1;
    v12 = 4;
    v10 = 1;
  }

  else
  {
    if ((a1 & 4) != 0)
    {
      v10 = 2;
      v11 = 4;
    }

    else
    {
      if ((a1 & 8) == 0)
      {
        return;
      }

      v10 = 3;
      v11 = 2;
    }

    v12 = 8;
  }

  if (_UIViewMaskingConfigurationSPIEnabled())
  {
    v78 = v10;
    v76 = v6;
    v13 = sub_188C9D3F4();
    swift_getKeyPath();
    sub_188C9DC00();
    sub_18A4A2C08();

    v14 = v13 + 6;
    v15 = v13 + 7;
    v16 = v13 + 2;
    v17 = v13 + 3;
    if (v11 != 4)
    {
      v16 = v13 + 6;
      v17 = v13 + 7;
      if (v11 != 2)
      {
        v16 = v13 + 8;
        v17 = v13 + 9;
      }
    }

    v18 = *v17;
    v19 = *v16;
    sub_18A4A5BA8();
    sub_18A4A5BA8();
    v20 = sub_18A4A5BA8();
    if (v20 != sub_18A4A5BA8())
    {
      v19 = v18;
    }

    swift_getKeyPath();
    sub_18A4A2C08();

    if (v12 != 2)
    {
      v14 = v13 + 2;
      v15 = v13 + 3;
      if (v12 != 4)
      {
        v14 = v13 + 4;
        v15 = v13 + 5;
      }
    }

    v21 = *v15;
    v22 = v19;
    v23 = *v14;
    sub_18A4A5BA8();
    sub_18A4A5BA8();
    v24 = sub_18A4A5BA8();
    v25 = sub_18A4A5BA8();

    if (v24 == v25)
    {
      v26 = v23;
    }

    else
    {
      v26 = v21;
    }

    v27 = v22;
    v10 = v78;
    v7 = v76;
  }

  else
  {
    [v6 _containerConcentricRadiusForCorner_];
    v27 = v28;
    [v6 _containerConcentricRadiusForCorner_];
    v26 = v29;
  }

  [v7 _currentScreenScale];
  v31 = v30;
  v32 = sub_18A4A5BA8();
  if (v32 == sub_18A4A5BA8())
  {
    v33 = a4;
  }

  else
  {
    v33 = a5;
  }

  v34 = v33 * 0.5;
  v79 = v27;
  UIRoundToScale(v27 - v33 * 0.5, v31);
  v77 = v35;
  UIRoundToScale(v26 - v34, v31);
  v75 = v36;
  v83.origin.x = a2;
  v83.origin.y = a3;
  v83.size.width = a4;
  v83.size.height = a5;
  MinX = CGRectGetMinX(v83);
  v84.origin.x = a2;
  v84.origin.y = a3;
  v84.size.width = a4;
  v84.size.height = a5;
  MinY = CGRectGetMinY(v84);
  sub_18A4A5BA8();
  sub_18A4A5BA8();
  v39 = sub_18A4A5BA8();
  if (v39 == sub_18A4A5BA8())
  {
    v40 = MinX;
  }

  else
  {
    v40 = MinY;
  }

  v74 = v40;
  [v7 bounds];
  x = v85.origin.x;
  y = v85.origin.y;
  width = v85.size.width;
  height = v85.size.height;
  MaxX = CGRectGetMaxX(v85);
  v86.origin.x = x;
  v86.origin.y = y;
  v86.size.width = width;
  v86.size.height = height;
  MaxY = CGRectGetMaxY(v86);
  sub_18A4A5BA8();
  sub_18A4A5BA8();
  v46 = sub_18A4A5BA8();
  if (v46 == sub_18A4A5BA8())
  {
    v47 = MaxX;
  }

  else
  {
    v47 = MaxY;
  }

  v87.origin.x = a2;
  v87.origin.y = a3;
  v87.size.width = a4;
  v87.size.height = a5;
  v48 = CGRectGetMaxX(v87);
  v88.origin.x = a2;
  v88.origin.y = a3;
  v88.size.width = a4;
  v88.size.height = a5;
  v49 = CGRectGetMaxY(v88);
  sub_18A4A5BA8();
  sub_18A4A5BA8();
  v50 = sub_18A4A5BA8();
  if (v50 == sub_18A4A5BA8())
  {
    v51 = v48;
  }

  else
  {
    v51 = v49;
  }

  v52 = vabdd_f64(v47, v51);
  if (v10 > 1)
  {
    v53 = a6;
    [v7 bounds];
    if (v10 == 2)
    {
      v63 = CGRectGetMaxY(*&v59);
      v89.origin.x = a2;
      v89.origin.y = a3;
      v89.size.width = a4;
      v89.size.height = a5;
      v64 = CGRectGetMaxY(v89);
    }

    else
    {
      v63 = CGRectGetMaxX(*&v59);
      v90.origin.x = a2;
      v90.origin.y = a3;
      v90.size.width = a4;
      v90.size.height = a5;
      v64 = CGRectGetMaxX(v90);
    }

    v58 = vabdd_f64(v63, v64);
  }

  else
  {
    v53 = a6;
    v54 = a2;
    v55 = a3;
    v56 = a4;
    v57 = a5;
    if (v10)
    {
      v58 = CGRectGetMinX(*&v54);
    }

    else
    {
      v58 = CGRectGetMinY(*&v54);
    }
  }

  v65 = v75;
  v66 = *&v77;
  if (fmax(*&v77, v75) > 0.0 && v74 <= v79 && v58 <= v79 && v52 <= v26 && v58 <= v26)
  {
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v71 = v75;
        v65 = *&v77;
        v72 = *&v77;
        v66 = 0.0;
      }

      else
      {
        v72 = 0.0;
        v71 = *&v77;
      }
    }

    else
    {
      if (v10)
      {
        v71 = 0.0;
      }

      else
      {
        v71 = v75;
        v65 = 0.0;
      }

      v72 = *&v77;
    }

    UIEdgeInsetsMax(15, v66, v72, v65, v71, v53);
  }
}

unint64_t sub_188C9DC00()
{
  result = qword_1EA938F78;
  if (!qword_1EA938F78)
  {
    _s21CornerRadiiResolutionCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA938F78);
  }

  return result;
}

id UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v33 = a7;
  v34 = a6;
  v32[1] = a3;
  v16 = sub_18A4A7258();

  v35 = a8;
  sub_188A3F29C(a8, v36, &qword_1EA934050);
  v17 = v37;
  if (v37)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v36, v37);
    v19 = *(v17 - 8);
    v20 = MEMORY[0x1EEE9AC00](v18);
    v22 = v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22, v20);
    v23 = sub_18A4A86A8();
    (*(v19 + 8))(v22, v17);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
  }

  else
  {
    v23 = 0;
  }

  if (a9 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940A50);
    sub_18A4A83B8();
  }

  else
  {
    sub_18A4A8738();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940A50);
  v24 = sub_18A4A7518();

  if (a11)
  {
    v25 = sub_18A4A7258();
  }

  else
  {
    v25 = 0;
  }

  v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v27 = [v26 initWithTitle:v16 image:a5 imageName:0 action:v33 fallbackAction:0 propertyList:v23 leafOrCommandAlternates:v24 discoverabilityTitle:v25 attributes:a12 state:a13];

  swift_unknownObjectRelease();
  v28 = v27;
  if (a4)
  {
    v29 = sub_18A4A7258();
  }

  else
  {
    v29 = 0;
  }

  [v27 setSubtitle_];

  v30 = v34;
  [v27 setSelectedImage_];

  sub_188A553EC(v35);
  return v27;
}

void _unregisterAccessibilityNotifications(uint64_t a1)
{
  if (*(a1 + 240))
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 _removeObserver:*(a1 + 240)];

    *(a1 + 240) = 0;
  }
}

void sub_188C9E6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188C9E9F8@<X0>(char a1@<W0>, uint64_t (*a2)(double)@<X1>, uint64_t a3@<X8>)
{
  sub_188AD8C44(v3, a3, type metadata accessor for _Glass._GlassVariant);
  v7 = sub_18A4A3118();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v22 - v11;
  v13 = a2(v10);
  MEMORY[0x1EEE9AC00](v13);
  v14 = v22 - v11;
  v22[1] = a3;
  v15 = sub_18A4A2F08();
  if (a1)
  {
    v22[0] = v22;
    v16 = MEMORY[0x1EEE9AC00](v15);
    v17 = v8[2];
    v17(v22 - v11, v12, v7, v16);
    sub_188B64AD8(&qword_1ED48D448, MEMORY[0x1EEE86AF8]);
    sub_18A4A7E88();
    v18 = v8[1];
    v19 = v18(v12, v7);
  }

  else
  {
    sub_188B64AD8(&qword_1ED48D448, MEMORY[0x1EEE86AF8]);
    sub_18A4A7E78();
    v18 = v8[1];
    v19 = v18(v22 - v11, v7);
    v17 = v8[2];
  }

  v20 = MEMORY[0x1EEE9AC00](v19);
  v17(v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v7, v20);
  sub_18A4A2F18();
  return v18(v14, v7);
}

void UIButton.Configuration.background.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_188BC666C();
  v3 = *(v1 + 16);
  v4 = v2;
  v5 = v3;

  [v5 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &qword_1ED48BEA8);
  swift_dynamicCast();
  [v4 _setSwiftBridgingBackground_];
}

__n128 _UICornerMaskingConfiguration.init(topLeft:topRight:bottomLeft:bottomRight:cornerCurve:)@<Q0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __n128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  *a6 = *a1;
  *(a6 + 16) = v6;
  result = *a3;
  v8 = *a4;
  *(a6 + 32) = *a3;
  *(a6 + 48) = v8;
  *(a6 + 64) = a5;
  *(a6 + 72) = 0;
  return result;
}

uint64_t sub_188C9EEE4(uint64_t a1)
{
  *(a1 + 8) = sub_188BBE67C(&qword_1EA930970, type metadata accessor for UILayoutPriority);
  result = sub_188BBE67C(&unk_1EA930950, type metadata accessor for UILayoutPriority);
  *(a1 + 16) = result;
  return result;
}

_DWORD *sub_188C9EF84@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t CompareViewHierarchyPosition(void *a1, void *a2)
{
  v4 = 1;
  while (a1 != a2)
  {
    v5 = [a1 superview];
    v6 = [a2 superview];
    if (!v5)
    {
      return -1;
    }

    v7 = v6;
    if (!v6)
    {
      return v4;
    }

    v8 = [objc_msgSend(v5 "_allSubviews")];
    v9 = [objc_msgSend(v7 "_allSubviews")];
    v10 = v8 > v9;
    if (v8 < v9)
    {
      return -1;
    }

    a1 = v5;
    a2 = v7;
    if (v10)
    {
      return v4;
    }
  }

  return 0;
}

void sub_188C9F750(uint64_t a1, char a2, SEL *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 32);
  if (a2)
  {

    v6 = sub_188CA0300(&qword_1EA9305E8, off_1E70EA108, &qword_1EA9374C0);
    v7 = *(v5 + 16);
    v8 = v6;
    v9 = v7;

    [v9 copy];

    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    v10 = v4[5];
    [v8 *a3];
  }

  else
  {
    v11 = sub_188CA0300(&qword_1EA9305E8, off_1E70EA108, &qword_1EA9374C0);
    v12 = *(v5 + 16);
    v13 = v11;
    v14 = v12;

    [v14 copy];

    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    v15 = v4[5];
    [v13 *a3];
  }

  free(v4);
}

void UIListContentConfiguration.TextProperties.color.setter(void *a1)
{
  sub_188F47AB4(a1);
}

id sub_188C9F944(unsigned __int8 *a1, SEL *a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    [*(v6 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930C48);
    swift_dynamicCast();
    v7 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937500);
    v8 = swift_allocObject();
    *(v8 + 16) = v10;

    *v2 = v8;
  }

  return [v7 *a2];
}

void UITableViewAlertForLayoutOutsideViewHierarchy(void *a1)
{
  v1 = a1;
  if (((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UITableViewEnableAlertForLayoutOutsideViewHierarchy, @"UITableViewEnableAlertForLayoutOutsideViewHierarchy", _UIInternalPreferenceUpdateBool) & 1) != 0 || byte_1EA95E71C) && dyld_program_sdk_at_least() && ([objc_opt_class() _isInternalTableView] & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __UITableViewAlertForLayoutOutsideViewHierarchy_block_invoke;
    block[3] = &unk_1E70F3590;
    v3 = v1;
    if (UITableViewAlertForLayoutOutsideViewHierarchy_once != -1)
    {
      dispatch_once(&UITableViewAlertForLayoutOutsideViewHierarchy_once, block);
    }
  }
}

uint64_t IndexPath.row.getter()
{
  result = sub_18A4A2B28();
  if (result == 2)
  {

    return sub_18A4A2B58();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_188CA003C(uint64_t *a1, uint64_t a2, SEL *a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = sub_188BC666C();
  v8 = v7;
  if (v5)
  {
    v12[4] = v5;
    v12[5] = v6;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_188BC2240;
    v12[3] = a2;
    v9 = _Block_copy(v12);
    v10 = v8;
  }

  else
  {
    v11 = v7;
    v9 = 0;
  }

  [v8 *a3];
  _Block_release(v9);
}

float sub_188CA010C@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

void sub_188CA024C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = sub_188CA0300(&qword_1EA9305E8, off_1E70EA108, &qword_1EA9374C0);
  v6 = v5;
  if (a2)
  {
    v7 = sub_18A4A7258();
  }

  else
  {
    v7 = 0;
  }

  [v5 *a3];
}

uint64_t sub_188CA0300(unint64_t *a1, uint64_t a2, uint64_t *a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    return *(v7 + 16);
  }

  [*(v7 + 16) copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, a1);
  swift_dynamicCast();
  v8 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v11;

  *v3 = v9;
  return v8;
}

void (*UIListContentConfiguration.textProperties.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = [*(*v1 + 16) textProperties];
  [v5 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  v4[7] = sub_188A34624(0, &qword_1EA930C48);
  swift_dynamicCast();
  v6 = v4[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937500);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v4[4] = v7;
  return sub_188C9F744;
}

void UIListContentConfiguration.TextProperties.font.setter(void *a1)
{
  sub_188F479C4(a1);
}

void __UITableViewAlertForLayoutOutsideViewHierarchy_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("TableView", &_UIInternalPreference_TableViewHeadersFootersUseModernConfiguration_block_invoke_11___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Warning once only: UITableView was told to layout its visible cells and other contents without being in the view hierarchy (the table view or one of its superviews has not been added to a window). This may cause bugs by forcing views inside the table view to load and perform layout without accurate information (e.g. table view bounds, trait collection, layout margins, safe area insets, etc), and will also cause unnecessary performance overhead due to extra layout passes. Make a symbolic breakpoint at UITableViewAlertForLayoutOutsideViewHierarchy to catch this in the debugger and see what caused this to occur, so you can avoid this action altogether if possible, or defer it until the table view has been added to a window. Table view: %{public}@", &v4, 0xCu);
  }
}

uint64_t UIConfigurationColorTransformer.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t storeEnumTagSinglePayload for UITransitionComponentResponseContext.Key(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *UIButton.configuration.getter@<X0>(void *a1@<X8>)
{
  result = [v1 configuration];
  if (result)
  {
    v4 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
    result = swift_allocObject();
    result[2] = v4;
  }

  *a1 = result;
  return result;
}

uint64_t static _UICornerMaskingConfiguration.CornerStyle.fixed(radius:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *a1 = result;
  a1[1] = 0xF000000000000007;
  return result;
}

NSString *__cdecl NSStringFromCGPoint(CGPoint point)
{
  v1 = CFStringCreateWithFormat(0, 0, @"{%.*g, %.*g}", 17, *&point.x, 17, *&point.y);

  return v1;
}

void ___shouldOverretainBackgroundColor_block_invoke()
{
  v0 = dyld_program_sdk_at_least();
  byte_1ED498E55 = v0 ^ 1;
  if ((v0 & 1) == 0)
  {
    v1 = _UIMainBundleIdentifier();
    byte_1ED498E55 = [v1 isEqualToString:@"com.yunatechnology.awesomecalendar"];
  }
}

id _UIFallbackViewOfClassForReusableView(uint64_t a1, void *a2)
{
  v2 = [a2 superview];
  if (v2)
  {
    v3 = v2;
    while ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = [v3 superview];
      if (!v3)
      {
        goto LABEL_5;
      }
    }

    if ((v3[11] & 0x800) != 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3;
    }

    v4 = v5;
  }

  else
  {
LABEL_5:
    if (pthread_main_np() == 1)
    {
      v4 = _UIGetCurrentFallbackView();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_13;
      }
    }

    v4 = 0;
  }

LABEL_13:

  return v4;
}

double _sectionFooterMinY(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (dyld_program_sdk_at_least())
  {
    return v4 + [(UITableViewRowData *)a1 offsetForSection:a2];
  }

  return v4;
}

void sub_188CA312C()
{
  v1 = v0;
  v53 = *MEMORY[0x1E69E9840];
  v2 = sub_18A4A2BD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18A4A2BA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E090);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  if ([(UIView *)v1 _isDeallocInitiated])
  {

    [(UITableViewCell *)v1 _executeConfigurationUpdate];
  }

  else
  {
    v45 = v12;
    v46 = v9;
    v47 = v5;
    v48 = v3;
    v49 = v2;
    v19 = [(UIView *)v1 _typedStorage];
    v20 = sub_188A4CEC4();

    if (v20)
    {
      sub_18913E3AC(15);
    }

    v50 = v20;
    v44 = *(v7 + 56);
    v44(v18, 1, 1, v6);
    v51 = v18;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = *(StatusReg + 848);
    *(StatusReg + 848) = v51;
    v23 = v7;
    v24 = byte_1ED4A3680;
    byte_1ED4A3680 = 1;
    [(UITableViewCell *)v1 _executeConfigurationUpdate];
    *(StatusReg + 848) = v22;
    v25 = v6;
    v26 = v51;
    byte_1ED4A3680 = v24;
    v27 = v23;
    sub_188A3F29C(v51, v15, &qword_1EA93E090);
    if ((*(v23 + 48))(v15, 1, v6) == 1)
    {
      sub_188A3F5FC(v26, &qword_1EA93E090);
      sub_188A3F5FC(v15, &qword_1EA93E090);
    }

    else
    {
      v28 = v46;
      (*(v23 + 32))(v46, v15, v6);
      v29 = sub_188ACEB88(v1, 15, &block_descriptor_39_4);
      v30 = v50;
      if (!v50)
      {
        v31 = v29;
        v32 = [(UIView *)v1 _typedStorage];
        v30 = sub_188A4CEC4();

        v29 = v31;
      }

      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      *(v34 + 24) = 15;
      *(v34 + 25) = v29;
      *(v34 + 32) = [UITableViewCell _invalidateConfiguration]_0;
      *(v34 + 40) = 0;
      v35 = v45;
      (*(v23 + 16))(v45, v28, v25);
      v44(v35, 0, 1, v25);

      v36 = v47;
      sub_18A4A2BE8();
      if (!v30)
      {
        type metadata accessor for TrackingDictionary();
        v37 = swift_allocObject();
        *(v37 + 16) = MEMORY[0x1E69E7CC8];
        swift_retain_n();
        v38 = [(UIView *)v1 _typedStorage];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E098);
        v39 = swift_allocObject();
        *(v39 + 16) = v37;
        v50 = v33;
        v40 = OBJC_IVAR____UITypedStorage_storage;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = *(&v38->super.isa + v40);
        *(&v38->super.isa + v40) = 0x8000000000000000;
        sub_188A40430(v39, &type metadata for ObservationTrackingDictionaryKey, isUniquelyReferenced_nonNull_native);
        *(&v38->super.isa + v40) = v52;
        swift_endAccess();
      }

      swift_retain_n();
      sub_188ACEFD4(v36, 15);

      v42 = swift_allocObject();
      *(v42 + 16) = sub_188B57AD4;
      *(v42 + 24) = v34;

      MEMORY[0x18CFDDAE0](v36, 0, 0, sub_188B57248, v42);

      (*(v48 + 8))(v36, v49);
      (*(v27 + 8))(v28, v25);
      sub_188A3F5FC(v51, &qword_1EA93E090);
    }
  }
}

void sub_188CA4428(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_188CA4648(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void UITableViewHeaderFooterViewCommonInit(void *a1, void *a2)
{
  v7 = a1;
  v3 = [a2 copy];
  v4 = v7[59];
  v7[59] = v3;

  if (dyld_program_sdk_at_least() && [v7 translatesAutoresizingMaskIntoConstraints])
  {
    [v7 _setHostsLayoutEngine:1];
  }

  v7[51] = -1;
  v7[57] = -1;
  v7[58] = 0x7FEFFFFFFFFFFFFFLL;
  v7[64] = 0xBFF0000000000000;
  v7[65] = 0xBFF0000000000000;
  v5 = [_UITableViewHeaderFooterContentView alloc];
  [v7 _contentRect];
  v6 = [(_UITableViewHeaderFooterContentView *)v5 initWithFrame:?];
  [v7 _setContentView:v6 insertAtBack:1];

  [v7 _configureDefaultContentViewLayoutMargins];
  if (dyld_program_sdk_at_least())
  {
    [v7 setEdgesPreservingSuperviewLayoutMargins:10];
    [v7 setEdgesInsettingLayoutMarginsFromSafeArea:{objc_msgSend(v7, "edgesInsettingLayoutMarginsFromSafeArea") & 0xA}];
  }

  *(v7 + 144) |= 0x100u;
  *(v7 + 144) |= 0x4000u;
  *(v7 + 144) |= 0x10000u;
  *(v7 + 144) |= 0x20000u;
}

uint64_t _UITableViewCellUsesLayoutMarginBasedContentPadding()
{
  if (qword_1ED498E58 != -1)
  {
    dispatch_once(&qword_1ED498E58, &__block_literal_global_555);
  }

  return _MergedGlobals_63_1;
}

uint64_t _UIConfigurationIdentifierForColorTransformer(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (qword_1ED49DD10 != -1)
    {
      dispatch_once(&qword_1ED49DD10, &__block_literal_global_56_1);
    }

    v2 = NSMapGet(_MergedGlobals_1090, v1);
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t _UIMaximumIntrinsicContentSizeInvalidationUpdatesPerCommit()
{
  if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_MaximumCollectionTableSelfSizingInvalidationUpdatesPerCommit, @"MaximumCollectionTableSelfSizingInvalidationUpdatesPerCommit", _UIInternalPreferenceUpdateInteger))
  {
    return 2;
  }

  else
  {
    return qword_1EA95E218;
  }
}

void sub_188CA6F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak((v27 + 48));
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v30 - 136), 8);
  objc_destroyWeak((v30 - 104));
  _Unwind_Resume(a1);
}

double _UIWindowConvertPointFromOrientationToOrientation(uint64_t a1, uint64_t a2, double result, double a4, double a5, double a6)
{
  if (a1 != a2)
  {
    v6 = a5 - result;
    v7 = a6 - a4;
    v8 = a5 - a4;
    if (a1 == 4)
    {
      v9 = a4;
    }

    else
    {
      v9 = result;
    }

    if (a1 == 4)
    {
      a4 = a6 - result;
    }

    if (a1 != 3)
    {
      v8 = v9;
      result = a4;
    }

    if (a1 == 2)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }

    if (a1 == 2)
    {
      v11 = v7;
    }

    else
    {
      v11 = result;
    }

    switch(a2)
    {
      case 2:
        return a5 - v10;
      case 3:
        return v11;
      case 4:
        return a6 - v11;
      default:
        return v10;
    }
  }

  return result;
}

__n128 _UIBoundingPathBitmapDataCreateRoundRectWithCornerRadii@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  _createCornerWithRadius(&v36, 0, *a2);
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  _createCornerWithRadius(&v33, 1, a2[1]);
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  _createCornerWithRadius(&v30, 2, a2[2]);
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  _createCornerWithRadius(&v27, 3, a2[3]);
  v6 = v37;
  v7 = v34;
  if (v37 <= v34)
  {
    v8 = v34;
  }

  else
  {
    v8 = v37;
  }

  v9 = v28;
  v10 = v31;
  if (v28 <= v31)
  {
    v11 = v31;
  }

  else
  {
    v11 = v28;
  }

  v12 = v11 + v8;
  if (*(a1 + 16) < v11 + v8)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIBoundingPathBitmapDataRoundRect _UIBoundingPathBitmapDataCreateRoundRectWithCornerRadii(const _UIIntegralRect, const _UIIntegralCornerRadii)"}];
    [v23 handleFailureInFunction:v24 file:@"_UIBoundingPathBitmapDataCorner.m" lineNumber:216 description:{@"Rect width (%ld) is too narrow to fit corners (required width: %ld).", *(a1 + 16), v12}];

    v6 = v37;
    v9 = v28;
    v7 = v34;
    v10 = v31;
  }

  if (v6 <= v9)
  {
    v6 = v9;
  }

  if (v7 <= v10)
  {
    v7 = v10;
  }

  v13 = v6 + v7;
  if (*(a1 + 24) < (v6 + v7))
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIBoundingPathBitmapDataRoundRect _UIBoundingPathBitmapDataCreateRoundRectWithCornerRadii(const _UIIntegralRect, const _UIIntegralCornerRadii)"}];
    [v25 handleFailureInFunction:v26 file:@"_UIBoundingPathBitmapDataCorner.m" lineNumber:218 description:{@"Rect height (%ld) is too short to fit corners (required height: %ld).", *(a1 + 24), v13}];
  }

  v14 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v14;
  v15 = v37;
  *(a3 + 32) = v36;
  *(a3 + 48) = v15;
  v16 = v33;
  v17 = v34;
  *(a3 + 64) = v38;
  *(a3 + 80) = v16;
  v18 = v35;
  *(a3 + 96) = v17;
  *(a3 + 112) = v18;
  v19 = v31;
  v20 = v32;
  *(a3 + 128) = v30;
  *(a3 + 144) = v19;
  result = v29;
  v22 = v27;
  *(a3 + 192) = v28;
  *(a3 + 208) = result;
  *(a3 + 160) = v20;
  *(a3 + 176) = v22;
  return result;
}

void _UIBoundingPathBitmapDataFromDataWithRectAndRadii(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a2[3];
  v9 = *a2;
  v35 = a2[2];
  v10 = *a2 + v35 - *a1;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v13 = *(a2 + 1);
  v36 = *a2;
  v37 = v13;
  v14 = *(a3 + 16);
  v50 = *a3;
  v51 = v14;
  *&v15 = _UIBoundingPathBitmapDataCreateRoundRectWithCornerRadii(&v36, &v50, &v54).n128_u64[0];
  v16 = v9;
  v17 = 0;
  v18 = 0;
  if ((v16 & 0x8000000000000000) == 0 && v10 <= 0)
  {
    v19 = a2[1];
    if (v19 >= v12 + v11)
    {
      v17 = 0;
      v18 = 0;
    }

    else
    {
      v20 = (v11 - v19) & ~((v11 - v19) >> 63);
      v21 = v12 + v11 - v19 - v20;
      if (v21 >= (v8 - v20))
      {
        v21 = v8 - v20;
      }

      v22 = v57;
      if (v57 <= v66)
      {
        v22 = v66;
      }

      if (v20 < v22)
      {
        v21 = (v21 & ~(v21 >> 63)) + v20 - v22;
      }

      if (v20 <= v22)
      {
        v17 = v22;
      }

      else
      {
        v17 = v20;
      }

      if (v60 <= v63)
      {
        v23 = v63;
      }

      else
      {
        v23 = v60;
      }

      v24 = v8 - v23;
      if ((v21 & ~(v21 >> 63)) + v17 >= v24)
      {
        v21 = v24 - v17;
      }

      v18 = v21 & ~(v21 >> 63);
      if (v8 < v18)
      {
        v25 = v10;
        v26 = v16;
        v27 = [MEMORY[0x1E696AAA8] currentHandler];
        v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIBoundingPathBitmapData _UIBoundingPathBitmapDataFromDataWithRectAndRadii(const _UIBoundingPathBitmapData, const _UIIntegralRect, const _UIIntegralCornerRadii)"}];
        [v27 handleFailureInFunction:v28 file:@"_UIBoundingPathBitmapData.m" lineNumber:485 description:{@"Invalid skip region height %ld which exceeds bitmap height %ld", v18, v8}];

        v16 = v26;
        v10 = v25;
      }
    }
  }

  v29 = *(a1 + 40);
  if (v29)
  {
    v30 = 1;
  }

  else
  {
    v30 = v8 == v18;
  }

  if (v30)
  {
    v31 = *(a1 + 40);
  }

  else
  {
    v31 = 1;
  }

  if (v31 <= 2)
  {
    if (v16 < 0 || *a3 || *(a3 + 8))
    {
      if (v31 == 2)
      {
        v29 = 3;
        goto LABEL_40;
      }

      ++v31;
    }

    if (*(a3 + 16) == 0 && v10 <= 0)
    {
      v29 = v31;
    }

    else
    {
      v29 = v31 + 1;
    }
  }

LABEL_40:
  *a4 = v35;
  a4[1] = v8;
  v33 = v29 * (v8 - v18);
  a4[2] = v17;
  a4[3] = v18;
  a4[5] = 0;
  a4[6] = 0;
  a4[4] = 0;
  if (v33)
  {
    a4[4] = v33;
    a4[5] = v29;
    v34 = *(a1 + 16);
    v50 = *a1;
    v51 = v34;
    v52 = *(a1 + 32);
    v53 = *(a1 + 48);
    v46 = v64;
    v47 = v65;
    v48 = v66;
    v49 = v67;
    v42 = v60;
    v43 = v61;
    v44 = v62;
    v45 = v63;
    v38 = v56;
    v39 = v57;
    v40 = v58;
    v41 = v59;
    v36 = v54;
    v37 = v55;
    _createRowsNodes(&v50, &v36, -v16 & ~(-v16 >> 63), v10 & ~(v10 >> 63), a4);
  }

  v46 = v64;
  v47 = v65;
  v48 = v66;
  v49 = v67;
  v42 = v60;
  v43 = v61;
  v44 = v62;
  v45 = v63;
  v38 = v56;
  v39 = v57;
  v40 = v58;
  v41 = v59;
  v36 = v54;
  v37 = v55;
  _UIBoundingPathBitmapDataDestroyRoundRect(&v36);
}

void _createCornerWithRadius(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIBoundingPathBitmapDataCorner _createCornerWithRadius(const _UIBoundingPathBitmapDataCornerLocation, const NSInteger)"}];
    [v7 handleFailureInFunction:v8 file:@"_UIBoundingPathBitmapDataCorner.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"radius >= 0"}];
  }

  else if (!a3)
  {
    *(a1 + 40) = 0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2;
    return;
  }

  v6 = [_UICachedBoundingPathBitmapDataReferenceCorner cachedReferenceCornerForRadius:a3];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  if (v6)
  {
    v9 = v6;
    [v6 referenceCornerCopy];
    v6 = v9;
  }

  else
  {
    *(a1 + 40) = 0;
    *(a1 + 24) = 0uLL;
    *(a1 + 8) = 0uLL;
  }

  *a1 = a2;
}

void _UIBoundingPathBitmapDataDestroyRoundRect(_OWORD *a1)
{
  v2 = a1[3];
  v6 = a1[2];
  v7 = v2;
  v8 = a1[4];
  _UIBoundingPathBitmapDataDestroyCorner(&v6);
  v3 = a1[6];
  v6 = a1[5];
  v7 = v3;
  v8 = a1[7];
  _UIBoundingPathBitmapDataDestroyCorner(&v6);
  v4 = a1[9];
  v6 = a1[8];
  v7 = v4;
  v8 = a1[10];
  _UIBoundingPathBitmapDataDestroyCorner(&v6);
  v5 = a1[12];
  v6 = a1[11];
  v7 = v5;
  v8 = a1[13];
  _UIBoundingPathBitmapDataDestroyCorner(&v6);
}

void _UIBoundingPathBitmapDataDestroyCorner(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 && *(a1 + 32) != v2)
  {
    free(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    free(v3);
  }
}

void sub_188CA82CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCHHapticEngineClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCHHapticEngineClass_softClass;
  v7 = getCHHapticEngineClass_softClass;
  if (!getCHHapticEngineClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCHHapticEngineClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getCHHapticEngineClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_188CA85A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCHHapticEngineOptionKeyLocality()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCHHapticEngineOptionKeyLocalitySymbolLoc_ptr;
  v9 = getCHHapticEngineOptionKeyLocalitySymbolLoc_ptr;
  if (!getCHHapticEngineOptionKeyLocalitySymbolLoc_ptr)
  {
    v1 = CoreHapticsLibrary_0();
    v7[3] = dlsym(v1, "CHHapticEngineOptionKeyLocality");
    getCHHapticEngineOptionKeyLocalitySymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEngineOptionKey getCHHapticEngineOptionKeyLocality(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:28 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_188CA8704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *CoreHapticsLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreHapticsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreHapticsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71070E8;
    v6 = 0;
    CoreHapticsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreHapticsLibraryCore_frameworkLibrary;
  if (!CoreHapticsLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreHapticsLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:18 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *CoreHapticsLibrary_0()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreHapticsLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreHapticsLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7107D08;
    v6 = 0;
    CoreHapticsLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = CoreHapticsLibraryCore_frameworkLibrary_0;
  if (!CoreHapticsLibraryCore_frameworkLibrary_0)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreHapticsLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:18 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *CoreHapticsLibrary_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreHapticsLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreHapticsLibraryCore_block_invoke_3;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E711B5C8;
    v6 = 0;
    CoreHapticsLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = CoreHapticsLibraryCore_frameworkLibrary_1;
  if (!CoreHapticsLibraryCore_frameworkLibrary_1)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreHapticsLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:18 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

id _UICreateNotificationFeedbacksForTypes(void *a1)
{
  v117 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v102 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  obj = v1;
  v2 = [obj countByEnumeratingWithState:&v103 objects:v116 count:16];
  if (v2)
  {
    v3 = *v104;
    do
    {
      v4 = 0;
      do
      {
        if (*v104 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v103 + 1) + 8 * v4);
        v6 = [v5 integerValue];
        if (qword_1ED49A080 != -1)
        {
          dispatch_once(&qword_1ED49A080, &__block_literal_global_91);
        }

        if (v6 <= 1000)
        {
          if (v6)
          {
            if (v6 == 1)
            {
LABEL_15:
              v8 = +[_UIFeedbackPattern feedbackPattern];
              v21 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:29527 systemSoundID:_UISystemSoundIDNone];
              v22 = [v21 hapticParameters];
              LODWORD(v23) = 1063675494;
              [v22 setVolume:v23];

              [v8 addFeedback:v21 atTime:0.0];
              v24 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:26455 systemSoundID:_UISystemSoundIDNone];
              v25 = [v24 hapticParameters];
              LODWORD(v26) = 1063675494;
              [v25 setVolume:v26];

              [v8 addFeedback:v24 atTime:0.215];
            }

            else
            {
              if (v6 != 2)
              {
                goto LABEL_57;
              }

              v8 = +[_UIFeedbackPattern feedbackPattern];
              v9 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:29526 systemSoundID:_UISystemSoundIDNone];
              v10 = [v9 hapticParameters];
              LODWORD(v11) = 1062836634;
              [v10 setVolume:v11];

              [v8 addFeedback:v9 atTime:0.0];
              v12 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:29526 systemSoundID:_UISystemSoundIDNone];
              v13 = [v12 hapticParameters];
              LODWORD(v14) = 0.75;
              [v13 setVolume:v14];

              [v8 addFeedback:v12 atTime:0.1];
              v15 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:20311 systemSoundID:_UISystemSoundIDNone];
              v16 = [v15 hapticParameters];
              LODWORD(v17) = 1059481190;
              [v16 setVolume:v17];

              [v8 addFeedback:v15 atTime:0.2];
              v18 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:17239 systemSoundID:_UISystemSoundIDNone];
              v19 = [v18 hapticParameters];
              LODWORD(v20) = 0.75;
              [v19 setVolume:v20];

              [v8 addFeedback:v18 atTime:0.3];
            }
          }

          else
          {
            v8 = +[_UIFeedbackPattern feedbackPattern];
            v42 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:20311 systemSoundID:_UISystemSoundIDNone];
            v43 = [v42 hapticParameters];
            LODWORD(v44) = 1060320051;
            [v43 setVolume:v44];

            [v8 addFeedback:v42 atTime:0.0];
            v45 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:29526 systemSoundID:_UISystemSoundIDNone];
            v46 = [v45 hapticParameters];
            LODWORD(v47) = 1.0;
            [v46 setVolume:v47];

            [v8 addFeedback:v45 atTime:0.185];
          }
        }

        else
        {
          switch(v6)
          {
            case 1001:
              v7 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:0 systemSoundID:1102];
              goto LABEL_54;
            case 1002:
              v7 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:0 systemSoundID:1100];
              goto LABEL_54;
            case 1003:
              v7 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:0 systemSoundID:1106];
              goto LABEL_54;
            case 1004:
              v112 = 0;
              v113 = &v112;
              v114 = 0x2020000000;
              v35 = qword_1ED49A088;
              v115 = qword_1ED49A088;
              if (!qword_1ED49A088)
              {
                v107 = MEMORY[0x1E69E9820];
                v108 = 3221225472;
                v109 = __getCHHapticPatternLibraryKeyDeviceSilencedSymbolLoc_block_invoke;
                v110 = &unk_1E70F2F20;
                v111 = &v112;
                v36 = CoreHapticsLibrary();
                v37 = dlsym(v36, "CHHapticPatternLibraryKeyDeviceSilenced");
                *(v111[1] + 24) = v37;
                qword_1ED49A088 = *(v111[1] + 24);
                v35 = v113[3];
              }

              _Block_object_dispose(&v112, 8);
              if (v35)
              {
                goto LABEL_45;
              }

              v97 = [MEMORY[0x1E696AAA8] currentHandler];
              v98 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticPatternLibraryKey getCHHapticPatternLibraryKeyDeviceSilenced(void)"];
              [v97 handleFailureInFunction:v98 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:92 description:{@"%s", dlerror()}];

              goto LABEL_69;
            case 1005:
              if (_MergedGlobals_3_8 != 1)
              {
                goto LABEL_57;
              }

              v112 = 0;
              v113 = &v112;
              v114 = 0x2020000000;
              v35 = qword_1ED49A090;
              v115 = qword_1ED49A090;
              if (!qword_1ED49A090)
              {
                v107 = MEMORY[0x1E69E9820];
                v108 = 3221225472;
                v109 = __getCHHapticPatternLibraryKeyDeviceUnsilencedSymbolLoc_block_invoke;
                v110 = &unk_1E70F2F20;
                v111 = &v112;
                v60 = CoreHapticsLibrary();
                v61 = dlsym(v60, "CHHapticPatternLibraryKeyDeviceUnsilenced");
                *(v111[1] + 24) = v61;
                qword_1ED49A090 = *(v111[1] + 24);
                v35 = v113[3];
              }

              _Block_object_dispose(&v112, 8);
              if (!v35)
              {
                v99 = [MEMORY[0x1E696AAA8] currentHandler];
                v100 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticPatternLibraryKey getCHHapticPatternLibraryKeyDeviceUnsilenced(void)"];
                [v99 handleFailureInFunction:v100 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:93 description:{@"%s", dlerror()}];

LABEL_69:
                __break(1u);
              }

LABEL_45:
              v8 = [_UIFeedbackLibraryPattern feedbackPatternWithLibraryKey:*v35];
              [v8 setHapticOutputMode:3];
              break;
            case 1006:
              goto LABEL_15;
            case 1007:
              v8 = +[_UIFeedbackPattern feedbackPattern];
              v64 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:26453 systemSoundID:_UISystemSoundIDNone];
              v65 = [v64 hapticParameters];
              LODWORD(v66) = 1053609165;
              [v65 setVolume:v66];

              [v8 addFeedback:v64 atTime:0.0];
              [v8 addFeedback:v64 atTime:0.05];
              [v8 addFeedback:v64 atTime:0.1];
              [v8 addFeedback:v64 atTime:0.15];
              [v8 addFeedback:v64 atTime:0.2];
              v67 = [v64 hapticParameters];
              LODWORD(v68) = 1060320051;
              [v67 setVolume:v68];

              [v8 addFeedback:v64 atTime:0.25];
              [v8 addFeedback:v64 atTime:0.3];
              [v8 addFeedback:v64 atTime:0.35];

              break;
            case 1008:
              v7 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:0 systemSoundID:1360];
              goto LABEL_54;
            case 1009:
              v7 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:0 systemSoundID:1361];
              goto LABEL_54;
            case 1010:
              v40 = +[UIDevice currentDevice];
              v41 = [v40 userInterfaceIdiom] == 1;

              if (v41)
              {
                v7 = [_UIFeedbackBackBoardHIDPattern feedbackPatternWithName:0x1EFB492D0 deviceType:1];
                goto LABEL_54;
              }

              v8 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:11094 systemSoundID:_UISystemSoundIDNone];
              v91 = [v8 hapticParameters];
              LODWORD(v92) = 1060320051;
              [v91 setVolume:v92];

              [v8 setHapticOutputMode:5];
              break;
            case 1011:
              v8 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:8023 systemSoundID:_UISystemSoundIDNone];
              v74 = [v8 hapticParameters];
              LODWORD(v75) = 1055957975;
              [v74 setVolume:v75];

              [v8 setHapticOutputMode:5];
              break;
            case 1012:
              v33 = +[UIDevice currentDevice];
              v34 = [v33 userInterfaceIdiom] == 1;

              if (v34)
              {
                v7 = [_UIFeedbackBackBoardHIDPattern feedbackPatternWithName:0x1EFB492F0 deviceType:1];
                goto LABEL_54;
              }

              v8 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:8022 systemSoundID:_UISystemSoundIDNone];
              v83 = [v8 hapticParameters];
              LODWORD(v84) = 1058021569;
              [v83 setVolume:v84];

              [v8 setHapticOutputMode:5];
              break;
            case 1013:
              v38 = +[UIDevice currentDevice];
              v39 = [v38 userInterfaceIdiom] == 1;

              if (v39)
              {
                v7 = [_UIFeedbackBackBoardHIDPattern feedbackPatternWithName:0x1EFB49310 deviceType:1];
LABEL_54:
                v8 = v7;
              }

              else
              {
                v8 = +[_UIFeedbackPattern feedbackPattern];
                v85 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:11094 systemSoundID:_UISystemSoundIDNone];
                v86 = [v85 hapticParameters];
                LODWORD(v87) = 1057467924;
                [v86 setVolume:v87];

                [v85 setHapticOutputMode:5];
                [v8 addFeedback:v85 atTime:0.09];

                v88 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:11094 systemSoundID:_UISystemSoundIDNone];
                v89 = [v88 hapticParameters];
                LODWORD(v90) = 1055957975;
                [v89 setVolume:v90];

                [v88 setHapticOutputMode:5];
                [v8 addFeedback:v88 atTime:0.325];
              }

              break;
            case 1014:
              v7 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:0 systemSoundID:1161];
              goto LABEL_54;
            case 1015:
              v7 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:0 systemSoundID:1162];
              goto LABEL_54;
            case 1016:
              v8 = +[_UIFeedbackPattern feedbackPattern];
              v48 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:32555 systemSoundID:_UISystemSoundIDNone];
              v49 = [v48 audioParameters];
              LODWORD(v50) = 1032805417;
              [v49 setVolume:v50];

              v51 = [v48 audioParameters];
              LODWORD(v52) = 1061997773;
              [v51 setTransposition:v52];

              [v8 addFeedback:v48 atTime:0.0];
              v53 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:29527 systemSoundID:_UISystemSoundIDNone];
              [v8 addFeedback:v53 atTime:0.0];

              break;
            case 1017:
              v8 = +[_UIFeedbackPattern feedbackPattern];
              v27 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:32555 systemSoundID:_UISystemSoundIDNone];
              v28 = [v27 audioParameters];
              LODWORD(v29) = 1025758986;
              [v28 setVolume:v29];

              v30 = [v27 audioParameters];
              LODWORD(v31) = 1061997773;
              [v30 setTransposition:v31];

              [v8 addFeedback:v27 atTime:0.0];
              v32 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:29527 systemSoundID:_UISystemSoundIDNone];
              [v8 addFeedback:v32 atTime:0.0];

              break;
            case 1018:
              v8 = +[_UIFeedbackPattern feedbackPattern];
              v54 = [_UIDiscreteFeedback discreteFeedbackForType:8];
              v55 = [v54 hapticParameters];
              LODWORD(v56) = 1060320051;
              [v55 setVolume:v56];

              [v8 addFeedback:v54 atTime:0.0];
              [v8 addFeedback:v54 atTime:0.17];

              break;
            case 1019:
              v69 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
              v8 = +[_UIFeedbackPattern feedbackPattern];
              v70 = [v69 URLForResource:@"Single_0ms_S10-D52-D53-D54" withExtension:@"ahap"];
              v71 = [_UIFeedbackHapticFilePattern feedbackPatternFromFile:v70];
              [v8 addFeedback:v71 atTime:0.0];

              v72 = [v69 URLForResource:@"200312_ch_FPO-D52-D53-D54" withExtension:@"wav"];
              v73 = [_UIFeedbackAudioFilePattern feedbackPatternFromFile:v72];
              [v8 addFeedback:v73 atTime:0.0];

              break;
            case 1020:
              v76 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
              v8 = +[_UIFeedbackPattern feedbackPattern];
              v77 = [v76 URLForResource:@"Single_0ms_S10_charge_500ms-D52-D53-D54" withExtension:@"ahap"];
              v78 = [_UIFeedbackHapticFilePattern feedbackPatternFromFile:v77];
              [v8 addFeedback:v78 atTime:0.0];

              v79 = [v76 URLForResource:@"200312_ch_FPO-D52-D53-D54" withExtension:@"wav"];
              v80 = [_UIFeedbackAudioFilePattern feedbackPatternFromFile:v79];
              [v8 addFeedback:v80 atTime:0.0];

              v81 = [v76 URLForResource:@"connect_power-D52-D53-D54" withExtension:@"wav"];
              v82 = [_UIFeedbackAudioFilePattern feedbackPatternFromFile:v81];
              [v8 addFeedback:v82 atTime:0.624];

              break;
            case 1021:
              v57 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
              v8 = +[_UIFeedbackPattern feedbackPattern];
              v58 = [v57 URLForResource:@"MagSafe_Wallet_Detach" withExtension:@"ahap"];
              v59 = [_UIFeedbackHapticFilePattern feedbackPatternFromFile:v58];
              [v8 addFeedback:v59 atTime:0.0];

              break;
            case 1022:
              v112 = 0;
              v113 = &v112;
              v114 = 0x2020000000;
              v35 = qword_1ED49A098;
              v115 = qword_1ED49A098;
              if (!qword_1ED49A098)
              {
                v107 = MEMORY[0x1E69E9820];
                v108 = 3221225472;
                v109 = __getCHHapticPatternLibraryKeyHardwareButtonGenericToggleSymbolLoc_block_invoke;
                v110 = &unk_1E70F2F20;
                v111 = &v112;
                v62 = CoreHapticsLibrary();
                v63 = dlsym(v62, "CHHapticPatternLibraryKeyHardwareButtonGenericToggle");
                *(v111[1] + 24) = v63;
                qword_1ED49A098 = *(v111[1] + 24);
                v35 = v113[3];
              }

              _Block_object_dispose(&v112, 8);
              if (v35)
              {
                goto LABEL_45;
              }

              v95 = [MEMORY[0x1E696AAA8] currentHandler];
              v96 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticPatternLibraryKey getCHHapticPatternLibraryKeyHardwareButtonGenericToggle(void)"];
              [v95 handleFailureInFunction:v96 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:95 description:{@"%s", dlerror()}];

              goto LABEL_69;
            case 1023:
              v7 = [_UIFeedbackBackBoardHIDPattern feedbackPatternWithName:0x1EFB49250 deviceType:0];
              goto LABEL_54;
            case 1024:
              v7 = [_UIFeedbackBackBoardHIDPattern feedbackPatternWithName:0x1EFB49270 deviceType:0];
              goto LABEL_54;
            case 1025:
              v7 = [_UIFeedbackBackBoardHIDPattern feedbackPatternWithName:0x1EFB49290 deviceType:0];
              goto LABEL_54;
            case 1026:
              v7 = [_UIFeedbackBackBoardHIDPattern feedbackPatternWithName:0x1EFB492B0 deviceType:0];
              goto LABEL_54;
            default:
              goto LABEL_57;
          }
        }

        if (v8)
        {
          [v102 setObject:v8 forKey:v5];
        }

LABEL_57:
        ++v4;
      }

      while (v2 != v4);
      v93 = [obj countByEnumeratingWithState:&v103 objects:v116 count:16];
      v2 = v93;
    }

    while (v93);
  }

  return v102;
}