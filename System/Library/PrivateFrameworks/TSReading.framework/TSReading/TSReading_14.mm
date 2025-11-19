TSWPLineFragmentArray *TSWPLineFragmentArray::incrementStartCharIndexes(TSWPLineFragmentArray *this, uint64_t a2)
{
  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    do
    {
      v5 = *v2;
      v2 += 2;
      *v5 += a2;
      *(v5 + 16) += a2;
      this = [*(v5 + 184) adjustRangesByDelta:a2];
      *(v5 + 496) = *(v5 + 488);
    }

    while (v2 != v3);
  }

  return this;
}

void TSWPLineFragmentArray::offsetLineFragmentsBy(TSWPLineFragmentArray *this, CGPoint a2)
{
  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    y = a2.y;
    x = a2.x;
    do
    {
      v6 = *v2;
      v2 += 2;
      v7.x = x;
      v7.y = y;
      TSWPLineFragment::offsetBy(v6, v7);
    }

    while (v2 != v3);
  }
}

void TSWPLineFragmentArray::setStorage(TSWPLineFragmentArray *this, TSWPStorage *a2, uint64_t a3)
{
  v3 = *this;
  v4 = *(this + 1);
  if (*this != v4)
  {
    v7 = 0;
    do
    {
      v9 = *v3;
      v8 = v3[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v9 + 184) = 0;
      *v9 += a3;
      *(v9 + 16) += a3;
      [0 adjustRangesByDelta:a3];
      *(v9 + 496) = *(v9 + 488);
      v10 = *(v9 + 16);
      if (!v7 || v10)
      {
        v7 = -[TSWPStorage textSourceForLayoutInRange:](a2, "textSourceForLayoutInRange:", v10, [*(v9 + 512) length]);
      }

      *(v9 + 184) = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }

      v3 += 2;
    }

    while (v3 != v4);
  }
}

void sub_26C978D8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSWPLineFragmentArray::lineFragmentCountForBaseline(TSWPLineFragmentArray *this, double a2)
{
  v2 = *this;
  v3 = *(this + 1);
  if (*this == v3)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = *(*v2 + 32) + *(*v2 + 40);
    if (v5 == a2)
    {
      ++v4;
    }

    else if (v5 > a2)
    {
      return v4;
    }

    v2 += 16;
  }

  while (v2 != v3);
  return v4;
}

uint64_t TSWPLineFragmentArray::findLineIndexForCharIndex(TSWPLineFragmentArray *this, unint64_t a2)
{
  v2 = *(this + 1);
  v3 = v2 - *this + 16;
  while (v2 != *this)
  {
    v4 = *(v2 - 16);
    v2 -= 16;
    v3 -= 16;
    if (*v4 < a2)
    {
      return v3 >> 4;
    }
  }

  return 0;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TSWPLineFragment>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<TSWPLineFragment> *,std::shared_ptr<TSWPLineFragment> *,std::shared_ptr<TSWPLineFragment> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void TSWPChangeEnumerator::TSWPChangeEnumerator(TSWPChangeEnumerator *this, TSWPStorage *a2)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  v5.location = [(TSWPStorage *)a2 range];
  v5.length = v4;
  TSWPChangeEnumerator::setupWithStorageAndRange(this, a2, v5);
}

{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  v5.location = [(TSWPStorage *)a2 range];
  v5.length = v4;
  TSWPChangeEnumerator::setupWithStorageAndRange(this, a2, v5);
}

TSWPAttributeArray **TSWPChangeEnumerator::setupWithStorageAndRange(TSWPChangeEnumerator *this, TSWPStorage *a2, _NSRange a3)
{
  v16 = a3;
  v5 = [(TSWPStorage *)a2 insertionChangesTable];
  if (v5)
  {
    v6 = v5;
    TSWPAttributeArray::begin(v5, &v16, &v14);
    v7 = v15;
    *this = v14;
    *(this + 1) = v7;
    TSWPAttributeArray::end(v6, &v16, &v14);
    v8 = v15;
    *(this + 2) = v14;
    *(this + 3) = v8;
  }

  v9 = [(TSWPStorage *)a2 deletionChangesTable];
  if (v9)
  {
    v10 = v9;
    TSWPAttributeArray::begin(v9, &v16, &v14);
    v11 = v15;
    *(this + 4) = v14;
    *(this + 5) = v11;
    TSWPAttributeArray::end(v10, &v16, &v14);
    v12 = v15;
    *(this + 6) = v14;
    *(this + 7) = v12;
  }

  return TSWPChangeEnumerator::advanceToNonNilObject(this);
}

void TSWPChangeEnumerator::TSWPChangeEnumerator(TSWPChangeEnumerator *this, TSWPStorage *a2, _NSRange a3)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  TSWPChangeEnumerator::setupWithStorageAndRange(this, a2, a3);
}

{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  TSWPChangeEnumerator::setupWithStorageAndRange(this, a2, a3);
}

TSWPChangeEnumerator *TSWPChangeEnumerator::operator++(TSWPChangeEnumerator *a1)
{
  v2 = TSWPChangeEnumerator::iter(a1);
  if (v2)
  {
    v2[1] = (v2[1] + 1);
    TSWPChangeEnumerator::advanceToNonNilObject(a1);
  }

  return a1;
}

TSWPAttributeArray **TSWPChangeEnumerator::iter(TSWPChangeEnumerator *this)
{
  if (*(this + 1) == *(this + 3))
  {
    v1 = 0;
  }

  else
  {
    v1 = this;
  }

  v2 = *(this + 5);
  if (v2 == *(this + 7))
  {
    return v1;
  }

  v3 = this;
  v4 = (this + 32);
  if (!v1)
  {
    return v4;
  }

  v5 = TSWPAttributeArray::charIndexForAttributeIndex(*v4, v2);
  if (v5 < TSWPAttributeArray::charIndexForAttributeIndex(*v1, *(v1 + 1)))
  {
    return v4;
  }

  return v3;
}

TSWPAttributeArray **TSWPChangeEnumerator::advanceToNonNilObject(TSWPChangeEnumerator *this)
{
  for (i = this; ; this = i)
  {
    result = TSWPChangeEnumerator::iter(this);
    if (!result)
    {
      break;
    }

    v3 = result[1];
    if (*((*result)->var4 + 2 * v3 + 1))
    {
      break;
    }

    result[1] = (&v3->var0 + 1);
  }

  return result;
}

TSWPAttributeArray **TSWPChangeEnumerator::change(TSWPChangeEnumerator *this)
{
  result = TSWPChangeEnumerator::iter(this);
  if (result)
  {
    return *((*result)->var4 + 2 * result[1] + 1);
  }

  return result;
}

uint64_t TSWPChangeEnumerator::changeRange(TSWPChangeEnumerator *this)
{
  v1 = TSWPChangeEnumerator::iter(this);
  if (!v1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v2 = v1[1];
  v3 = *v1;

  return TSWPAttributeArray::rangeForAttributeIndex(v3, v2);
}

uint64_t TSWPChangeEnumerator::changeIsHidden(TSWPChangeEnumerator *this)
{
  v1 = TSWPChangeEnumerator::iter(this);
  if (v1)
  {
    v1 = *((*v1)->var4 + 2 * v1[1] + 1);
  }

  return [v1 isHidden];
}

uint64_t TSWPChangeEnumerator::changeIsDeletion(TSWPChangeEnumerator *this)
{
  v1 = TSWPChangeEnumerator::iter(this);
  if (v1)
  {
    v1 = *((*v1)->var4 + 2 * v1[1] + 1);
  }

  return [v1 isDeletion];
}

NSUInteger NSIntersectionRangeWithEdge(_NSRange a1, _NSRange a2, int a3)
{
  length = a2.length;
  location = a2.location;
  v6 = a1.length;
  v7 = a1.location;
  v8 = NSIntersectionRange(a1, a2);
  if (length)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v7 | location)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  if (v8 == 0uLL)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8.location;
  }

  if (location + length == v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (v7 + v6 == location)
  {
    v14 = location;
  }

  else
  {
    v14 = v13;
  }

  if (a3)
  {
    return v14;
  }

  else
  {
    return v12;
  }
}

uint64_t TSWPRangeVector::characterCount(TSWPRangeVector *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (this->__begin_ == end)
  {
    return 0;
  }

  result = 0;
  do
  {
    result += begin->length;
    ++begin;
  }

  while (begin != end);
  return result;
}

uint64_t TSWPRangeVector::containsCharacterAtIndex(TSWPRangeVector *this, NSUInteger a2, int a3)
{
  end = this->__end_;
  if (end != this->__begin_)
  {
    v4 = end - this->__begin_;
    end = this->__begin_;
    do
    {
      v5 = v4 >> 1;
      v6 = &end[v4 >> 1];
      location = v6->location;
      v7 = v6 + 1;
      v4 += ~(v4 >> 1);
      if (location > a2)
      {
        v4 = v5;
      }

      else
      {
        end = v7;
      }
    }

    while (v4);
  }

  if (end == this->__begin_)
  {
    return 0;
  }

  v9 = end[-1].location;
  length = end[-1].length;
  if (a2 >= v9 && a2 - v9 < length)
  {
    return 1;
  }

  result = 0;
  if (a3)
  {
    if (length + v9 == a2)
    {
      return 1;
    }
  }

  return result;
}

BOOL TSWPRangeVector::containsRange(TSWPRangeVector *this, const _NSRange *a2)
{
  location = a2->location;
  v5 = TSWPRangeVector::rangeContainingPosition(this, a2->location, 0);
  result = 0;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL && v5 <= location)
  {
    return v5 + v4 >= a2->length + location;
  }

  return result;
}

NSUInteger TSWPRangeVector::rangeContainingPosition(TSWPRangeVector *this, NSUInteger a2, unsigned __int8 a3)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != this->__begin_)
  {
    v5 = end - this->__begin_;
    end = this->__begin_;
    do
    {
      v6 = v5 >> 1;
      v7 = &end[v5 >> 1];
      location = v7->location;
      v8 = v7 + 1;
      v5 += ~(v5 >> 1);
      if (location > a2)
      {
        v5 = v6;
      }

      else
      {
        end = v8;
      }
    }

    while (v5);
  }

  result = *MEMORY[0x277D6C268];
  if (begin != end)
  {
    v11 = end[-1].location;
    length = end[-1].length;
    if (((a2 == v11) & a3) != 0)
    {
      v13 = *MEMORY[0x277D6C268];
    }

    else
    {
      v13 = v11;
    }

    v15 = a2 >= v11;
    v14 = a2 - v11;
    v15 = !v15 || v14 >= length;
    if (!v15)
    {
      return v13;
    }
  }

  return result;
}

BOOL TSWPRangeVector::hasExactRange(TSWPRangeVector *this, const _NSRange *a2)
{
  location = a2->location;
  v5 = TSWPRangeVector::rangeContainingPosition(this, a2->location, 0);
  result = 0;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return location == v5 && a2->length == v4;
  }

  return result;
}

BOOL TSWPRangeVector::intersectsRange(TSWPRangeVector *this, const _NSRange *a2)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end == this->__begin_)
  {
    v6 = this->__end_;
  }

  else
  {
    v5 = end - this->__begin_;
    v6 = this->__begin_;
    do
    {
      v7 = v5 >> 1;
      p_location = &v6[v5 >> 1].location;
      v10 = *p_location;
      v9 = (p_location + 2);
      v5 += ~(v5 >> 1);
      if (a2->location < v10)
      {
        v5 = v7;
      }

      else
      {
        v6 = v9;
      }
    }

    while (v5);
    if (v6 != end && NSIntersectionRange(*a2, *v6).length)
    {
      return 1;
    }
  }

  return v6 != begin && NSIntersectionRange(*a2, *(v6 - 16)).length != 0;
}

uint64_t TSWPRangeVector::indexForRange(TSWPRangeVector *this, _NSRange a2)
{
  end = this->__end_;
  if (end != this->__begin_)
  {
    v3 = end - this->__begin_;
    begin = this->__begin_;
    do
    {
      v5 = v3 >> 1;
      v6 = &begin[v3 >> 1];
      location = v6->location;
      v7 = v6 + 1;
      v3 += ~(v3 >> 1);
      if (location < a2.location)
      {
        begin = v7;
      }

      else
      {
        v3 = v5;
      }
    }

    while (v3);
    if (begin != end)
    {
      if (begin->location == a2.location)
      {
        end = &begin[a2.length < begin->length];
      }

      else
      {
        end = begin;
      }
    }
  }

  return end - this->__begin_;
}

TSWPRangeVector *TSWPRangeVector::addRange(TSWPRangeVector *this, __n128 *a2)
{
  if (a2->n128_u64[0] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v39 = v2;
    v40 = v3;
    v4 = this;
    begin = this->__begin_;
    end = this->__end_;
    if (this->__begin_ != end)
    {
      if (!a2->n128_u64[1])
      {
        return this;
      }

      v38 = *a2;
      length = v38.length;
      location = v38.location;
      v9 = end - begin;
      v10 = begin;
      do
      {
        v11 = v9 >> 1;
        v12 = &v10[v9 >> 1];
        v14 = v12->location;
        v13 = v12 + 1;
        v9 += ~(v9 >> 1);
        if (v14 < v38.location)
        {
          v10 = v13;
        }

        else
        {
          v9 = v11;
        }
      }

      while (v9);
      if (end == v10)
      {
        v21 = 0;
        v16 = end;
      }

      else
      {
        v15 = end - v10;
        v16 = v10;
        do
        {
          v17 = v15 >> 1;
          p_location = &v16[v15 >> 1].location;
          v20 = *p_location;
          v19 = (p_location + 2);
          v15 += ~(v15 >> 1);
          if (v20 < v38.length + v38.location)
          {
            v16 = v19;
          }

          else
          {
            v15 = v17;
          }
        }

        while (v15);
        if (NSIntersectionRangeWithEdge(v38, *v10, 1) == 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = 0;
        }

        else
        {
          v26 = NSUnionRange(v38, *v10);
          location = v26.location;
          length = v26.length;
          v38 = v26;
          v21 = 1;
        }
      }

      if (v10 == begin)
      {
        v10 = begin;
      }

      else
      {
        v41.location = location;
        v41.length = length;
        if (NSIntersectionRangeWithEdge(v41, v10[-1], 1) != 0x7FFFFFFFFFFFFFFFLL)
        {
          v45 = v10[-1];
          --v10;
          v42.location = location;
          v42.length = length;
          v27 = NSUnionRange(v42, v45);
          location = v27.location;
          length = v27.length;
          v38 = v27;
          v21 = 1;
        }
      }

      v28 = v16 != begin && v16 == end;
      v29 = 0xFFFFFFFFFFFFFFFLL;
      if (!v28)
      {
        v29 = 0;
      }

      v30 = &v16[v29];
      if (&v16[v29] == end || (v43.location = location, v43.length = length, NSIntersectionRangeWithEdge(v43, *v30, 1) == 0x7FFFFFFFFFFFFFFFLL))
      {
        if ((v21 & 1) == 0)
        {
          return std::vector<_NSRange>::insert(v4, v10, &v38);
        }
      }

      else
      {
        v46 = *v30++;
        v44.location = location;
        v44.length = length;
        v38 = NSUnionRange(v44, v46);
      }

      if (v10 >= v30)
      {
        if (v30 < v10)
        {
          v35 = v4->__end_;
          v36 = v35 - v10;
          if (v35 != v10)
          {
            memmove(v30, v10, v35 - v10);
          }

          v4->__end_ = (v30 + v36);
          v10 = v30;
          return std::vector<_NSRange>::insert(v4, v10, &v38);
        }

        if (v10 == end)
        {
          v10 = end;
          return std::vector<_NSRange>::insert(v4, v10, &v38);
        }

        v34 = v10 + 1;
        v37 = v4->__end_;
        v32 = v37 - &v10[1];
        if (v37 != &v10[1])
        {
          v33 = v10;
          goto LABEL_51;
        }
      }

      else
      {
        v31 = v4->__end_;
        v32 = v31 - v30;
        if (v31 != v30)
        {
          v33 = v10;
          v34 = v30;
LABEL_51:
          memmove(v33, v34, v32);
        }
      }

      v4->__end_ = (v10 + v32);
      return std::vector<_NSRange>::insert(v4, v10, &v38);
    }

    cap = this->__cap_;
    if (begin >= cap)
    {
      v23 = cap - begin;
      v24 = v23 >> 3;
      if ((v23 >> 3) <= 1)
      {
        v24 = 1;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF0)
      {
        v25 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<CGPoint>>(this, v25);
    }

    *end = *a2;
    this->__end_ = end + 1;
  }

  return this;
}

__n128 *std::vector<_NSRange>::insert(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CGPoint>>(a1, v14);
    }

    v26 = 0;
    v27 = 16 * v15;
    v28 = (16 * v15);
    std::__split_buffer<_NSRange>::emplace_back<_NSRange const&>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 1;
      *v6 = v6[-1];
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1], __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_26C97A114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL TSWPRangeVector::removeRange(TSWPRangeVector *this, const _NSRange *a2)
{
  begin = this->__begin_;
  end = this->__end_;
  location = a2->location;
  length = a2->length;
  if (end == this->__begin_)
  {
    v9 = this->__end_;
    v19 = v9;
    v14 = v9;
  }

  else
  {
    v7 = end - this->__begin_;
    v8 = v7;
    v9 = this->__begin_;
    do
    {
      v10 = v8 >> 1;
      v11 = &v9[v8 >> 1];
      v13 = v11->location;
      v12 = v11 + 1;
      v8 += ~(v8 >> 1);
      if (v13 > location)
      {
        v8 = v10;
      }

      else
      {
        v9 = v12;
      }
    }

    while (v8);
    v14 = this->__begin_;
    do
    {
      v15 = v7 >> 1;
      v16 = &v14[v7 >> 1];
      v18 = v16->location;
      v17 = v16 + 1;
      v7 += ~(v7 >> 1);
      if (v18 < length + location)
      {
        v14 = v17;
      }

      else
      {
        v7 = v15;
      }
    }

    while (v7);
    v19 = v9;
  }

  if (v9 == begin)
  {
    result = 0;
  }

  else
  {
    v20 = v19[-1].n128_u64[0];
    v21 = v19[-1].n128_u64[1];
    v22 = location - v20;
    v23 = location < v20 || v22 >= v21;
    if (v23)
    {
      result = 0;
    }

    else
    {
      result = location != v20;
      if (location == v20)
      {
        --v9;
        v25 = a2->location;
      }

      else
      {
        v19[-1].n128_u64[1] = v22;
        v25 = a2->location;
        length = a2->length;
      }

      v26 = length + v25;
      if (length + v25 >= v20 && length + v25 - v20 < v21)
      {
        v41 = v21 + v20;
        if (v26 <= v21 + v20)
        {
          v42 = v21 + v20;
        }

        else
        {
          v42 = length + v25;
        }

        if (v26 < v21 + v20)
        {
          v41 = length + v25;
        }

        v43.location = v41;
        v43.length = v42 - v41;
        if (location == v20)
        {
          *v9 = v43;
        }

        else
        {
          std::vector<_NSRange>::insert(this, v19, &v43);
        }

        return 1;
      }

      location = v25;
    }

    begin = v9;
  }

  if (end != v14)
  {
    v28 = v14->location;
    v29 = v14->length;
    v30 = length + location;
    v23 = length + location >= v14->location;
    v31 = length + location - v14->location;
    if (v31 != 0 && v23 && v31 < v29)
    {
      if (v30 <= v29 + v28)
      {
        v33 = v29 + v28;
      }

      else
      {
        v33 = v30;
      }

      if (v30 >= v29 + v28)
      {
        v30 = v29 + v28;
      }

      v14->location = v30;
      v14->length = v33 - v30;
      result = 1;
    }
  }

  if (begin != v14)
  {
    v34 = v14[-1].location;
    v35 = v14[-1].length;
    v36 = a2->length + a2->location;
    if (v36 >= v34 && v36 - v34 < v35)
    {
      v38 = v35 + v34;
      if (v36 <= v38)
      {
        v39 = v38;
      }

      else
      {
        v39 = a2->length + a2->location;
      }

      if (v36 < v38)
      {
        v38 = a2->length + a2->location;
      }

      v14[-1].location = v38;
      v14[-1].length = v39 - v38;
      --v14;
    }

    if (begin != v14)
    {
      v40 = end - v14;
      if (end != v14)
      {
        memmove(begin, v14, end - v14);
      }

      this->__end_ = (begin + v40);
    }

    return 1;
  }

  return result;
}

TSWPRangeVector *TSWPRangeVector::removeCharacterAtIndex(TSWPRangeVector *this, unint64_t a2)
{
  end = this->__end_;
  v3 = end - this->__begin_;
  if (end != this->__begin_)
  {
    v5 = this;
    v6 = v3 >> 4;
    v7 = a2 + 1;
    v8 = (this->__begin_ - end);
    do
    {
      begin = v5->__begin_;
      v10 = (v5->__begin_ + v3);
      v11 = v10[-1].n128_u64[0];
      v12 = v10[-1].n128_u64[1];
      v13 = a2 - v11;
      if (a2 >= v11 && v13 < v12)
      {
        v15 = v12 + v11;
        v21.n128_u64[0] = v7;
        v21.n128_u64[1] = v15 - v7;
        if (a2 == v11)
        {
          if (v15 == v7)
          {
            v16 = (begin + v3);
            v17 = &begin[-1] + v3;
            v18 = v5->__end_;
            v19 = v18 - begin;
            v20 = &v8[v19];
            if (v16 != v18)
            {
              this = memmove(v17, v16, &v8[v19]);
            }

            v5->__end_ = &v20[v17];
          }

          else
          {
            v10[-1] = v21;
          }
        }

        else
        {
          v10[-1].n128_u64[0] = v11;
          v10[-1].n128_u64[1] = v13;
          if (v21.n128_u64[1])
          {
            this = std::vector<_NSRange>::insert(v5, (begin + v3), &v21);
          }
        }
      }

      v3 -= 16;
      v8 += 16;
      --v6;
    }

    while (v6);
  }

  return this;
}

TSWPRangeVector *TSWPRangeVector::insertedTextAtIndex(TSWPRangeVector *this, NSUInteger a2, uint64_t a3)
{
  v3 = this->__end_ - this->__begin_;
  if (v3)
  {
    v4 = v3 >> 4;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    p_length = &this->__begin_->length;
    do
    {
      v6 = *(p_length - 1);
      if (*p_length + v6 >= a2)
      {
        if (v6 <= a2)
        {
          v7 = a3;
        }

        else
        {
          v7 = 0;
        }

        v8 = v7 + *p_length;
        if (v6 <= a2)
        {
          v9 = 0;
        }

        else
        {
          v9 = a3;
        }

        *(p_length - 1) = v9 + v6;
        *p_length = v8;
      }

      p_length += 2;
      --v4;
    }

    while (v4);
  }

  return this;
}

TSWPRangeVector *TSWPRangeVector::insertGapAtIndex(TSWPRangeVector *this, NSUInteger a2, uint64_t a3)
{
  v5 = this->__end_ - this->__begin_;
  if (v5)
  {
    v19 = v3;
    v20 = v4;
    v8 = this;
    v9 = 0;
    v10 = v5 >> 4;
    v11 = a3 + a2;
    do
    {
      begin = v8->__begin_;
      v13 = &v8->__begin_[v9];
      location = v13->location;
      v15 = v13->length + v13->location;
      v16 = v15 > a2;
      v17 = v15 - a2;
      if (v16)
      {
        if (a2 <= location)
        {
          v13->location = location + a3;
        }

        else
        {
          v18.n128_u64[0] = v11;
          v18.n128_u64[1] = v17;
          v13->location = location;
          v13->length = a2 - location;
          this = std::vector<_NSRange>::insert(v8, &begin[++v9], &v18);
          ++v10;
        }
      }

      ++v9;
    }

    while (v9 < v10);
  }

  return this;
}

TSWPRangeVector *TSWPRangeVector::deletedTextAtRange(TSWPRangeVector *this, const _NSRange *a2)
{
  end = this->__end_;
  if (end != this->__begin_)
  {
    v4 = this;
    v5 = 0;
    v6 = end - this->__begin_;
    do
    {
      v7 = &v4->__begin_[v5];
      location = v7->location;
      length = v7->length;
      v10 = length + v7->location;
      v11 = a2->location;
      if (v10 > a2->location)
      {
        v12 = a2->length;
        v13 = v12 + v11;
        if (v11 > location)
        {
          ++v5;
          if (v10 <= v13)
          {
            v7->length = v11 - location;
          }

          else
          {
            v7->length = length - v12;
          }

          continue;
        }

        v16 = v10 > v13;
        v14 = v10 - v13;
        if (!v16)
        {
          goto LABEL_25;
        }

        v15 = location - v12;
        v16 = v13 > location;
        if (v13 <= location)
        {
          v17 = v15;
        }

        else
        {
          v17 = a2->location;
        }

        if (v16)
        {
          length = v14;
        }

        if (v5)
        {
          v18 = v7[-1].location;
          if (v17 <= v7[-1].length + v18)
          {
            v19 = v17 + length;
            if (v18 <= v19)
            {
              v20 = v19;
            }

            else
            {
              v20 = v7[-1].location;
            }

            if (v18 < v19)
            {
              v19 = v7[-1].location;
            }

            v7[-1].location = v19;
            v7[-1].length = v20 - v19;
LABEL_25:
            v21 = end - &v7[1];
            if (end != &v7[1])
            {
              this = memmove(v7, &v7[1], end - &v7[1]);
            }

            end = (v7 + v21);
            v4->__end_ = (v7 + v21);
            --v6;
            continue;
          }
        }

        v7->location = v17;
        v7->length = length;
      }

      ++v5;
    }

    while (v5 < v6);
  }

  return this;
}

TSWPRangeVector *TSWPRangeVector::replacedTextAtRange(TSWPRangeVector *this, const _NSRange *a2, uint64_t a3)
{
  end = this->__end_;
  if (end != this->__begin_)
  {
    v6 = this;
    v7 = 0;
    v8 = end - this->__begin_;
    do
    {
      v9 = &v6->__begin_[v7];
      location = v9->location;
      length = v9->length;
      v12 = length + v9->location;
      v13 = a2->location;
      if (v12 >= a2->location)
      {
        v14 = a2->length;
        v15 = v14 + v13;
        if (v13 > location)
        {
          if (v15 >= v12)
          {
            v9->length = v13 - location;
            goto LABEL_16;
          }

          length = length - v14 + a3;
          goto LABEL_12;
        }

        if (v15 < v12)
        {
          v16 = v12 + a3 - v15;
          v17 = location + a3 - v14;
          if (v15 > location)
          {
            length = v16;
          }

          else
          {
            v13 = v17;
          }

          v9->location = v13;
LABEL_12:
          v9->length = length;
          goto LABEL_16;
        }

        if (!a3)
        {
          v18 = end - &v9[1];
          if (end != &v9[1])
          {
            this = memmove(&v6->__begin_[v7], &v9[1], end - &v9[1]);
          }

          end = (v9 + v18);
          v6->__end_ = (v9 + v18);
          --v8;
          continue;
        }

        v9->location = v13;
        v9->length = a3;
      }

LABEL_16:
      ++v7;
    }

    while (v7 < v8);
  }

  return this;
}

NSUInteger TSWPRangeVector::changedRange(TSWPRangeVector *this, _NSRange a2, uint64_t a3)
{
  v3 = *MEMORY[0x277D6C268];
  length = *(MEMORY[0x277D6C268] + 8);
  if (a3)
  {
    end = this->__end_;
    v7 = end - this->__begin_;
    if (end != this->__begin_)
    {
      location = a2.location;
      v9 = a2.length - a3 + a2.location;
      v10 = (v7 >> 4) - 1;
      v11 = (this->__begin_ - end);
      do
      {
        begin = this->__begin_;
        v13 = this->__begin_ + v7;
        v14 = *(v13 - 2);
        if (*(v13 - 1) + v14 <= location)
        {
          break;
        }

        if (v14 >= v9)
        {
          *(v13 - 2) = v14 + a3;
        }

        else
        {
          v15 = (begin + v7);
          v16 = &begin[-1] + v7;
          v17 = this->__end_;
          v18 = v17 - begin;
          v19 = &v11[v18];
          if (v15 != v17)
          {
            memmove(v16, v15, &v11[v18]);
          }

          this->__end_ = &v19[v16];
          if (v3 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v3 = v10;
            length = 1;
          }

          else
          {
            v23.location = v3;
            v23.length = length;
            v24.location = v10;
            v24.length = 1;
            v20 = NSUnionRange(v23, v24);
            v3 = v20.location;
            length = v20.length;
          }
        }

        --v10;
        v7 -= 16;
        v11 += 16;
      }

      while (v10 != -1);
    }
  }

  return v3;
}

TSWPRangeVector *TSWPRangeVector::unionWith(TSWPRangeVector *this, const TSWPRangeVector *a2)
{
  v2 = a2->__end_ - a2->__begin_;
  if (v2)
  {
    v4 = this;
    v5 = 0;
    v6 = v2 >> 4;
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    do
    {
      this = TSWPRangeVector::addRange(v4, &a2->__begin_[v5++]);
      --v7;
    }

    while (v7);
  }

  return this;
}

TSWPRangeVector *TSWPRangeVector::intersection@<X0>(TSWPRangeVector *this@<X0>, TSWPRangeVector *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__cap_ = 0;
  begin = this->__begin_;
  end = this->__end_;
  if (this->__begin_ != end)
  {
    v6 = v5;
    this = *v5;
    v8 = *(v5 + 8);
    do
    {
      v13 = NSIntersectionRange(*&this, *begin);
      if (v13.length)
      {
        TSWPRangeVector::addRange(a2, &v13);
      }

      this = *v6;
      v9 = *(v6 + 8);
      location = begin->location;
      length = begin->length;
      ++begin;
    }

    while (v9 + *v6 >= length + location && begin != end);
  }

  return this;
}

void sub_26C97A990(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

TSWPRangeVector *TSWPRangeVector::rangesIntersecting@<X0>(TSWPRangeVector *this@<X0>, TSWPRangeVector *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__cap_ = 0;
  begin = this->__begin_;
  end = this->__end_;
  if (this->__begin_ != end)
  {
    v6 = v5;
    this = *v5;
    v8 = *(v5 + 8);
    do
    {
      if (NSIntersectionRange(*&this, *begin).length)
      {
        TSWPRangeVector::addRange(a2, begin);
      }

      this = *v6;
      v9 = *(v6 + 8);
      v10 = begin->n128_u64[0];
      v11 = begin->n128_u64[1];
      ++begin;
    }

    while (v9 + *v6 >= v11 + v10 && begin != end);
  }

  return this;
}

void sub_26C97AA24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void TSWPRangeVector::intersectWith(TSWPRangeVector *this, const _NSRange *a2)
{
  if (this->__begin_ != this->__end_)
  {
    TSWPRangeVector::intersection(this, &v3);
    std::vector<CGPoint>::vector[abi:nn200100](&__p, this);
    if (&v3 != this)
    {
      std::vector<_NSRange>::__assign_with_size[abi:nn200100]<_NSRange*,_NSRange*>(this, v3.__begin_, v3.__end_, v3.__end_ - v3.__begin_);
    }

    std::vector<_NSRange>::__assign_with_size[abi:nn200100]<_NSRange*,_NSRange*>(&v3, __p, v5, (v5 - __p) >> 4);
    if (__p)
    {
      v5 = __p;
      operator delete(__p);
    }

    if (v3.__begin_)
    {
      v3.__end_ = v3.__begin_;
      operator delete(v3.__begin_);
    }
  }
}

void sub_26C97AADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TSWPRangeVector::intersectWith(TSWPRangeVector *this, const TSWPRangeVector *a2)
{
  memset(&v18, 0, sizeof(v18));
  v3 = this->__end_ - this->__begin_;
  if (v3)
  {
    v5 = a2->__end_ - a2->__begin_;
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v16 = v5 >> 4;
      v8 = *this->__begin_;
      v9 = (v3 >> 4) - 1;
      do
      {
        v10 = &a2->__begin_[v7];
        location = v10->location;
        length = v10->length;
        v13 = length + v10->location;
        while (1)
        {
          v14 = v8.location;
          v17 = v8;
          v15 = v8.length;
          v20.location = location;
          v20.length = length;
          __p = NSIntersectionRange(v20, v8);
          if (__p.length)
          {
            TSWPRangeVector::addRange(&v18, &__p);
          }

          if (v13 < v15 + v14)
          {
            break;
          }

          if (v9 == v6)
          {
            goto LABEL_11;
          }

          v8 = this->__begin_[++v6];
        }

        ++v7;
        v8 = v17;
      }

      while (v7 < v16);
    }
  }

LABEL_11:
  std::vector<CGPoint>::vector[abi:nn200100](&__p, this);
  if (&v18 != this)
  {
    std::vector<_NSRange>::__assign_with_size[abi:nn200100]<_NSRange*,_NSRange*>(this, v18.__begin_, v18.__end_, v18.__end_ - v18.__begin_);
  }

  std::vector<_NSRange>::__assign_with_size[abi:nn200100]<_NSRange*,_NSRange*>(&v18, __p.location, __p.length, (__p.length - __p.location) >> 4);
  if (__p.location)
  {
    __p.length = __p.location;
    operator delete(__p.location);
  }

  if (v18.__begin_)
  {
    v18.__end_ = v18.__begin_;
    operator delete(v18.__begin_);
  }
}

void sub_26C97AC78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TSWPRangeVector::diff(TSWPRangeVector *this, const TSWPRangeVector *a2)
{
  std::vector<CGPoint>::vector[abi:nn200100](&__p, this);
  TSWPRangeVector::intersectWith(&__p, a2);
  TSWPRangeVector::unionWith(this, a2);
  begin = __p.__begin_;
  if (__p.__end_ != __p.__begin_)
  {
    v5 = 0;
    if ((__p.__end_ - __p.__begin_) <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = __p.__end_ - __p.__begin_;
    }

    do
    {
      TSWPRangeVector::removeRange(this, &__p.__begin_[v5++]);
      --v6;
    }

    while (v6);
    begin = __p.__begin_;
  }

  if (begin)
  {
    __p.__end_ = begin;
    operator delete(begin);
  }
}

void sub_26C97AD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSWPRangeVector::subtract(TSWPRangeVector *this, const TSWPRangeVector *a2)
{
  if (this->__end_ == this->__begin_ || (v3 = a2->__end_ - a2->__begin_) == 0)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = v3 >> 4;
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    do
    {
      v6 |= TSWPRangeVector::removeRange(this, &a2->__begin_[v5++]);
      --v8;
    }

    while (v8);
  }

  return v6 & 1;
}

void *TSWPRangeVector::description(TSWPRangeVector *this)
{
  v2 = [MEMORY[0x277CCAB68] stringWithFormat:@"<TSWPRangeVector %p> RangeCount: %ld {", this, this->__end_ - this->__begin_];
  begin = this->__begin_;
  end = this->__end_;
  while (begin != end)
  {
    v6 = *begin++;
    [v2 appendString:NSStringFromRange(v6)];
  }

  [v2 appendString:@"}"];
  return v2;
}

uint64_t TSWPRangeVector::shortDescription(TSWPRangeVector *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (this->__begin_ == end)
  {
    location = 0;
    v5 = 0;
  }

  else
  {
    location = begin->location;
    v5 = end[-1].length + end[-1].location;
  }

  v6 = end - begin;
  if (location <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = location;
  }

  if (location >= v5)
  {
    v8.location = v5;
  }

  else
  {
    v8.location = location;
  }

  v8.length = v7 - v8.location;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"<TSWPRangeVector %p> count: %ld super: %@", this, v6, NSStringFromRange(v8)];
}

__n128 std::__split_buffer<_NSRange>::emplace_back<_NSRange const&>(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 3;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<CGPoint>>(a1[4], v11);
    }

    v7 = ((v6 >> 4) + 1) / -2;
    v8 = ((v6 >> 4) + 1) / 2;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = (v9 + v10);
    a1[1] = &v5[v7];
    a1[2] = (v9 + v10);
  }

  result = *a2;
  *v4 = *a2;
  ++a1[2];
  return result;
}

void TSWPChangeAttributeArray::TSWPChangeAttributeArray(uint64_t a1, int a2)
{
  TSWPAttributeArray::TSWPAttributeArray(a1, a2);
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *v2 = &unk_287D35770;
  *(v2 + 72) = 0;
}

{
  TSWPAttributeArray::TSWPAttributeArray(a1, a2);
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *v2 = &unk_287D35770;
  *(v2 + 72) = 0;
}

void TSWPChangeAttributeArray::willReplaceCharactersInRangeWithString(TSWPAttributeArray *this, _NSRange a2, uint64_t a3, uint64_t a4, uint64_t a5, TSWPStorageTransaction *a6)
{
  length = a2.length;
  location = a2.location;
  if (a2.length && a2.location != 0x7FFFFFFFFFFFFFFFLL && a4)
  {
    LOBYTE(this[1].var0) = 0;
    v10 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, a2.location);
    v14.location = location;
    v14.length = length;
    TSWPChangeAttributeArray::clipObjectForReplacement(this, v10, v14, a6);
    v11 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, length + location - 1);
    v15.location = location;
    v15.length = length;
    TSWPChangeAttributeArray::clipObjectForReplacement(this, v11, v15, a6);
    v12.location = location;
    v12.length = length;

    TSWPChangeAttributeArray::deleteInnerObjectsForReplacement(this, v12, a6);
  }

  else
  {

    TSWPSmartFieldAttributeArray::willReplaceCharactersInRangeWithString(this, a2, a3, a4, a5, a6);
  }
}

TSWPChangeAttributeArray *TSWPChangeAttributeArray::clipObjectForReplacement(TSWPChangeAttributeArray *this, unint64_t a2, _NSRange a3, TSWPStorageTransaction *a4)
{
  if (*(this->var4 + 2 * a2 + 1))
  {
    length = a3.length;
    location = a3.location;
    v8 = this;
    this = TSWPAttributeArray::rangeForAttributeIndex(this, a2);
    v10 = v9;
    v11 = location + length;
    v12 = this + v10;
    if (location <= this)
    {
      if (v11 >= v12)
      {
        TSWPAttributeArray::replaceObjectForAttributeIndex(v8, 0, a2, 0, a4);
        v14 = *(v8->var0 + 29);

        return v14(v8, a2, a4);
      }

      else
      {
        v13 = this;
        TSWPAttributeArray::replaceCharIndexForAttributeIndex(v8, v11, a2, a4);
        v15 = v13;
        v16 = 0;
        TSWPAttributeArray::insertAttribute(v8, &v15, a2, 0, a4);
        return (*(v8->var0 + 29))(v8, a2, a4);
      }
    }

    else if (v11 >= v12)
    {
      v15 = location;
      v16 = 0;
      TSWPAttributeArray::insertAttribute(v8, &v15, a2 + 1, 0, a4);
      return (*(v8->var0 + 29))(v8, a2 + 1, a4);
    }
  }

  return this;
}

unint64_t TSWPChangeAttributeArray::deleteInnerObjectsForReplacement(TSWPChangeAttributeArray *this, _NSRange a2, TSWPStorageTransaction *a3)
{
  length = a2.length;
  location = a2.location;
  v7 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, a2.location);
  result = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, length + location - 1);
  if (result > v7 + 1)
  {
    (*(this->var0 + 7))(this, v7 + 1, result - (v7 + 1), a3);
    v9 = *(this->var0 + 29);

    return v9(this, v7, a3);
  }

  return result;
}

void TSWPChangeAttributeArray::~TSWPChangeAttributeArray(TSWPChangeAttributeArray *this)
{
  TSWPStyleAttributeArray::~TSWPStyleAttributeArray(this);

  JUMPOUT(0x26D6A9A30);
}

void sub_26C97C298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

TSSStyle *TSWPAddNonNilStyleToArray(TSSStyle *result, TSSStyle **a2, unsigned int *a3)
{
  if (result)
  {
    v3 = *a3;
    *a3 = v3 + 1;
    a2[v3] = result;
  }

  return result;
}

void TSWPCoreTextTypesetter::TSWPCoreTextTypesetter(TSWPCoreTextTypesetter *this, TSWPStorage *a2, TSWPLayoutChore *a3, TSWPCTTypesetterCache *a4, char a5, char a6)
{
  *this = &unk_287D358A0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  TSWPDropCapCTState::TSWPDropCapCTState(this + 288, 0, 0);
  TSWPLineStylingCTState::TSWPLineStylingCTState(this + 328, 0, 0);
  *(this + 2) = a2;
  *(this + 6) = [(TSWPStorage *)a2 wpKind];
  *(this + 1) = a3;
  *(this + 32) = 0;
  *(this + 10) = 0;
  *(this + 30) = a5;
  *(this + 31) = a6;
  *(this + 27) = 0;
  *(this + 28) = a4;
  *(this + 35) = 0;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
}

void sub_26C97C8A4(_Unwind_Exception *a1)
{
  TSWPDropCapCTState::~TSWPDropCapCTState((v1 + 288));
  v3 = *(v1 + 240);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(a1);
}

void TSWPCoreTextTypesetter::~TSWPCoreTextTypesetter(TSWPCoreTextTypesetter *this)
{
  *this = &unk_287D358A0;
  if (*(this + 34))
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual TSWPCoreTextTypesetter::~TSWPCoreTextTypesetter()"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 226, @"Didn't end paragraph layout"}];
  }

  TSWPCoreTextTypesetter::pDestroyCachedLabelFont(this);

  *(this + 27) = 0;
  if (*(this + 32) == 1)
  {
    (*(*this + 24))(this);
  }

  TSWPLineStylingCTState::~TSWPLineStylingCTState(this + 41);
  TSWPDropCapCTState::~TSWPDropCapCTState(this + 36);
  v4 = *(this + 30);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

{
  TSWPCoreTextTypesetter::~TSWPCoreTextTypesetter(this);

  JUMPOUT(0x26D6A9A30);
}

void TSWPCoreTextTypesetter::pDestroyCachedLabelFont(id *this)
{
  this[32] = 0;
  v2 = this[33];
  if (v2)
  {
    CFRelease(v2);
    this[33] = 0;
  }

  v3 = this[31];
  if (v3)
  {
    CFRelease(v3);
    this[31] = 0;
  }

  this[34] = 0;
}

uint64_t TSWPCoreTextTypesetter::pCTTypesetter(TSWPCoreTextTypesetter *this)
{
  if ((*(this + 34) & 1) == 0)
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CTTypesetterRef TSWPCoreTextTypesetter::pCTTypesetter() const"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 240, @"paragraph must be set up before requesting typesetter"}];
  }

  return *(*(this + 29) + 64);
}

_BYTE *TSWPCoreTextTypesetter::beginLayout(_BYTE *this, char a2)
{
  this[32] = 1;
  this[34] = 0;
  this[33] = a2;
  return this;
}

void TSWPCoreTextTypesetter::endLayout(TSWPCoreTextTypesetter *this)
{
  if (*(this + 34) == 1)
  {
    TSWPCoreTextTypesetter::endParagraphLayout(this);
  }

  *(this + 32) = 0;
}

void TSWPCoreTextTypesetter::endParagraphLayout(TSWPCoreTextTypesetter *this)
{
  if (*(this + 34) == 1)
  {
    v2 = *(this + 30);
    *(this + 29) = 0;
    *(this + 30) = 0;
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    if (*(this + 27))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        CFRelease(*(*(this + 15) + v3 + 32));
        CFRelease(*(*(this + 15) + v3 + 24));
        ++v4;
        v3 += 104;
      }

      while (v4 < *(this + 27));
    }

    v5 = *(this + 15);
    if (v5)
    {
      free(v5);
      *(this + 15) = 0;
    }

    v6 = *(this + 16);
    if (v6)
    {
      free(v6);
      *(this + 16) = 0;
    }

    *(this + 27) = 0;
    *(this + 34) = 0;

    *(this + 8) = 0;
    *(this + 9) = 0;

    *(this + 12) = 0;
    *(this + 35) = 0;
  }
}

unint64_t TSWPCoreTextTypesetter::beginParagraphLayout(TSWPCoreTextTypesetter *this, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, double a6, double a7)
{
  v155 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPTypesetterParagraphSetupResult TSWPCoreTextTypesetter::beginParagraphLayout(const TSWPLayoutState *, CGSize, const TSWPTopicNumberHints &, const TSWPTypesetterAdditionalCTState &, TSWPAttributeIndex)"}];
    [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 282, @"invalid nil value for '%s'", "state"}];
  }

  if (!*(a2 + 96))
  {
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPTypesetterParagraphSetupResult TSWPCoreTextTypesetter::beginParagraphLayout(const TSWPLayoutState *, CGSize, const TSWPTopicNumberHints &, const TSWPTypesetterAdditionalCTState &, TSWPAttributeIndex)"}];
    [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 283, @"invalid nil value for '%s'", "state->paragraphStyle"}];
  }

  if (*(this + 34) == 1)
  {
    TSWPCoreTextTypesetter::endParagraphLayout(this);
  }

  TSWPDropCapCTState::operator=(this + 288, *a4);
  TSWPLineStylingCTState::operator=(this + 328, a4[1]);
  *(this + 34) = 1;
  *(this + 40) = *(a2 + 80);
  v16 = *(this + 5);
  if ((*(a2 + 16) - v16) >= *(this + 6))
  {
    v17 = *(this + 6);
  }

  else
  {
    v17 = *(a2 + 16) - v16;
  }

  *(this + 6) = v17;
  *(this + 8) = [*(this + 2) textSourceForLayoutInRange:?];
  *(this + 9) = TSWPParagraphEnumerator::coreTextPropertiesFilterDelegate((a2 + 24));
  *(this + 7) = [*(this + 8) length];
  if (*(a2 + 345) == 1 && (*(a2 + 333) & 1) == 0)
  {
    v18 = *(a2 + 346);
  }

  else
  {
    v18 = 0;
  }

  *(this + 88) = v18 & 1;
  *(this + 17) = a6;
  *(this + 18) = a7;
  *(this + 12) = TSWPParagraphEnumerator::paragraphLanguage((a2 + 24), 1, 0);
  *(this + 104) = TSUHasCJKLanguage();
  v119 = [*(a2 + 104) scaleTextPercent];
  v19 = *(this + 30);
  *(this + 29) = 0;
  *(this + 30) = 0;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  v20 = *(this + 28);
  v130 = a2;
  if (v20 && v119 == 100 && (!*(this + 40) || *(this + 38) == 1.0 && (*(this + 296) & 1) == 0) && (!*(this + 44) || (*(this + 336) & 1) == 0) && *(this + 6) != 1 && *(a2 + 16) == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v20 cachedTypesetterForParagraphIdentifier:a5];
    v21 = v137;
    v137 = 0uLL;
    v22 = *(this + 30);
    *(this + 232) = v21;
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
      if (*(&v137 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v137 + 1));
      }
    }
  }

  v23 = *(this + 29);
  v111 = v23;
  if (!v23)
  {
    operator new();
  }

  if (*(this + 7) != (*(v23 + 40) - *(v23 + 32)) >> 1)
  {
    v24 = [MEMORY[0x277D6C290] currentHandler];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPTypesetterParagraphSetupResult TSWPCoreTextTypesetter::beginParagraphLayout(const TSWPLayoutState *, CGSize, const TSWPTopicNumberHints &, const TSWPTypesetterAdditionalCTState &, TSWPAttributeIndex)"}];
    [v24 handleFailureInFunction:v25 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 326, @"cached paragraph typesetter has wrong char count"}];
  }

  v26 = *(this + 29);
  if (!v26)
  {
    v27 = [MEMORY[0x277D6C290] currentHandler];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPTypesetterParagraphSetupResult TSWPCoreTextTypesetter::beginParagraphLayout(const TSWPLayoutState *, CGSize, const TSWPTopicNumberHints &, const TSWPTypesetterAdditionalCTState &, TSWPAttributeIndex)"}];
    [v27 handleFailureInFunction:v28 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 328, @"invalid nil value for '%s'", "_paragraphTypesetter.get()"}];
    v26 = *(this + 29);
  }

  v29 = *(v26 + 32);
  *(this + 28) = 100;
  *(this + 10) = v29;
  v128 = *(this + 7);
  *(this + 15) = malloc_type_malloc(0x28A0uLL, 0x10E0040261DCC7AuLL);
  v120 = 0;
  v121 = 0;
  v117 = 0;
  v114 = 0;
  v129 = 0;
  v30 = 0;
  *(this + 16) = malloc_type_malloc(8 * *(this + 28), 0x100004000313F17uLL);
  v147 = *(this + 33);
  v148 = 0;
  v149 = (v147 & 1) == 0;
  v150 = 0;
  v151 = 0;
  v152 = v149;
  v153 = 16843008;
  v154 = 0;
  v146 = 0;
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v139 = 0u;
  v137 = 0u;
  v138 = 0u;
  v31 = *(this + 38);
  key = *MEMORY[0x277CC4838];
  allocator = *MEMORY[0x277CBECE8];
  v115 = *MEMORY[0x277CC49C0];
  v112 = *MEMORY[0x277CC4AD0];
  v113 = *MEMORY[0x277CC4A00];
  v127 = *(this + 40);
  v124 = *(this + 45);
  do
  {
    [*(this + 8) attributesAtCharIndex:v30 attributesOfInterest:&v147 attributesTable:&v137 effectiveRange:&v134];
    if (v135)
    {
      v32 = 1;
    }

    else
    {
      v32 = v30 == v128;
    }

    if (!v32)
    {
      v33 = [MEMORY[0x277D6C290] currentHandler];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPTypesetterParagraphSetupResult TSWPCoreTextTypesetter::beginParagraphLayout(const TSWPLayoutState *, CGSize, const TSWPTopicNumberHints &, const TSWPTypesetterAdditionalCTState &, TSWPAttributeIndex)"}];
      [v33 handleFailureInFunction:v34 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 360, @"Empty effectiveRange"}];
    }

    if (v124 > v30 && *(this + 44) && (*(this + 336) & 1) != 0 && v135 + v134 > v124)
    {
      v135 = v124 - v30;
    }

    if (v127 > v30 && *(this + 40) && (*(this + 38) != 1.0 || (*(this + 296) & 1) != 0) && v135 + v134 > v127)
    {
      v135 = v127 - v30;
    }

    v35 = *(&v144 + 1);
    v36 = v145;
    v37 = *(&v138 + 1);
    v38 = *(&v143 + 1);
    if (v124 > v30 && *(this + 44) && (*(this + 336) & 1) != 0)
    {
      v37 = TSWPLineStylingCTState::modifiedCharacterStyle((this + 328), [*(this + 2) stylesheet], *(&v138 + 1));
    }

    if (v127 > v30 && *(this + 40) && (*(this + 296) & 1) != 0)
    {
      v37 = TSWPDropCapCTState::modifiedCharacterStyle((this + 288), [*(this + 2) stylesheet], v37);
    }

    if (v37)
    {
      [*(v130 + 104) styleProvider];
      if (objc_opt_respondsToSelector())
      {
        v37 = [objc_msgSend(*(v130 + 104) "styleProvider")];
      }
    }

    v39 = v134;
    v40 = v135 + v134;
    if (v135 + v134 >= v128)
    {
      v40 = v128;
    }

    if (v134 <= v30)
    {
      v39 = v30;
    }

    v134 = v39;
    v135 = v40 - v39;
    v41 = v130;
    v42 = *(v130 + 96);
    if (!v42)
    {
      v43 = [MEMORY[0x277D6C290] currentHandler];
      v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPTypesetterParagraphSetupResult TSWPCoreTextTypesetter::beginParagraphLayout(const TSWPLayoutState *, CGSize, const TSWPTopicNumberHints &, const TSWPTypesetterAdditionalCTState &, TSWPAttributeIndex)"}];
      [v43 handleFailureInFunction:v44 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 413, @"invalid nil value for '%s'", "state->paragraphStyle"}];
      v41 = v130;
      v42 = *(v130 + 96);
    }

    v45 = [*(this + 8) createFilteredCoreTextAttributes:objc_msgSend(v42 effectiveRange:"getTypesetterAttributes:scalePercent:isRightToLeft:" filterDelegate:{v37, v119, *(v41 + 333)), &v134, *(this + 9)}];
    cf = CFDictionaryGetValue(v45, key);
    if (([v36 showsMarkup] & 1) != 0 || objc_msgSend(v35, "showsMarkup"))
    {
      if ([v36 showsMarkup])
      {
        v35 = v36;
      }

      v46 = [objc_msgSend(v35 "session")];
      if (v121 != v46)
      {
        v120 = [v35 textMarkupColor];
        v121 = v46;
      }

      v47 = [v35 isDeletion];
      v48 = v120;
      if (v47)
      {
        v49 = v120;
      }

      else
      {
        v49 = 0;
      }
    }

    else
    {
      v49 = 0;
      v48 = 0;
    }

    v50 = *(v130 + 648);
    if (v49)
    {
      v51 = *(v130 + 648);
    }

    else
    {
      v51 = 0;
    }

    if (v50)
    {
      v52 = v51;
    }

    else
    {
      v52 = v49;
    }

    if (v50)
    {
      v48 = *(v130 + 648);
    }

    v53 = v31 != 1.0 && v127 > v30;
    v54 = v53;
    v122 = v48;
    if (v48 || v52 || *(&v36 + 1) || v54)
    {
      v56 = v48 != 0;
      MutableCopy = CFDictionaryCreateMutableCopy(allocator, 0, v45);
      CFRelease(v45);
      if (v56)
      {
        CFDictionarySetValue(MutableCopy, v115, [v122 CGColor]);
      }

      if (v52)
      {
        CFDictionarySetValue(MutableCopy, @"TSWPStrikethroughColor", v52);
        CFDictionarySetValue(MutableCopy, @"TSWPStrikethrough", &unk_287DDD8D8);
      }

      if (*(&v36 + 1))
      {
        CFDictionarySetValue(MutableCopy, @"TSWPTextHighlightAuthorAttribute", [*(&v36 + 1) author]);
      }

      if (v54)
      {
        v57 = CFDictionaryGetValue(MutableCopy, key);
        Size = CTFontGetSize(v57);
        CopyWithAttributes = CTFontCreateCopyWithAttributes(v57, v31 * Size, 0, 0);
        CFDictionarySetValue(MutableCopy, key, CopyWithAttributes);
        CFRelease(CopyWithAttributes);
      }
    }

    else
    {
      MutableCopy = v45;
    }

    if (!(v37 | v38))
    {
      goto LABEL_120;
    }

    v60 = *(v130 + 333);
    if (v37)
    {
      v61 = [v37 writingDirection];
    }

    else
    {
      v61 = -1;
    }

    if (v61 == -1 && v38)
    {
      v61 = [MEMORY[0x277CBEAF8] characterDirectionForLanguage:v38] == 2;
    }

    if (v61 == -1 || v61 == v60)
    {
      goto LABEL_120;
    }

    if (v135)
    {
      v62 = 0;
      v63 = 0;
      v64 = v134;
      do
      {
        if (!IsWhitespaceCharacter(*(*(this + 10) + 2 * v64 + 2 * v62)))
        {
          break;
        }

        v62 = ++v63;
      }

      while (v135 > v63);
      if (v63)
      {
        v135 = v63;
LABEL_120:
        theDict = MutableCopy;
        goto LABEL_121;
      }

      v95 = v135;
      if (v135 >= 2)
      {
        do
        {
          if (!IsWhitespaceCharacter(*(*(this + 10) + 2 * v64 + 2 * v95 - 2)))
          {
            break;
          }

          v95 = v135 - 1;
          v135 = v95;
        }

        while (v95 > 1);
      }
    }

    theDict = CFDictionaryCreateMutableCopy(allocator, 0, MutableCopy);
    CFRelease(MutableCopy);
    v136 = [MEMORY[0x277CCABB0] numberWithInt:v61 == 1];
    CFDictionarySetValue(theDict, v112, [MEMORY[0x277CBEA60] arrayWithObjects:&v136 count:1]);
LABEL_121:
    if (v30 >= *(this + 7))
    {
      goto LABEL_128;
    }

    v65 = *(*(this + 10) + 2 * v30);
    if (v65 == 65532)
    {
      v66 = [*(this + 8) attachmentAtCharIndex:v30];
      if (v66)
      {
        value = 0;
        ++HIDWORD(v114);
        goto LABEL_139;
      }

LABEL_146:
      v78 = [MEMORY[0x277D6C290] currentHandler];
      v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPTypesetterParagraphSetupResult TSWPCoreTextTypesetter::beginParagraphLayout(const TSWPLayoutState *, CGSize, const TSWPTopicNumberHints &, const TSWPTypesetterAdditionalCTState &, TSWPAttributeIndex)"}];
      [v78 handleFailureInFunction:v79 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 552, @"We have an attachment character, but no attachment"}];
      goto LABEL_147;
    }

    if (v65 != 14)
    {
LABEL_128:
      if (v135 >= 2)
      {
        v67 = 2;
        v68 = 1;
        while (1)
        {
          v69 = *(*(this + 10) + 2 * v134 + 2 * v68);
          if (v69 == 65532 || v69 == 14)
          {
            break;
          }

          v68 = v67;
          v53 = v135 > v67++;
          if (!v53)
          {
            goto LABEL_147;
          }
        }

        v71 = 0;
        v135 = v68;
        goto LABEL_148;
      }

LABEL_147:
      v71 = 0;
LABEL_148:
      v77 = 1;
      goto LABEL_149;
    }

    v66 = [*(this + 8) footnoteReferenceAtCharIndex:v30];
    if (!v66)
    {
      goto LABEL_146;
    }

    *(*(this + 10) + 2 * v30) = 160;
    if (TSWPPlaceholderFont(void)::onceToken != -1)
    {
      TSWPCoreTextTypesetter::beginParagraphLayout();
    }

    LODWORD(v114) = v114 + 1;
    value = TSWPPlaceholderFont(void)::placeholderFont;
LABEL_139:
    if (![v66 isDrawable] || (objc_msgSend(v66, "isAnchored") & 1) != 0 || (objc_msgSend(v66, "isPartitioned") & 1) != 0)
    {
      v72 = 0;
    }

    else
    {
      v72 = TSWPLayoutChore::validatedLayoutForInlineAttachment(*(this + 1), v66, v130, theDict);
    }

    v73 = +[TSWPTypesetterAttachmentMap mapWithAttachment:layout:pageNumber:pageCount:footnoteMarkProvider:styleProvider:colorOverride:](TSWPTypesetterAttachmentMap, "mapWithAttachment:layout:pageNumber:pageCount:footnoteMarkProvider:styleProvider:colorOverride:", v66, v72, [*(v130 + 104) pageNumber], *(v130 + 656), *(v130 + 608), objc_msgSend(*(v130 + 104), "styleProvider"), v122);
    v74 = [v66 isDrawable];
    v75 = CFDictionaryCreateMutableCopy(allocator, 0, theDict);
    CFRelease(theDict);
    v76 = CTRunDelegateCreate(&gRunDelegateCallBacks, v73);
    CFDictionarySetValue(v75, v113, v76);
    CFDictionarySetValue(v75, kTSWPAttachmentMap, v73);
    if (value)
    {
      CFDictionarySetValue(v75, key, value);
    }

    CFRelease(v76);
    v77 = 0;
    v117 |= v74 ^ 1;
    v71 = 1;
    v135 = 1;
    theDict = v75;
LABEL_149:
    v80 = *(this + 28);
    if (v129 >= v80)
    {
      v81 = 2 * v80;
      *(this + 28) = v81;
      *(this + 16) = malloc_type_realloc(*(this + 16), 8 * v81, 0x100004000313F17uLL);
      *(this + 15) = malloc_type_realloc(*(this + 15), 104 * *(this + 28), 0x10E0040261DCC7AuLL);
    }

    v82 = TSWPResolvePropertyForStyles(v37, *(v130 + 96), 40, 0);
    if (v82 && [v82 isEnabled])
    {
      v71 |= 4u;
    }

    CFRetain(cf);
    v83 = *(this + 15);
    *(*(this + 16) + 8 * v129) = v135;
    v84 = v83 + 104 * v129;
    *v84 = v30;
    *(v84 + 16) = v37;
    *(v84 + 24) = cf;
    *(v84 + 32) = theDict;
    *(v84 + 8) = v71;
    TSWPFontHeightInfoForFont(cf, v133);
    v85 = *(this + 15) + 104 * v129;
    v86 = v133[0];
    v87 = v133[1];
    v88 = v133[2];
    *(v85 + 88) = v133[3];
    *(v85 + 72) = v88;
    *(v85 + 56) = v87;
    *(v85 + 40) = v86;
    ++v129;
    if (!*(*(this + 29) + 64))
    {
      v91 = TSWPResolveIntPropertyForStyles(v37, *(v130 + 96), 21, 0);
      v92 = TSWPResolveIntPropertyForStyles(v37, *(v130 + 96), 48, 0);
      v93.length = v135;
      switch(v91)
      {
        case 3:
          v93.location = v30;
          TSWPCoreTextTypesetter::pChangeTextToTitledForRange(this, v93);
          break;
        case 2:
          if (v135)
          {
            v94 = v77;
          }

          else
          {
            v94 = 0;
          }

          if (v94 == 1)
          {
            v93.location = v30;
            v129 = TSWPCoreTextTypesetter::pChangeToSmallCapsForRange(this, v93, v129, v92 != 0);
          }

          break;
        case 1:
          v93.location = v30;
          TSWPCoreTextTypesetter::pChangeTextToUppercaseForRange(this, v93);
          break;
      }
    }

    v30 = v135 + v134;
    if (v135 + v134 > v128)
    {
      v89 = [MEMORY[0x277D6C290] currentHandler];
      v90 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPTypesetterParagraphSetupResult TSWPCoreTextTypesetter::beginParagraphLayout(const TSWPLayoutState *, CGSize, const TSWPTopicNumberHints &, const TSWPTypesetterAdditionalCTState &, TSWPAttributeIndex)"}];
      [v89 handleFailureInFunction:v90 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 679, @"Bad curCharIndex"}];
    }
  }

  while (v30 < v128);
  *(this + 27) = v129;
  v96 = *(v130 + 388);
  v97 = *(v130 + 333);
  if (!v111)
  {
    TSWPParagraphTypesetter::createAttributedString(*(this + 29));
    v98 = *(this + 29);
    if (*(v98 + 64))
    {
      v99 = [MEMORY[0x277D6C290] currentHandler];
      v100 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CFMutableAttributedStringRef TSWPParagraphTypesetter::mutableAttributedString() const"];
      [v99 handleFailureInFunction:v100 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphTypesetter.h"), 256, @"expected nil value for '%s'", "_ctTypesetter"}];
    }

    v101 = *(v98 + 56);
    if (*(this + 27))
    {
      v102 = 0;
      v103 = 0;
      do
      {
        v104 = *(this + 15) + v102;
        v156.location = *v104;
        v156.length = *(*(this + 16) + 8 * v103);
        CFAttributedStringSetAttributes(v101, v156, *(v104 + 32), 0);
        ++v103;
        v102 += 104;
      }

      while (v103 < *(this + 27));
    }

    if (*(this + 30))
    {
      ApplyVerticalFormsToAttributedString(v101, *(this + 10));
    }

    TSWPParagraphTypesetter::createCTTypesetter(*(this + 29));
    v105 = *(this + 28);
    if (v105 != 0 && v119 == 100 && (!*(this + 40) || *(this + 38) == 1.0 && (*(this + 296) & 1) == 0) && (!*(this + 44) || (*(this + 336) & 1) == 0) && !((*(this + 6) != 0) | v117 & 1) && *(*(this + 29) + 88) == *(*(this + 29) + 80) && *(v130 + 16) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v106 = *(this + 30);
      v131 = *(this + 29);
      v132 = v106;
      if (v106)
      {
        atomic_fetch_add_explicit(&v106->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      [v105 addTypesetterForParagraphIdentifier:a5 typesetter:&v131];
      if (v132)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v132);
      }
    }
  }

  if (v96 == 4)
  {
    v107 = v97;
  }

  else
  {
    v107 = v96;
  }

  *(this + 35) = a3;
  return ((v114 != 0) << 48) | ((HIDWORD(v114) != 0) << 40) | (v97 << 32) | v107;
}

void sub_26C97DDC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a37);
  }

  _Unwind_Resume(exception_object);
}

void TSWPCoreTextTypesetter::pChangeTextToUppercaseForRange(TSWPCoreTextTypesetter *this, _NSRange a2)
{
  length = a2.length;
  location = a2.location;
  if (a2.location + a2.length > *(this + 7))
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPCoreTextTypesetter::pChangeTextToUppercaseForRange(NSRange)"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 3761, @"Invalid local range"}];
  }

  System = CFLocaleGetSystem();
  if (length >= 1)
  {
    v8 = System;
    v9 = (*(this + 10) + 2 * location);
    v10 = *MEMORY[0x277CBED00];
    v11 = length + 1;
    do
    {
      v12 = *v9;
      MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(0, v9, 1, 1, v10);
      if (MutableWithExternalCharactersNoCopy)
      {
        v14 = MutableWithExternalCharactersNoCopy;
        CFStringUppercase(MutableWithExternalCharactersNoCopy, v8);
        if (CFStringGetLength(v14) != 1)
        {
          *v9 = v12;
        }

        CFRelease(v14);
      }

      else
      {
        v15 = [MEMORY[0x277D6C290] currentHandler];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPCoreTextTypesetter::pChangeTextToUppercaseForRange(NSRange)"];
        [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 3774, @"Failed to create temporary string for _textBuffer"}];
      }

      ++v9;
      --v11;
    }

    while (v11 > 1);
  }
}

uint64_t TSWPCoreTextTypesetter::pChangeToSmallCapsForRange(TSWPCoreTextTypesetter *this, _NSRange a2, int a3, int a4)
{
  length = a2.length;
  location = a2.location;
  v71[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a2.length)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v47 = [MEMORY[0x277D6C290] currentHandler];
    v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"uint TSWPCoreTextTypesetter::pChangeToSmallCapsForRange(NSRange, uint, BOOL)"}];
    [v47 handleFailureInFunction:v48 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 3814, @"runIndex should >= 1"}];
    if (length)
    {
      goto LABEL_3;
    }
  }

  v49 = [MEMORY[0x277D6C290] currentHandler];
  v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"uint TSWPCoreTextTypesetter::pChangeToSmallCapsForRange(NSRange, uint, BOOL)"}];
  [v49 handleFailureInFunction:v50 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 3815, @"localRange.length must be >= 1"}];
LABEL_3:
  v8 = (a3 - 1);
  v9 = *(this + 15) + 104 * v8;
  v59 = *(v9 + 16);
  font = *(v9 + 24);
  theDict = *(v9 + 32);
  v10 = *(v9 + 56);
  v63 = *(v9 + 40);
  v64 = v10;
  v11 = *(v9 + 88);
  v65 = *(v9 + 72);
  v66 = v11;
  v12 = location + length;
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetLowercaseLetter);
  if (location < location + length)
  {
    v14 = Predefined;
    v15 = 0;
    v54 = *MEMORY[0x277CC48D8];
    v53 = *MEMORY[0x277CC48C8];
    v52 = *MEMORY[0x277CC4910];
    v51 = *MEMORY[0x277CC48D0];
    allocator = *MEMORY[0x277CBECE8];
    key = *MEMORY[0x277CC4838];
    do
    {
      v61 = v15;
      IsCharacterMember = CFCharacterSetIsCharacterMember(v14, *(*(this + 10) + 2 * location));
      v17 = 1;
      do
      {
        v18 = v17;
        v19 = location + v17;
        if (location + v17 >= v12)
        {
          break;
        }

        v20 = CFCharacterSetIsCharacterMember(v14, *(*(this + 10) + 2 * location + 2 * v17));
        v17 = v18 + 1;
      }

      while (IsCharacterMember == v20);
      if (v8 >= *(this + 28))
      {
        v21 = [MEMORY[0x277D6C290] currentHandler];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"uint TSWPCoreTextTypesetter::pChangeToSmallCapsForRange(NSRange, uint, BOOL)"}];
        [v21 handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 3835, @"Bad runIndex"}];
      }

      v23 = *(this + 15);
      *(*(this + 16) + 8 * v8) = v18;
      v24 = v23 + 104 * v8;
      *v24 = location;
      *(v24 + 16) = v59;
      *(v24 + 8) = 2 * (IsCharacterMember != 0);
      if (IsCharacterMember)
      {
        if (a4 && TSWPCTFontSupportsNativeSmallCaps(font))
        {
          v25 = CTFontCopyFontDescriptor(font);
          Size = CTFontGetSize(font);
          if (v25)
          {
            v27 = Size;
            v69[0] = v54;
            v69[1] = v53;
            v70[0] = &unk_287DDD8F0;
            v70[1] = &unk_287DDD908;
            v71[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
            v67 = v52;
            v68 = @"smcp";
            v71[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
            v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
            v29 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v28, v51, 0}];
            CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v25, v29);
            if (CopyWithAttributes)
            {
              v31 = CopyWithAttributes;
              v61 = CTFontCreateWithFontDescriptor(CopyWithAttributes, v27, 0);
              CFRelease(v31);
            }

            CFRelease(v25);
          }

          v15 = v61;
        }

        else
        {
          v72.location = location;
          v72.length = v18;
          TSWPCoreTextTypesetter::pChangeTextToUppercaseForRange(this, v72);
          v32 = CTFontGetSize(font);
          v33 = CTFontCopyFontDescriptor(font);
          v15 = v61;
          if (v33)
          {
            v34 = v33;
            v15 = CTFontCreateWithFontDescriptor(v33, v32 * 0.800000012, 0);
            CFRelease(v34);
          }
        }

        if (v15)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(allocator, 0, theDict);
          CFDictionarySetValue(MutableCopy, key, v15);
          *(*(this + 15) + 104 * v8 + 32) = MutableCopy;
          *(*(this + 15) + 104 * v8 + 24) = CFRetain(v15);
          TSWPFontHeightInfoForFont(v15, v62);
          v36 = *(this + 15) + 104 * v8;
          v37 = v62[0];
          v38 = v62[1];
          v39 = v62[2];
          *(v36 + 88) = v62[3];
          *(v36 + 72) = v39;
          *(v36 + 56) = v38;
          *(v36 + 40) = v37;
        }
      }

      else
      {
        *(*(this + 15) + 104 * v8 + 32) = CFRetain(theDict);
        v40 = CFRetain(font);
        v41 = *(this + 15) + 104 * v8;
        *(v41 + 24) = v40;
        v42 = v65;
        *(v41 + 88) = v66;
        *(v41 + 72) = v42;
        v43 = v63;
        *(v41 + 56) = v64;
        *(v41 + 40) = v43;
        v15 = v61;
      }

      v8 = (v8 + 1);
      v44 = *(this + 28);
      if (v8 >= v44)
      {
        v45 = 2 * v44;
        *(this + 28) = v45;
        *(this + 15) = malloc_type_realloc(*(this + 15), 104 * v45, 0x10E0040261DCC7AuLL);
        *(this + 16) = malloc_type_realloc(*(this + 16), 8 * *(this + 28), 0x100004000313F17uLL);
      }

      location = v19;
    }

    while (v19 < v12);
    if (v15)
    {
      CFRelease(v15);
    }
  }

  CFRelease(font);
  CFRelease(theDict);
  return v8;
}

void TSWPCoreTextTypesetter::pChangeTextToTitledForRange(TSWPCoreTextTypesetter *this, _NSRange a2)
{
  length = a2.length;
  location = a2.location;
  if (a2.location + a2.length > *(this + 7))
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPCoreTextTypesetter::pChangeTextToTitledForRange(NSRange)"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 3796, @"Invalid local range"}];
  }

  System = CFLocaleGetSystem();
  MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(0, (*(this + 10) + 2 * location), length, length, *MEMORY[0x277CBED00]);
  if (MutableWithExternalCharactersNoCopy)
  {
    v9 = MutableWithExternalCharactersNoCopy;
    CFStringCapitalize(MutableWithExternalCharactersNoCopy, System);

    CFRelease(v9);
  }

  else
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPCoreTextTypesetter::pChangeTextToTitledForRange(NSRange)"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"];

    [v10 handleFailureInFunction:v11 file:v12 lineNumber:3802 description:@"Failed to create temporary string for _textBuffer"];
  }
}

uint64_t TSWPCoreTextTypesetter::layoutLine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v230 = *MEMORY[0x277D85DE8];
  if (*(a1 + 34) != 1 || ((v6 = *(a1 + 40), *a2 >= v6) ? (v7 = *a2 > *(a1 + 48) + v6) : (v7 = 1), v7))
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPCoreTextTypesetter::layoutLine(const TSWPLayoutState *, TSWPTypesetterParamBlock *)"}];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 801, @"layoutLine called without paragraph being setup correctly"}];
  }

  if ((*(a3 + 58) & 1) != 0 && *(*(a1 + 232) + 88) != *(*(a1 + 232) + 80))
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPCoreTextTypesetter::layoutLine(const TSWPLayoutState *, TSWPTypesetterParamBlock *)"}];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 802, @"Can't skip glyph vectors with ruby"}];
  }

  v12 = *(a3 + 200);
  v13 = [*(a1 + 64) charIndexMappedFromStorage:*a2];
  v222 = *(a3 + 184);
  v223 = *(a3 + 176);
  if (v13 == 0x7FFFFFFFFFFFFFFFLL || (v14 = v13, v13 > *(a1 + 56)))
  {
    if (*a2 != *(a1 + 48) + *(a1 + 40))
    {
      v15 = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPCoreTextTypesetter::layoutLine(const TSWPLayoutState *, TSWPTypesetterParamBlock *)"}];
      [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 814, @"bad start char index"}];
    }

    v14 = *(a1 + 56);
  }

  v227 = v14;
  *v12 = *a2;
  v12[2] = *(a1 + 40);
  v17 = *(a2 + 536);
  *(v12 + 3) = *(a2 + 520);
  *(v12 + 4) = v17;
  if (*(a1 + 30) == 1)
  {
    *(v12 + 6) |= 0x2000u;
  }

  if (v12[23])
  {
    v18 = [MEMORY[0x277D6C290] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPCoreTextTypesetter::layoutLine(const TSWPLayoutState *, TSWPTypesetterParamBlock *)"}];
    [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 825, @"expected nil value for '%s'", "lineFragment->_textSource"}];
  }

  v12[23] = *(a1 + 64);
  v20 = *(a3 + 112);
  v21 = *(a3 + 128);
  v22 = *(a3 + 96);
  *(a1 + 152) = *(a3 + 80);
  *(a1 + 200) = v21;
  *(a1 + 184) = v20;
  *(a1 + 168) = v22;
  v23 = *(a3 + 32) & 0x14;
  v24 = *(v12 + 6);
  v25 = *(a3 + 16);
  v26 = *(a2 + 520);
  v27 = *a3;
  *&v21 = *(a2 + 528);
  *&v22 = *(a2 + 536);
  v28 = *(a2 + 544);
  *&v20 = v26;
  MaxX = CGRectGetMaxX(*&v20);
  v31 = *(a2 + 208);
  v32 = *(a2 + 216);
  v33 = v25 - v32;
  v34 = *(a3 + 160);
  if ((v24 & 0x1000) != 0)
  {
    v33 = v33 + v34;
    if ((*(a2 + 332) & 1) == 0 && *(a2 + 512) == 1 && (*(a2 + 513) & 1) == 0 && v34 == 0.0)
    {
      v33 = v25 - *(a2 + 224);
    }

    v35 = *(a3 + 146);
    if ((v35 & 1) == 0)
    {
      v31 = fmax(fmin(v31, v33 + -18.0), 0.0);
      if (v23 == 4)
      {
LABEL_36:
        v35 = 0;
        goto LABEL_38;
      }

      v35 = 0;
      v33 = fmin(fmax(v33, v31 + 18.0), v25);
    }
  }

  else
  {
    v31 = v31 + v34;
    if ((*(a2 + 332) & 1) == 0 && *(a2 + 512) == 1 && (*(a2 + 513) & 1) == 0 && v34 == 0.0)
    {
      v31 = *(a2 + 224);
    }

    v35 = *(a3 + 146);
    if ((v35 & 1) == 0)
    {
      v33 = fmin(fmax(v33, v31 + 18.0), v25);
      if (v23 != 4)
      {
        v35 = 0;
        v31 = fmax(fmin(v31, v33 + -18.0), 0.0);
        goto LABEL_38;
      }

      goto LABEL_36;
    }
  }

LABEL_38:
  v36 = v26 - v27;
  v30 = *a3;
  v37 = MaxX - *a3;
  if (*(a2 + 344) != 1)
  {
    v31 = v31 + *(a2 + 232);
    if (v35)
    {
LABEL_42:
      if (v36 >= v31)
      {
        v38 = v26 - v27;
      }

      else
      {
        v38 = v31;
      }

      if (v33 >= v37)
      {
        v39 = MaxX - v30;
      }

      else
      {
        v39 = v33;
      }

      if (v23 != 4)
      {
        goto LABEL_64;
      }

LABEL_56:
      v39 = *(a3 + 40) - v32;
      goto LABEL_64;
    }

    if (v23 != 4)
    {
      v31 = fmax(fmin(v31, v33 + -18.0), 0.0);
      goto LABEL_58;
    }

LABEL_53:
    if (v36 >= v31)
    {
      v38 = v26 - v27;
    }

    else
    {
      v38 = v31;
    }

    goto LABEL_56;
  }

  if (v35)
  {
    v33 = v33 - *(a2 + 232);
    goto LABEL_42;
  }

  if (v23 == 4)
  {
    goto LABEL_53;
  }

  v33 = fmin(fmax(v33 - *(a2 + 232), v31 + 18.0), v25);
LABEL_58:
  if (v36 >= v31)
  {
    v38 = v26 - v27;
  }

  else
  {
    v38 = v31;
  }

  if (v33 >= v37)
  {
    v39 = MaxX - v30;
  }

  else
  {
    v39 = v33;
  }

LABEL_64:
  v220 = v23;
  if (*(a2 + 512) == 1)
  {
    v40 = *(a2 + 184);
    if (v40)
    {
      if (*(a2 + 332))
      {
        v41 = [v40 labelTypeForLevel:*(a2 + 192)];
        v42 = [*(a2 + 184) valueForProperty:181];
        v43 = v41;
        if (v42)
        {
          v44 = [v42 objectAtIndexedSubscript:*(a2 + 192)];
        }

        else
        {
          v44 = +[TSWPListLabelGeometry listLabelGeometry];
        }

        v216 = v44;
        TSWPResolveFloatPropertyForStyles([*(a1 + 64) characterStyleAtCharIndex:v14 effectiveRange:0], *(a2 + 96), 17);
        v46 = v45 * ([*(a2 + 104) scaleTextPercent] / 100.0);
        v47 = TSWPParagraphEnumerator::listLabelParagraphStyleOverride((a2 + 24));
        if (!v47)
        {
          v47 = *(a2 + 96);
        }

        FontForStyle = TSWPFastCreateFontForStyle(0, v47, [*(a2 + 104) scaleTextPercent]);
        if (v46 != CTFontGetSize(FontForStyle))
        {
          CopyWithAttributes = CTFontCreateCopyWithAttributes(FontForStyle, v46, 0, 0);
          CFRelease(FontForStyle);
          FontForStyle = CopyWithAttributes;
        }

        font = FontForStyle;
        if (v43 == 3)
        {
          TSWPParagraphEnumerator::TSWPParagraphEnumerator(&v226, (a2 + 24));
          v55 = TSWPCoreTextTypesetter::pNumberedListLabel(a1, a2, &v226, *(a2 + 192), (*(a1 + 30) & 1) == 0);
          TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v226);
          if (v55)
          {
            goto LABEL_90;
          }
        }

        else
        {
          if (v43 != 2)
          {
            if (v43 == 1)
            {
              v50 = [*(a2 + 184) valueForProperty:182];
              v51 = *(a2 + 192);
              v52 = v51 >= [v50 count] ? 0 : objc_msgSend(v50, "objectAtIndexedSubscript:", *(a2 + 192));
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v56 = [+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
                if (v56)
                {
                  if (([v56 isError] & 1) == 0)
                  {
                    operator new();
                  }
                }
              }
            }

            goto LABEL_93;
          }

          v53 = [*(a2 + 184) valueForProperty:183];
          if (v53)
          {
            v54 = [v53 objectAtIndexedSubscript:*(a2 + 192)];
          }

          else
          {
            v54 = +[TSWPListStyle defaultLabelString];
          }

          v55 = v54;
          if (v54)
          {
LABEL_90:
            alloc = v55;
            v210 = v43;
            Size = CTFontGetSize(FontForStyle);
            if (![v216 scaleWithText] || (objc_msgSend(v216, "scale"), v58 == 1.0))
            {
              v60 = 0;
            }

            else
            {
              [v216 scale];
              Size = Size * v59;
              v60 = 1;
            }

            v186 = [*(a2 + 184) valueForProperty:16];
            if (-[NSString isEqual:](v186, "isEqual:", [MEMORY[0x277CBEB68] null]))
            {
              v187 = 0;
            }

            else
            {
              v187 = v186;
            }

            v188 = font;
            if (((v187 == 0) & ~v60) == 0)
            {
              v188 = TSWPCoreTextTypesetter::pLabelFont(a1, v187, font, Size);
            }

            v189 = *(a2 + 96);
            v229.location = *(a2 + 184);
            v229.length = v189;
            v190 = TSWPResolvePropertyForStyles(&v229, 2uLL, 18, 0);
            if (!v190)
            {
              v191 = [MEMORY[0x277D6C290] currentHandler];
              v192 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPCoreTextTypesetter::layoutLine(const TSWPLayoutState *, TSWPTypesetterParamBlock *)"}];
              [v191 handleFailureInFunction:v192 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 1069, @"Expect label color, or paragraph color as the default."}];
            }

            v193 = [v190 CGColor];
            if (*(a2 + 344) == 1)
            {
              LOBYTE(v225) = 1;
              settings.spec = kCTParagraphStyleSpecifierBaseWritingDirection;
              settings.valueSize = 1;
              settings.value = &v225;
              v194 = CTParagraphStyleCreate(&settings, 1uLL);
              v195 = objc_alloc(MEMORY[0x277CBEAC0]);
              attributes = [v195 initWithObjectsAndKeys:{v188, *MEMORY[0x277CC4838], v193, *MEMORY[0x277CC49C0], v194, *MEMORY[0x277CC49F8], 0}];
              CFRelease(v194);
            }

            else
            {
              v196 = objc_alloc(MEMORY[0x277CBEAC0]);
              attributes = [v196 initWithObjectsAndKeys:{v188, *MEMORY[0x277CC4838], v193, *MEMORY[0x277CC49C0], 0}];
            }

            v213 = *MEMORY[0x277CBECE8];
            attrString = CFAttributedStringCreate(*MEMORY[0x277CBECE8], alloc, attributes);
            line = CTLineCreateWithAttributedString(attrString);
            if (*(a1 + 30) == 1 && v210 == 3)
            {
              v197 = TSWPFastCreateFontForStyle(0, *(a2 + 96), 0x64uLL);
              TSWPFontGetLineHeight();
              v199 = v198;
              CFRelease(v197);
              if (CTLineGetTypographicBounds(line, 0, 0, 0) >= v199)
              {
                Length = CFStringGetLength(alloc);
                aStr = CFAttributedStringCreateMutable(v213, 0);
                v233.location = 0;
                v233.length = 0;
                CFAttributedStringReplaceString(aStr, v233, alloc);
                v234.location = 0;
                v234.length = Length;
                CFAttributedStringSetAttributes(aStr, v234, attributes, 1u);
                if (Length)
                {
                  v203 = 0;
                  v204 = *MEMORY[0x277CBED00];
                  v205 = 1;
                  do
                  {
                    CharacterAtIndex = CFStringGetCharacterAtIndex(alloc, v203);
                    v207 = CharacterAtIndex;
                    v208 = TSWPFullWidthCharacterForCharacter(CharacterAtIndex);
                    LOWORD(settings.spec) = v208;
                    if (v207 != v208)
                    {
                      v209 = CFStringCreateWithCharactersNoCopy(v213, &settings, 1, v204);
                      v235.location = v203;
                      v235.length = 1;
                      CFAttributedStringReplaceString(aStr, v235, v209);
                      CFRelease(v209);
                    }

                    v203 = v205;
                    v7 = Length > v205++;
                  }

                  while (v7);
                }

                ApplyVerticalFormsToAttributedString(aStr, 0);
                CFRelease(attrString);
                CFRelease(line);
                CTLineCreateWithAttributedString(aStr);
              }
            }

            if (TSWPParagraphEnumerator::paragraphListNumber((a2 + 24), 0) == 0x7FFFFFFFFFFFFFFFLL && !TSWPParagraphEnumerator::paragraphListStart((a2 + 24)))
            {
              TSWPTopicNumberHints::nextTopicNumberForList(*(a1 + 280), *(a2 + 184), *(a2 + 192));
            }

            operator new();
          }
        }

LABEL_93:
        CFRelease(font);
      }
    }
  }

  if (v38 >= v39)
  {
    v61 = v38;
  }

  else
  {
    v61 = v39;
  }

  v62 = fmin(v61 - v38, 32000.0);
  v63 = v38;
  if ((*(a3 + 32) & 4) != 0)
  {
    goto LABEL_104;
  }

  v64 = *(a2 + 388);
  if (v64 == 1)
  {
    goto LABEL_103;
  }

  if (v64 == 2)
  {
    v63 = v38 + v62 * 0.5;
    goto LABEL_104;
  }

  v63 = v38;
  if (v64 == 3)
  {
    v63 = v38;
    if (*(a2 + 333))
    {
LABEL_103:
      v63 = v61;
    }
  }

LABEL_104:
  v65 = *(a1 + 56);
  if (v62 <= 1.0 && *(a3 + 145) != 1 || v65 - 1 < v14)
  {
    TSWPCoreTextTypesetter::createLineRefForEmptyLineFragment(a1, a2, v12, 0, v63, v31);
    v65 = v14;
    goto LABEL_330;
  }

  if (v14 >= v65 - (*(*(a1 + 232) + 72) != 0))
  {
    v12[1] = [*(a1 + 64) charIndexMappedToStorage:*(a1 + 56)] - *v12;
    TSWPCoreTextTypesetter::createLineRefForEmptyLineFragment(a1, a2, v12, *(*(a1 + 232) + 72), v63, v184);
    TSWPLineFragment::setTypesetterPos(v12, v38, v61);
    goto LABEL_330;
  }

  if (v223 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [*(a1 + 64) charIndexMappedFromStorage:?];
    v12[1] = v222;
    TSWPLineFragment::setTypesetterPos(v12, v38, v61);
    v65 = v14 + v222;
    if (!TSWPLineFragment::shareLineRefs(v12, *(a3 + 152)) && (*(a3 + 58) & 1) == 0)
    {
      FontRunIndexForLocalCharIndex = TSWPCoreTextTypesetter::pFindFontRunIndexForLocalCharIndex(a1, v65 - 1);
      TSWPLineFragment::setHyphenInfo(v12, *(*(a1 + 120) + 104 * FontRunIndexForLocalCharIndex + 32), 45);
      TSWPCoreTextTypesetter::createLineRefsForLineFragment(a1, v12, a2, v220 == 4, *(a3 + 56));
    }

    goto LABEL_330;
  }

  objc_opt_class();
  [*(a1 + 64) smartFieldAtCharIndex:v227 attributeKind:7 effectiveRange:&settings];
  v66 = TSUDynamicCast();
  if (v66)
  {
    TSWPParagraphTypesetter::enableRubyLayoutForField(*(a1 + 232), v66);
  }

  TSWPLineFragment::saveLayoutState(v12);
  v67 = 0;
  alloca = *MEMORY[0x277CBECE8];
  while (1)
  {
    v224 = v67;
    if (v67)
    {
      TSWPLineFragment::restoreLayoutState(v12);
    }

    if ((*(a1 + 88) & 1) == 0)
    {
LABEL_151:
      if (*(a1 + 31) != 1 || *(a1 + 104) != 1)
      {
        v90 = TSWPCoreTextTypesetter::pCTTypesetter(a1);
        v65 = MEMORY[0x26D6A9050](v90, v14, v62, v38) + v14;
        v227 = v65;
        if (v65 > *(a1 + 56))
        {
          v91 = [MEMORY[0x277D6C290] currentHandler];
          v92 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPCoreTextTypesetter::layoutLine(const TSWPLayoutState *, TSWPTypesetterParamBlock *)"}];
          [v91 handleFailureInFunction:v92 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 1476, @"Bad endCharIndex"}];
        }

        if (!v65 || (*(a3 + 145) & 1) != 0 || v65 >= *(a1 + 56) || (TSWPCoreTextTypesetter::pCanBreakLineInRange(a1, v14, v65) & 1) != 0)
        {
          if (v65 > v14)
          {
            v229 = *MEMORY[0x277D6C268];
            objc_opt_class();
            [*(a1 + 64) smartFieldAtCharIndex:v65 attributeKind:7 effectiveRange:&v229];
            v93 = TSUDynamicCast();
            if (v93)
            {
              if (v229.length + v229.location > v65)
              {
                IsDisabledForField = TSWPParagraphTypesetter::rubyLayoutIsDisabledForField(*(a1 + 232), v93);
                location = v229.location;
                if ((IsDisabledForField & 1) == 0)
                {
                  if (v229.location <= v14 && *(a3 + 145) == 1)
                  {
                    TSWPParagraphTypesetter::disableRubyLayoutForField(*(a1 + 232), v93);
                    location = v229.location;
                  }

                  else
                  {
                    if (v229.location <= v14)
                    {
                      v65 = v14;
                    }

                    else
                    {
                      v65 = v229.location;
                    }

                    v227 = v65;
                  }
                }

                if (v65 == location + v229.length - 1)
                {
                  v227 = ++v65;
                }
              }
            }
          }
        }

        else
        {
          v227 = v14;
          v96 = v12[22];
          v65 = v14;
          if (v96)
          {
            TSWPListLabel::~TSWPListLabel(v96);
            MEMORY[0x26D6A9A30]();
            v12[22] = 0;
            v65 = v14;
          }
        }

        goto LABEL_273;
      }

      v87 = TSWPCoreTextTypesetter::pCTTypesetter(a1);
      v65 = MEMORY[0x26D6A9040](v87, v14, v62, v38) + v14;
      v227 = v65;
      v88 = [*(a1 + 64) length];
      objc_opt_class();
      [*(a1 + 64) smartFieldAtCharIndex:v65 attributeKind:7 effectiveRange:&settings];
      v221 = TSUDynamicCast();
      v89 = v65;
      if (v221)
      {
        v89 = v65;
        if (*&settings.spec <= v14)
        {
          if (TSWPParagraphTypesetter::isZeroWidthTrailingSpace(*(a1 + 232), v65))
          {
            v89 = v65 + 1;
            v227 = v65 + 1;
          }

          else if (*(a3 + 145) == 1)
          {
            TSWPParagraphTypesetter::disableRubyLayoutForField(*(a1 + 232), v221);
            v89 = v65;
          }

          else
          {
            v89 = v65;
            if (*(a3 + 146) == 1)
            {
              v227 = v14;
              v89 = v14;
            }
          }
        }
      }

      if (v89 >= v88)
      {
        goto LABEL_268;
      }

      v97 = *(*(a1 + 232) + 56);
      v98 = [v97 length];
      v99 = v14;
      if (v98 > v14)
      {
        v100 = [objc_msgSend(v97 "string")];
        v99 = v100 + v101;
      }

      if (v89 <= v99)
      {
        goto LABEL_268;
      }

      if (TSWPCoreTextTypesetter::pKinsokuCanBreak(a1, &v227, &settings))
      {
        v102 = *(a1 + 80);
        v103 = v227;
        if (v227)
        {
          v104 = [objc_msgSend(*(*(a1 + 232) + 56) "string")];
        }

        else
        {
          v104 = 0;
        }

        v114 = *(v102 + 2 * v104);
        v115 = IsParagraphBreakingCharacter(*(v102 + 2 * v104));
        if (v114 == 8232)
        {
          v116 = 1;
        }

        else
        {
          v116 = v115;
        }

        if ((v116 & 1) == 0)
        {
          if (v103 < v88)
          {
            while (IsWhitespaceCharacter(*(*(a1 + 80) + 2 * v103)))
            {
              v119 = IsBreakingSpaceCharacter(*(*(a1 + 80) + 2 * v103));
              v120 = v103 + 1;
              v121 = v103 + 1 >= v88 || v119;
              if ((v121 & 1) == 0 && !IsBreakingSpaceCharacter(*(*(a1 + 80) + 2 * v103 + 2)))
              {
                v227 = v103;
                v151 = *(*(a1 + 80) + 2 * v103 + 2);
                v152 = IsParagraphBreakingCharacter(*(*(a1 + 80) + 2 * v103 + 2)) ^ 1;
                if (v151 == 8232)
                {
                  LOBYTE(v152) = 0;
                }

                if ((v152 & 1) == 0)
                {
                  v117 = 0;
                  v118 = 0;
                  ++v103;
                  goto LABEL_230;
                }

                while (1)
                {
LABEL_256:
                  while (v227)
                  {
                    v124 = [objc_msgSend(*(*(a1 + 232) + 56) "string")];
                    if (v124 <= v14)
                    {
                      break;
                    }

                    v227 = v124;
                    if (TSWPCoreTextTypesetter::pKinsokuCanBreak(a1, &v227, 0))
                    {
                      goto LABEL_268;
                    }
                  }

                  v227 = v65;
                  if (*(a3 + 145) != 1)
                  {
                    goto LABEL_268;
                  }

                  objc_opt_class();
                  v125 = *(a1 + 64);
                  if (v65)
                  {
                    v126 = [objc_msgSend(*(*(a1 + 232) + 56) "string")];
                  }

                  else
                  {
                    v126 = 0;
                  }

                  [v125 smartFieldAtCharIndex:v126 attributeKind:7 effectiveRange:&settings];
                  v221 = TSUDynamicCast();
                  if (!v221)
                  {
                    goto LABEL_273;
                  }

                  if (TSWPParagraphTypesetter::rubyLayoutIsDisabledForField(*(a1 + 232), v221))
                  {
                    goto LABEL_269;
                  }

                  TSWPParagraphTypesetter::disableRubyLayoutForField(*(a1 + 232), v221);
                }
              }

              ++v103;
              if (v88 == v120)
              {
                v103 = v88;
                break;
              }
            }
          }

          v117 = 0;
          v118 = 0;
LABEL_230:
          v227 = v103;
          goto LABEL_247;
        }

        goto LABEL_219;
      }

      v103 = v227;
      v105 = *(*(a1 + 232) + 56);
      v106 = v227;
      if ([v105 length] > v106)
      {
        v107 = [objc_msgSend(v105 "string")];
        v106 = v107 + v108;
      }

      v229.location = v106;
      if (v106 >= *&settings.spec && v106 - *&settings.spec < settings.valueSize && *(*(a1 + 80) + 2 * v106) == kRubyEndDummySpaceCharacter)
      {
        v229.location = ++v106;
      }

      if (v106 < v88)
      {
        if (!TSWPCoreTextTypesetter::pKinsokuCanBreak(a1, &v229, 0))
        {
          goto LABEL_200;
        }

        v106 = v229.location;
      }

      if (v106 == v88 && IsWhitespaceCharacter(*(*(a1 + 80) + 2 * v103)))
      {
LABEL_200:
        v109 = v103;
        if (v103 < v88)
        {
          v109 = v103;
          while (IsWhitespaceCharacter(*(*(a1 + 80) + 2 * v109)))
          {
            if (v88 == ++v109)
            {
              goto LABEL_234;
            }
          }
        }

        v225 = v109;
        if (v109 != v88)
        {
          if (!TSWPCoreTextTypesetter::pKinsokuCanBreak(a1, &v225, 0))
          {
            v118 = 1;
            goto LABEL_235;
          }

          v88 = v225;
        }

LABEL_234:
        v118 = 0;
        v227 = v88;
        v103 = v88;
LABEL_235:
        v117 = 0;
        goto LABEL_247;
      }

      if (v224)
      {
LABEL_219:
        v117 = 0;
        v118 = 0;
        goto LABEL_247;
      }

      if (v14 >= v103)
      {
        v113 = 1;
      }

      else
      {
        v110 = 0.0;
        v111 = v14;
        do
        {
          v110 = v110 + OikomiSquishAmountForCharacter(*(*(a1 + 80) + 2 * v111++));
        }

        while (v110 < 1.0 && v111 < v103);
        v113 = v110 < 1.0;
      }

      if (v106 < v88)
      {
        while (IsWhitespaceCharacter(*(*(a1 + 80) + 2 * v106)))
        {
          if (v88 == ++v106)
          {
            v106 = v88;
            break;
          }
        }
      }

      v225 = v106;
      if (v113)
      {
        goto LABEL_242;
      }

      if (v106 != v88)
      {
        if (!TSWPCoreTextTypesetter::pKinsokuCanBreak(a1, &v225, 0))
        {
LABEL_242:
          v117 = 0;
          v118 = 1;
          goto LABEL_247;
        }

        v88 = v225;
      }

      v227 = v88;
      TSWPLineFragment::setOikomiSquish(v12, 1);
      v118 = 0;
      v117 = 1;
      v103 = v88;
LABEL_247:
      if (v117 & 1) != 0 || (v118)
      {
        goto LABEL_255;
      }

      if (!v103)
      {
        goto LABEL_268;
      }

      v122 = [objc_msgSend(*(*(a1 + 232) + 56) "string")];
      if (!v122 || v122 >= v103)
      {
LABEL_255:
        if (v118)
        {
          goto LABEL_256;
        }
      }

      else
      {
        CanBreak = TSWPCoreTextTypesetter::pKinsokuCanBreak(a1, &v227, 0);
        if ((CanBreak & 1) == 0)
        {
          goto LABEL_256;
        }
      }

LABEL_268:
      v65 = v227;
      if (v221)
      {
LABEL_269:
        if (settings.valueSize + *&settings.spec > v65 && v65 == settings.valueSize + *&settings.spec - 1)
        {
          v227 = ++v65;
LABEL_274:
          if (*(*(a1 + 80) + 2 * v65 - 2) == 173)
          {
            v231.length = v65 + ~v14;
            v231.location = v14;
            if (TSWPCoreTextTypesetter::pRoomForHyphen(a1, v231, v62, 45, v12))
            {
              TSWPLineFragment::setHyphenated(v12, 1);
            }

            else
            {
              v129 = [*(a1 + 64) wordAtCharIndex:v65 includePreviousWord:0];
              if (v14 <= v129)
              {
                v130 = v129;
              }

              else
              {
                v130 = v14;
              }

              v131 = v65 - 1;
              if (v65 - 1 <= v130)
              {
LABEL_286:
                v227 = v131;
                v65 = v131;
              }

              else
              {
                v132 = v65 - 2;
                while (1)
                {
                  if (*(*(a1 + 80) + 2 * v132) == 173)
                  {
                    v232.length = v132 - v14;
                    v232.location = v14;
                    if (TSWPCoreTextTypesetter::pRoomForHyphen(a1, v232, v62, 45, v12))
                    {
                      break;
                    }
                  }

                  v133 = v132 - 1;
                  v7 = v132-- > v130;
                  if (!v7)
                  {
                    v131 = v133 + 1;
                    goto LABEL_286;
                  }
                }

                v65 = v132 + 1;
                v227 = v65;
                TSWPLineFragment::setHyphenated(v12, 1);
              }
            }
          }

          goto LABEL_287;
        }
      }

LABEL_273:
      if (!v65)
      {
        goto LABEL_289;
      }

      goto LABEL_274;
    }

    v68 = TSWPCoreTextTypesetter::pCTTypesetter(a1);
    v69 = MEMORY[0x26D6A9040](v68, v14, v62, v38);
    v65 = v69 + v14;
    v227 = v69 + v14;
    v70 = *(a1 + 56);
    if (v69 + v14 > v70)
    {
      v71 = [MEMORY[0x277D6C290] currentHandler];
      v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPCoreTextTypesetter::layoutLine(const TSWPLayoutState *, TSWPTypesetterParamBlock *)"}];
      [v71 handleFailureInFunction:v72 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 1557, @"Bad endCharIndex"}];
      v70 = *(a1 + 56);
    }

    v73 = v65 < v70;
    if (v65 && v65 < v70)
    {
      v74 = *(*(a1 + 80) + 2 * v65 - 2);
      v75 = IsParagraphBreakingCharacter(*(*(a1 + 80) + 2 * v65 - 2));
      if (v74 == 8232)
      {
        v76 = 1;
      }

      else
      {
        v76 = v75;
      }

      if (v76)
      {
        LOBYTE(v73) = 0;
        goto LABEL_137;
      }
    }

    else if (v65 >= v70)
    {
      goto LABEL_135;
    }

    if (!IsBreakingSpaceCharacter(*(*(a1 + 80) + 2 * v65)))
    {
      goto LABEL_136;
    }

    v77 = v14 + 1 + v69;
    while (1)
    {
      v65 = v77;
      v78 = *(a1 + 56);
      if (v65 >= v78)
      {
        break;
      }

      v79 = IsBreakingSpaceCharacter(*(*(a1 + 80) + 2 * v65));
      v77 = v65 + 1;
      if (!v79)
      {
        v78 = *(a1 + 56);
        break;
      }
    }

    v227 = v65;
    if (v65 < v78)
    {
      v80 = *(*(a1 + 80) + 2 * v65);
      v81 = IsParagraphBreakingCharacter(*(*(a1 + 80) + 2 * v65)) ^ 1;
      if (v80 == 8232)
      {
        LOBYTE(v81) = 0;
      }

      if ((v81 & 1) == 0)
      {
        LOBYTE(v73) = 0;
        v227 = ++v65;
LABEL_137:
        v82 = *(*(a1 + 80) + 2 * v65 - 2);
        v83 = IsHyphenableCharacter(unsigned short)::sChars;
        if (!IsHyphenableCharacter(unsigned short)::sChars)
        {
          IsHyphenableCharacter(unsigned short)::sChars = CFCharacterSetCreateWithCharactersInString(alloca, @"-—–‐‒−﹣－﹘");

          v83 = IsHyphenableCharacter(unsigned short)::sChars;
        }

        if (CFCharacterSetIsCharacterMember(v83, v82))
        {
          v84 = 0;
        }

        else
        {
          v84 = v73;
        }

        if (!v84)
        {
          goto LABEL_287;
        }

        goto LABEL_145;
      }
    }

LABEL_135:
    v73 = 0;
LABEL_136:
    if (v65)
    {
      goto LABEL_137;
    }

    if (!v73)
    {
      goto LABEL_289;
    }

LABEL_145:
    if (*(*(a1 + 80) + 2 * v65) != -4 || (v85 = [*(a1 + 64) attachmentAtCharIndex:v65], !objc_msgSend(v85, "isDrawable")) || objc_msgSend(v85, "isAnchored"))
    {
      v229.location = v14;
      v229.length = v65 - v14;
      v86 = TSWPCoreTextTypesetter::pHyphenateLocalRange(a1, &v229, a2, v62, v12);
      if (v86 == 1)
      {
        TSWPLineFragment::setHyphenated(v12, 1);
        v65 = v229.length + v229.location;
        v227 = v229.length + v229.location;
      }

      else if (v86 == -1)
      {
        goto LABEL_151;
      }
    }

LABEL_287:
    if (v65 > *(a1 + 56))
    {
      v134 = [MEMORY[0x277D6C290] currentHandler];
      v135 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPCoreTextTypesetter::layoutLine(const TSWPLayoutState *, TSWPTypesetterParamBlock *)"}];
      [v134 handleFailureInFunction:v135 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 1617, @"Bad localEndCharIndex"}];
    }

LABEL_289:
    v136 = [*(a1 + 64) charIndexMappedToStorage:v65];
    if (v136 < [*(a1 + 16) length])
    {
      objc_opt_class();
      [*(a1 + 64) attachmentAtCharIndex:v65];
      v138 = TSUDynamicCast();
      if (!v138 || ([v138 isPartitioned] & 1) == 0)
      {
        if (v14 < v65)
        {
          while (1)
          {
            v139 = v65 - 1;
            if ([*(a1 + 64) characterAtIndex:v65 - 1] != 65532)
            {
              break;
            }

            objc_opt_class();
            [*(a1 + 64) attachmentAtCharIndex:v65 - 1];
            v140 = TSUDynamicCast();
            v141 = v140;
            if (!v140 || ![v140 isAnchored] || objc_msgSend(objc_msgSend(objc_msgSend(v141, "drawable"), "exteriorTextWrap"), "isHTMLWrap"))
            {
              break;
            }

            --v65;
            if (v14 >= v139)
            {
              v65 = v14;
              break;
            }
          }
        }

        v227 = v65;
      }
    }

    if (v14 == v65)
    {
      if (!*(a1 + 56) || *(a3 + 145) != 1)
      {
LABEL_309:
        TSWPCoreTextTypesetter::createLineRefForEmptyLineFragment(a1, a2, v12, 0, v38, v137);
LABEL_310:
        v65 = v14;
        goto LABEL_311;
      }

      v142 = [*(a1 + 64) charIndexMappedFromStorage:{TSWPNextCharFromTextSource(objc_msgSend(*(a1 + 64), "charIndexMappedToStorage:", v14), *(a1 + 64))}];
      v65 = v142;
      v227 = v142;
      if (*(*(a1 + 232) + 72) && v142 && v142 == *(a1 + 56) - 1 && *(*(a1 + 80) + 2 * v142 - 2) != 8232)
      {
        v65 = v142 + 1;
        v227 = v142 + 1;
      }
    }

    if (v14 == v65)
    {
      goto LABEL_309;
    }

    v12[1] = [*(a1 + 64) charIndexMappedToStorage:v65] - *v12;
    v144 = *(a3 + 32);
    TSWPLineFragment::setTypesetterPos(v12, v38, v61);
    if (!TSWPLineFragment::shareLineRefs(v12, *(a3 + 152)))
    {
      v145 = *(a3 + 56);
      if ((v145 & 0x10000) == 0)
      {
        TSWPCoreTextTypesetter::createLineRefsForLineFragment(a1, v12, a2, (v144 & 0xC) != 0, v145);
        if ((*(a3 + 145) & 1) == 0)
        {
          v146 = v12[24];
          v147 = *(v12 + 6);
          [*(a2 + 104) wpBounds];
          v149 = v148;
          v150 = *(v12 + 27);
          if (v147 - v148 + v150 - CTLineGetTrailingWhitespaceWidth(*v146) > v61 + 0.25)
          {
            v227 = v14;
            v12[1] = 0;
            TSWPCoreTextTypesetter::createLineRefForEmptyLineFragment(a1, a2, v12, 0, v38, v147 - v149);
            goto LABEL_310;
          }
        }
      }
    }

LABEL_311:
    if ((TSWPParagraphTypesetter::lineNeedsRecutting(*(a1 + 232), v12, v61 - v38) & 1) == 0)
    {
      break;
    }

    if (v224 >= 2)
    {
      goto LABEL_381;
    }

LABEL_316:
    v67 = v224 + 1;
  }

  v143 = *(a1 + 104) & (*(v12 + 25) >> 7);
  if (v224 <= 1 && v143)
  {
    goto LABEL_316;
  }

  if (!v143)
  {
    goto LABEL_330;
  }

LABEL_381:
  v200 = [MEMORY[0x277D6C290] currentHandler];
  v201 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPCoreTextTypesetter::layoutLine(const TSWPLayoutState *, TSWPTypesetterParamBlock *)"}];
  [v200 handleFailureInFunction:v201 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 1705, @"Line not cut correctly, but maximum number of tries (%u) exceeded.", 3}];
LABEL_330:
  v12[1] = [*(a1 + 64) charIndexMappedToStorage:v65] - *v12;
  v153 = v65 - v14;
  if (v65 <= v14)
  {
    v154 = 0;
    *(a3 + 216) = 0;
  }

  else
  {
    *(a3 + 216) = [*(a1 + 64) charIndexMappedToStorage:v65 - 1];
    v154 = [*(a1 + 64) characterAtIndex:v65 - 1];
  }

  *(a3 + 208) = v154;
  if (v65 >= *(a1 + 56))
  {
    v153 -= *(*(a1 + 232) + 72) != 0;
  }

  TSWPCoreTextTypesetter::pCalcHeightInfo(a1, a2, a3, v14, v153);
  if ((*(a3 + 58) & 1) == 0)
  {
    TSWPLineFragment::adjustBreakLine(v12);
  }

  RubyLineRefsForLineFragment = TSWPParagraphTypesetter::createRubyLineRefsForLineFragment(*(a1 + 232), v12);
  *&settings.spec = 0;
  v229.location = 0;
  TSWPCoreTextTypesetter::pAdjustEmphasisMarksForLineFragment(a1, a2, v156, *(a3 + 200), &settings, &v229.location);
  TSWPParagraphTypesetter::createTateChuYokoLineRefsForLineFragment(*(a1 + 232), v12);
  v157 = *&settings.spec;
  if (RubyLineRefsForLineFragment >= *&settings.spec)
  {
    v157 = RubyLineRefsForLineFragment;
  }

  if (v157 > 0.0)
  {
    v158 = *(v12 + 18);
    v159 = v157 - (*(a3 + 168) + v158);
    if (v159 > 0.0)
    {
      *(v12 + 18) = v158 + v159;
      *(v12 + 13) = v159 + *(v12 + 13);
      *(v12 + 9) = v159 + *(v12 + 9);
    }
  }

  v160 = *&v229.location;
  if (*&v229.location > 0.0)
  {
    v161 = *(v12 + 17);
    v162 = *(v12 + 19);
    v163 = v161 + v162;
    v164 = *&v229.location + v161;
    *(v12 + 17) = v164;
    v165 = fmax(v162 - v160, 0.0);
    *(v12 + 19) = v165;
    v166 = v164 + v165 - v163;
    if (v166 > 0.0)
    {
      *(v12 + 13) = v166 + *(v12 + 13);
      *(v12 + 9) = v166 + *(v12 + 9);
    }
  }

  TSWPCoreTextTypesetter::pAdjustErasableBounds(a1, a2, v12);
  v167 = *v12;
  v168 = v12[1];
  v169 = [*(a1 + 16) range];
  if (v168 + v167 == v169 + v170)
  {
    *(v12 + 6) |= 0x200000u;
  }

  if (*(v12 + 18) == -3.40282347e38)
  {
    v171 = [MEMORY[0x277D6C290] currentHandler];
    v172 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPCoreTextTypesetter::layoutLine(const TSWPLayoutState *, TSWPTypesetterParamBlock *)"}];
    [v171 handleFailureInFunction:v172 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 1772, @"Bad leading"}];
  }

  if (v12[25] == v12[24] && (*(a3 + 58) & 1) == 0)
  {
    v173 = [MEMORY[0x277D6C290] currentHandler];
    v174 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPCoreTextTypesetter::layoutLine(const TSWPLayoutState *, TSWPTypesetterParamBlock *)"}];
    [v173 handleFailureInFunction:v174 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 1773, @"Bad lineRef count"}];
  }

  if (v65 > *(a1 + 56))
  {
    v175 = [MEMORY[0x277D6C290] currentHandler];
    v176 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPCoreTextTypesetter::layoutLine(const TSWPLayoutState *, TSWPTypesetterParamBlock *)"}];
    [v175 handleFailureInFunction:v176 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 1774, @"Bad endCharIndex"}];
  }

  v177 = *v12;
  if (!v14 && v177 != *(a1 + 40))
  {
    v178 = [MEMORY[0x277D6C290] currentHandler];
    v179 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPCoreTextTypesetter::layoutLine(const TSWPLayoutState *, TSWPTypesetterParamBlock *)"}];
    [v178 handleFailureInFunction:v179 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 1775, @"First line should lie at the beginning of the paragraph"}];
    v177 = *v12;
  }

  v180 = v12[1];
  if (v65 == *(a1 + 56) && v180 + v177 != *(a1 + 48) + *(a1 + 40))
  {
    v181 = [MEMORY[0x277D6C290] currentHandler];
    v182 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPCoreTextTypesetter::layoutLine(const TSWPLayoutState *, TSWPTypesetterParamBlock *)"}];
    [v181 handleFailureInFunction:v182 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 1776, @"Last line should reach the end of the paragraph"}];
    v177 = *v12;
    v180 = v12[1];
  }

  return v180 + v177;
}

__CFString *TSWPCoreTextTypesetter::pNumberedListLabel(TSWPCoreTextTypesetter *this, const TSWPLayoutState *a2, TSWPParagraphEnumerator *a3, unint64_t a4, _BOOL8 a5)
{
  if (a4 >= 9)
  {
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSWPCoreTextTypesetter::pNumberedListLabel(const TSWPLayoutState *, TSWPParagraphEnumerator, TSWPParagraphLevel, BOOL)"}];
    [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 1797, @"illegal list level"}];
    return &stru_287D36338;
  }

  v10 = TSWPParagraphEnumerator::paragraphListStyle(a3);
  v11 = [(TSSStyle *)v10 valueForProperty:184];
  if (v11)
  {
    v12 = [objc_msgSend(v11 objectAtIndexedSubscript:{a4), "intValue"}];
  }

  else
  {
    v12 = +[TSWPListStyle defaultLabelNumberType];
  }

  v16 = v12;
  v17 = TSWPParagraphEnumerator::paragraphListNumber(a3, v31);
  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v31[0])
    {
      goto LABEL_15;
    }

    return &stru_287D36338;
  }

  v17 = TSWPParagraphEnumerator::paragraphListStart(a3);
  if (!v17)
  {
    TopicNumberForList = TSWPTopicNumberHints::nextTopicNumberForList(*(this + 35), v10, a4);
    v19 = TSWPParagraphEnumerator::operator!=(a3, a2 + 3);
    v20 = TopicNumberForList - 1;
    if (TopicNumberForList - 1 <= 1)
    {
      v20 = 1;
    }

    if (v19)
    {
      TopicNumberForList = v20;
    }

    goto LABEL_16;
  }

LABEL_15:
  TopicNumberForList = v17;
LABEL_16:
  v21 = [(TSSStyle *)v10 valueForProperty:185];
  if (v21)
  {
    v22 = [objc_msgSend(v21 objectAtIndexedSubscript:{a4), "BOOLValue"}];
  }

  else
  {
    v22 = +[TSWPListStyle defaultTieredNumber];
  }

  v23 = v22;
  if (HIDWORD(TopicNumberForList))
  {
    TSWPCoreTextTypesetter::pNumberedListLabel();
    TopicNumberForList = 0xFFFFFFFFLL;
  }

  if ([(TSWPListStyle *)v10 labelTypeForLevel:a4]== 3)
  {
    v15 = [MEMORY[0x277CCACA8] stringForValue:TopicNumberForList withListNumberFormat:v16 includeFormatting:a5];
  }

  else
  {
    v15 = &stru_287D36338;
  }

  v24 = v23 ^ 1;
  if (!a4)
  {
    v24 = 1;
  }

  if ((v24 & 1) == 0)
  {
    v25 = TSWPTopicNumberHints::previousCharIndexForList(*(this + 35), v10, a4 - 1);
    if (v25 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = [*(this + 2) paragraphIndexAtCharIndex:v25];
      TSWPParagraphEnumerator::TSWPParagraphEnumerator(&v30, *(this + 2), [*(a2 + 13) styleProvider], v26, v26 + 1, 1);
      if (TSWPParagraphEnumerator::paragraphLevel(&v30) < a4 && [TSWPParagraphEnumerator::paragraphListStyle(&v30) labelTypeForLevel:a4 - 1] == 3)
      {
        TSWPParagraphEnumerator::TSWPParagraphEnumerator(&v29, &v30);
        v27 = TSWPCoreTextTypesetter::pNumberedListLabel(this, a2, &v29, a4 - 1, a5);
        TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v29);
        v15 = [v27 stringByAppendingString:v15];
      }

      TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v30);
    }
  }

  return v15;
}

void sub_26C980A74(_Unwind_Exception *a1, TSWPParagraphEnumerator *a2, TSWPParagraphEnumerator *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&a10);
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&a17);
  _Unwind_Resume(a1);
}

uint64_t TSWPCoreTextTypesetter::pLabelFont(TSWPCoreTextTypesetter *this, NSString *a2, CFTypeRef cf2, CGFloat a4)
{
  v4 = a4;
  if (!*(this + 31) || *(this + 34) != a4 || (v11 = *(this + 32), v11 != a2) && ![(NSString *)v11 isEqual:a2]|| (v12 = *(this + 33)) == 0 || !CFEqual(v12, cf2))
  {
    TSWPCoreTextTypesetter::pDestroyCachedLabelFont(this);
    *(this + 32) = a2;
    *(this + 33) = cf2;
    CFRetain(cf2);
    *(this + 34) = v4;
    v8 = *(this + 32);
    if (v8)
    {
      v9 = CTFontDescriptorCreateWithNameAndSize(v8, 0.0);
      v4 = *(this + 34);
    }

    else
    {
      v9 = 0;
    }

    *(this + 31) = CTFontCreateCopyWithAttributes(*(this + 33), v4, 0, v9);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  return *(this + 31);
}

CFStringRef TSWPListLabel::setListLabelString(TSWPListLabel *this, CFStringRef theString)
{
  v4 = *(this + 12);
  if (v4)
  {
    CFRelease(v4);
  }

  result = CFStringCreateCopy(0, theString);
  *(this + 12) = result;
  return result;
}

void TSWPCoreTextTypesetter::createLineRefForEmptyLineFragment(id *this, id *a2, TSWPLineFragment *a3, int a4, double a5, double a6)
{
  v35 = *MEMORY[0x277D85DE8];
  v13 = *(a3 + 24);
  v12 = *(a3 + 25);
  v11 = a3 + 192;
  while (v12 != v13)
  {
    v12 -= 6;
    std::allocator<TSWPLineRef>::destroy[abi:ne200100](v11, v12);
  }

  *(a3 + 25) = v13;
  v14 = TSWPCoreTextTypesetter::pLineRefStartForLineFragment(this, a2, a3, a5);
  v15 = MEMORY[0x277D6C268];
  if (a4)
  {
    v16 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, 25.1950798, 0);
    [v16 setObject:UIFontForLanguage forKeyedSubscript:*MEMORY[0x277CC4838]];
    CFRelease(UIFontForLanguage);
    v18 = [objc_msgSend(a2[13] "storage")];
    if (v18)
    {
      v19 = v18;
      [v16 setObject:v18 forKeyedSubscript:@"TSWPUnadjustedFont"];
      CFRelease(v19);
    }

    v20 = CFAttributedStringCreate(0, @"\n", v16);
    v21 = CTLineCreateWithAttributedString(v20);
    if (v20)
    {
      CFRelease(v20);
    }

    cf[0] = v21;
    cf[1] = *&v14;
    *&v30[0] = 0;
    *(v30 + 8) = *MEMORY[0x277D6C268];
    DWORD2(v30[1]) = 0;
    if (v21)
    {
      CFRetain(v21);
    }

    if (*(a3 + 25) != *(a3 + 24))
    {
      v22 = [MEMORY[0x277D6C290] currentHandler];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPLineFragment::setLineRef(const TSWPLineRef &)"];
      [v22 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.h"), 518, @"Line ref is already set"}];
    }

    std::vector<TSWPLineRef>::assign(v11, 1uLL, cf);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    *&v34[7] = 0x10000;
    v33 = 0;
    *v34 = 0;
    v32 = 0;
    v31 = 0u;
    memset(v30, 0, sizeof(v30));
    *cf = 0u;
    [this[8] attributesAtCharIndex:objc_msgSend(this[8] attributesOfInterest:"charIndexMappedFromStorage:" attributesTable:*a3 effectiveRange:{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), &v33, cf, 0}];
    v24 = [*(&v31 + 1) author];
    if (v24)
    {
      TSWPCoreTextTypesetter::pAddHighlightAdornmentToLineFragment(v24, a3, 7.0, a5, v24);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if (*(a3 + 1))
    {
      *(a3 + 6) |= 0x800u;
      TSWPCoreTextTypesetter::pAddInvisibleBreakToLineFragment(this, a2, a3, a4, 0.0, 0);
    }
  }

  else
  {
    v25 = TSWPCoreTextTypesetter::createLineRefForEmptyLineFragment(TSWPLayoutState const*,TSWPLineFragment *,unsigned short,double,double)const::emptyLine;
    if (!TSWPCoreTextTypesetter::createLineRefForEmptyLineFragment(TSWPLayoutState const*,TSWPLineFragment *,unsigned short,double,double)const::emptyLine)
    {
      v26 = CFAttributedStringCreate(0, &stru_287D36338, 0);
      TSWPCoreTextTypesetter::createLineRefForEmptyLineFragment(TSWPLayoutState const*,TSWPLineFragment *,unsigned short,double,double)const::emptyLine = CTLineCreateWithAttributedString(v26);
      CFRelease(v26);
      v25 = TSWPCoreTextTypesetter::createLineRefForEmptyLineFragment(TSWPLayoutState const*,TSWPLineFragment *,unsigned short,double,double)const::emptyLine;
    }

    cf[0] = v25;
    cf[1] = *&v14;
    *&v30[0] = 0;
    *(v30 + 8) = *v15;
    DWORD2(v30[1]) = 0;
    if (v25)
    {
      CFRetain(v25);
    }

    if (*(a3 + 25) != *(a3 + 24))
    {
      v27 = [MEMORY[0x277D6C290] currentHandler];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPLineFragment::setLineRef(const TSWPLineRef &)"];
      [v27 handleFailureInFunction:v28 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.h"), 518, @"Line ref is already set"}];
    }

    std::vector<TSWPLineRef>::assign(v11, 1uLL, cf);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    *(a3 + 27) = a5;
  }

  *(a3 + 6) |= 0x4000u;
  TSWPCoreTextTypesetter::pApplyChangeTrackingToLineFragment(this, a3);
}

void sub_26C980FC8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSWPCoreTextTypesetter::pFindFontRunIndexForLocalCharIndex(TSWPCoreTextTypesetter *this, unint64_t a2)
{
  v4 = *(this + 27);
  if (!v4)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"uint TSWPCoreTextTypesetter::pFindFontRunIndexForLocalCharIndex(TSWPCharIndex) const"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 3745, @"Bad runCount"}];
    v4 = *(this + 27);
  }

  v7 = v4;
  if (v4 > 1)
  {
    v8 = (*(this + 15) + 104);
    v9 = 1;
    while (1)
    {
      v10 = *v8;
      v8 += 13;
      if (v10 > a2)
      {
        break;
      }

      if (v7 == ++v9)
      {
        return (v7 - 1);
      }
    }

    LODWORD(v7) = v9;
  }

  return (v7 - 1);
}

void TSWPCoreTextTypesetter::createLineRefsForLineFragment(uint64_t a1, TSWPLineFragment *this, uint64_t a3, int a4, int a5)
{
  v357 = *MEMORY[0x277D85DE8];
  v341 = 0.0;
  v340 = 0.0;
  TSWPLineFragment::getTypesetterPos(this, &v341, &v340);
  if (v340 - v341 <= 32000.0)
  {
    v6 = v340 - v341;
  }

  else
  {
    v6 = 32000.0;
  }

  v7 = this;
  if ((~*(this + 6) & 0x800002) == 0)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPCoreTextTypesetter::createLineRefsForLineFragment(TSWPLineFragment *, const TSWPLayoutState *, BOOL, TSWPLayoutFlags) const"}];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 2438, @"Hyphenation and line truncation should not occur at the same time"}];
    v7 = this;
  }

  if (TSWPLineFragment::isHyphenated(v7))
  {
    attributes.width = 0.0;
    v307[0] = 0;
    TSWPLineFragment::getHyphenInfo(this, &attributes, v307);
    if (!v307[0])
    {
      v307[0] = 45;
      GlyphRuns = CTLineGetGlyphRuns(0);
      v11 = GlyphRuns;
      if (GlyphRuns)
      {
        Count = CFArrayGetCount(GlyphRuns);
        ValueAtIndex = CFArrayGetValueAtIndex(v11, Count - 1);
        *&attributes.width = CTRunGetAttributes(ValueAtIndex);
      }
    }

    if ((v307[0] - 0x10000) >> 20)
    {
      v15 = 1;
      LOWORD(v14) = v307[0];
    }

    else
    {
      v14 = ((v307[0] - 0x10000) >> 10) | 0xFFFFD800;
      chars[1] = v307[0] & 0x3FF | 0xDC00;
      v15 = 2;
    }

    chars[0] = v14;
    v17 = *MEMORY[0x277CBECE8];
    v18 = CFStringCreateWithCharacters(*MEMORY[0x277CBECE8], chars, v15);
    v19 = CFAttributedStringCreate(v17, v18, *&attributes.width);
    line = CTLineCreateWithAttributedString(v19);
    TypographicBounds = CTLineGetTypographicBounds(line, 0, 0, 0);
    CFRelease(v19);
    CFRelease(v18);
  }

  else
  {
    line = 0;
    TypographicBounds = 0.0;
  }

  v20 = TSWPParagraphEnumerator::paragraphTextRange((a3 + 24));
  v21 = this;
  if (v20 != *(this + 2))
  {
    v22 = [MEMORY[0x277D6C290] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPCoreTextTypesetter::createLineRefsForLineFragment(TSWPLineFragment *, const TSWPLayoutState *, BOOL, TSWPLayoutFlags) const"}];
    [v22 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 2472, @"line fragment isn't from the current paragraph"}];
    v21 = this;
  }

  v24 = [*(a1 + 64) charRangeMappedFromStorage:{*v21, *(v21 + 1)}];
  v26 = v25;
  if (v25 < 0)
  {
    v27 = [MEMORY[0x277D6C290] currentHandler];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPCoreTextTypesetter::createLineRefsForLineFragment(TSWPLineFragment *, const TSWPLayoutState *, BOOL, TSWPLayoutFlags) const"}];
    [v27 handleFailureInFunction:v28 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 2474, @"Bad range length, goodbye cruel world."}];
  }

  v29 = v24 + v26;
  if (*(*(a1 + 232) + 72))
  {
    v30 = v24 + v26 == *(a1 + 56);
  }

  else
  {
    v30 = 0;
  }

  charIndex = (v24 + v26);
  if (v29)
  {
    v31 = *(*(a1 + 80) + 2 * v29 - 2) == 8232;
  }

  else
  {
    v31 = 0;
  }

  if (*(a3 + 388) == 3 && v29 < *(a1 + 56))
  {
    v32 = 0;
  }

  else
  {
    v32 = TSWPLineFragment::getOikomiSquish(this) ^ 1;
  }

  v269 = *(this + 6);
  v33 = TSWPCoreTextTypesetter::pCTTypesetter(a1);
  v245 = MEMORY[0x26D6A9020](v33, v24, v26, v341);
  if (!CTLineGetGlyphCount(v245))
  {
    v34 = [MEMORY[0x277D6C290] currentHandler];
    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPCoreTextTypesetter::createLineRefsForLineFragment(TSWPLineFragment *, const TSWPLayoutState *, BOOL, TSWPLayoutFlags) const"}];
    [v34 handleFailureInFunction:v35 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 2485, @"bad lineGlyphCount"}];
  }

  *(this + 6) = *(this + 6) & 0xFBFFFFFF | (([TSWPParagraphEnumerator::paragraphStyle((a3 + 24) 0)] != 0) << 26);
  v336 = 0;
  v337 = &v336;
  v338 = 0x2020000000;
  v339 = 1;
  v332 = 0;
  v333 = &v332;
  v334 = 0x2020000000;
  v335 = 0;
  v327[0] = MEMORY[0x277D85DD0];
  v327[1] = 3221225472;
  v328 = ___ZNK22TSWPCoreTextTypesetter29createLineRefsForLineFragmentEP16TSWPLineFragmentPK15TSWPLayoutStateb15TSWPLayoutFlags_block_invoke;
  v329 = &unk_279D4A0A0;
  v330 = &v336;
  v331 = &v332;
  if ([*(*(a1 + 232) + 56) hasColorGlyphsInRange:{v24, v26}])
  {
LABEL_32:
    *(v337 + 24) = 0;
    goto LABEL_39;
  }

  if (*(a3 + 512) == 1)
  {
    v36 = *(a3 + 184);
    if (v36)
    {
      if (*(a3 + 332) == 1)
      {
        v37 = [v36 labelTypeForLevel:*(a3 + 192)];
        if ((v37 - 2) < 2)
        {
          v38 = *(a3 + 96);
          attributes.width = *(a3 + 184);
          attributes.height = v38;
          v39 = [TSWPResolvePropertyForStyles(&attributes 2uLL];
          v328(v327, v39);
          goto LABEL_39;
        }

        if (v37 != 1)
        {
          goto LABEL_39;
        }

        goto LABEL_32;
      }
    }
  }

LABEL_39:
  v40 = 0.0;
  if ((*(this + 26) & 0x80) != 0 && (v41 = *(*(a1 + 120) + 104 * TSWPCoreTextTypesetter::pFindFontRunIndexForLocalCharIndex(a1, [*(a1 + 64) charIndexMappedFromStorage:*(this + 1) + *this]) + 32), v42 = CFDictionaryGetCount(v41), v43 = *MEMORY[0x277CBECE8], MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], v42 + 1, v41), CFDictionarySetValue(MutableCopy, @"__TSWPTruncationKey", MEMORY[0x277CBEC38]), v45 = CFAttributedStringCreate(v43, @"…", MutableCopy), CFRelease(MutableCopy), v244 = CTLineCreateWithAttributedString(v45), CFRelease(v45), v244))
  {
    v40 = CTLineGetTypographicBounds(v244, 0, 0, 0);
    v46 = CTLineGetTypographicBounds(v245, 0, 0, 0);
    TrailingWhitespaceWidth = CTLineGetTrailingWhitespaceWidth(v245);
    v48 = *(a3 + 336);
    if (v40 + v46 + v48 - TrailingWhitespaceWidth <= v6)
    {
      v52 = 1;
    }

    else
    {
      v49 = v46 - (TrailingWhitespaceWidth + v40 + v48);
      if (v40 <= v49)
      {
        TruncatedLine = CTLineCreateTruncatedLine(v245, v49, kCTLineTruncationEnd, v244);
        CFRelease(v244);
        v244 = 0;
        v40 = 0.0;
      }

      else
      {
        v50 = CFAttributedStringCreate(v43, &stru_287D36338, v41);
        TruncatedLine = CTLineCreateWithAttributedString(v50);
        CFRelease(v50);
      }

      CFRelease(v245);
      v52 = 1;
      v245 = TruncatedLine;
    }
  }

  else
  {
    v52 = 0;
    v244 = 0;
  }

  if ((v32 | v30 | v31))
  {
    v53 = this;
  }

  else
  {
    v6 = v6 - (TypographicBounds + v40);
    v53 = this;
    JustifiedLine = CTLineCreateJustifiedLine(v245, 1.0, v6);
    if (JustifiedLine)
    {
      CFRelease(v245);
      *(this + 6) &= ~0x8000u;
      v245 = JustifiedLine;
    }

    else
    {
      *(this + 6) |= 0x8000u;
      TSWPLineFragment::getOikomiSquish(this);
    }
  }

  v55 = *(a3 + 388);
  v250 = TypographicBounds + v40;
  v56 = v6 - (TypographicBounds + v40);
  v57 = v6 - TypographicBounds;
  if ((v269 & 0x1000) != 0)
  {
    v58 = 1.0;
  }

  else
  {
    v58 = 0.0;
  }

  if ((v269 & 0x1000) == 0)
  {
    v57 = v6;
  }

  v59 = 0.5;
  if (v55 == 2)
  {
    v60 = v6 - (TypographicBounds + v40);
  }

  else
  {
    v59 = 0.0;
    v60 = v6;
  }

  if (v55 != 3)
  {
    v58 = v59;
    v57 = v60;
  }

  if (v55 == 1)
  {
    v61 = 1.0;
  }

  else
  {
    v61 = v58;
  }

  if (v55 != 1)
  {
    v56 = v57;
  }

  if (a4)
  {
    v62 = 0.0;
  }

  else
  {
    v62 = v56;
  }

  PenOffsetForFlush = CTLineGetPenOffsetForFlush(v245, v61, v62);
  if (v52)
  {
    v64 = a3;
    if ((v269 & 0x1000) != 0)
    {
      PenOffsetForFlush = PenOffsetForFlush + *(a3 + 336) * (1.0 - v61);
    }

    else
    {
      PenOffsetForFlush = PenOffsetForFlush - *(a3 + 336) * v61;
    }
  }

  else
  {
    v64 = a3;
  }

  v65 = TSWPCoreTextTypesetter::pAdditionalOffsetForLineFragment(a1, v64, v53, a5);
  v67 = TSWPCoreTextTypesetter::pLineRefStartForLineFragment(v66, v64, v53, v341);
  BoundsWithOptions = CTLineGetBoundsWithOptions(v245, 0);
  x = BoundsWithOptions.origin.x;
  width = BoundsWithOptions.size.width;
  v253 = PenOffsetForFlush + v65 + v67;
  *(v53 + 27) = v253 + CTLineGetTypographicBounds(v245, 0, 0, 0);
  if (charIndex <= v24)
  {
    v72 = 0;
  }

  else
  {
    v70 = [*(a1 + 64) characterAtIndex:charIndex - 1];
    v71 = IsParagraphBreakingCharacter(v70);
    v72 = v70;
    v73 = v71 ^ 1;
    if (v70 == 8232)
    {
      v73 = 0;
    }

    if ((v73 & 1) == 0)
    {
      *(v53 + 6) |= 0x800u;
    }
  }

  if (v245)
  {
    v242 = v72;
    if (!*(v53 + 64))
    {
      *(v53 + 64) = CFAttributedStringGetString(*(*(a1 + 232) + 56));
    }

    v322 = v245;
    v323 = PenOffsetForFlush + v65 + v67;
    v324 = 0;
    v325 = *MEMORY[0x277D6C268];
    v326 = 0;
    CFRetain(v245);
    v248 = this + 192;
    if (*(this + 25) != *(this + 24))
    {
      v74 = [MEMORY[0x277D6C290] currentHandler];
      v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPLineFragment::setLineRef(const TSWPLineRef &)"];
      [v74 handleFailureInFunction:v75 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.h"), 518, @"Line ref is already set"}];
    }

    std::vector<TSWPLineRef>::assign(v248, 1uLL, &v322);
    obj = CTLineGetGlyphRuns(v245);
    v76 = [(__CFArray *)obj count];
    v256 = CTLineGetTrailingWhitespaceWidth(v322);
    v77 = 0.0;
    if ((v269 & 0x1000) != 0)
    {
      if (v256 == 0.0 && v76 && [*(a1 + 64) characterAtIndex:{objc_msgSend(*(a1 + 64), "charIndexMappedFromStorage:", TSWPLineFragment::leftMostCharIndex(this))}] == 9)
      {
        v78 = [(__CFArray *)obj objectAtIndex:0];
        v358.location = 0;
        v358.length = 1;
        CTRunGetAdvances(v78, v358, &attributes);
        v256 = attributes.width;
        v79 = -attributes.width;
      }

      else
      {
        *&v79 = CTLineGetBoundsWithOptions(v245, 1uLL);
      }

      if (iOSIsGreaterThan7(void)::onceToken != -1)
      {
        TSWPCoreTextTypesetter::createLineRefsForLineFragment();
      }

      if (iOSIsGreaterThan7(void)::result)
      {
        v77 = v79;
      }

      else
      {
        v77 = 0.0;
      }
    }

    *(this + 65) = v77;
    v80 = +[TSWPRenderer invisiblesFont];
    *&attributes.width = 0x100000001;
    v344 = 0;
    attributes.height = 0.0;
    cf = v80;
    *v346 = 0u;
    *v347 = 0u;
    v348 = 0u;
    *v349 = 0u;
    *v350 = 0u;
    v351 = 0u;
    *v352 = 0u;
    v353 = 0u;
    v81 = *MEMORY[0x277CBF348];
    v354 = 0u;
    v355 = v81;
    v356 = 0;
    CGColorRetain(0);
    if (cf)
    {
      CFRetain(cf);
    }

    *v307 = 0x100000003;
    v309 = 0;
    v308 = 0;
    v310 = v80;
    v311 = 0u;
    v312 = 0u;
    v313 = 0u;
    v314 = 0u;
    v315 = 0u;
    v316 = 0u;
    __src = 0u;
    v318 = 0u;
    v82 = *MEMORY[0x277CBF348];
    v319 = 0u;
    v320 = v82;
    v321 = 0;
    CGColorRetain(0);
    if (v310)
    {
      CFRetain(v310);
    }

    v305 = 0u;
    v306 = 0u;
    v303 = 0u;
    v304 = 0u;
    v83 = [(__CFArray *)obj countByEnumeratingWithState:&v303 objects:v342 count:16];
    v84 = this;
    if (!v83)
    {
      v264 = INFINITY;
      goto LABEL_338;
    }

    v266 = 0;
    v252 = v76 - 1;
    v264 = INFINITY;
    v246 = width + x;
    v260 = *v304;
    v257 = *MEMORY[0x277CC49C0];
    v249 = *MEMORY[0x277CC4A10];
    v247 = *MEMORY[0x277CC4A08];
    v255 = *MEMORY[0x277CC4838];
    allocator = *MEMORY[0x277CBECE8];
    while (1)
    {
      v267 = 0;
      v261 = v83;
      do
      {
        if (*v304 != v260)
        {
          objc_enumerationMutation(obj);
        }

        v85 = *(*(&v303 + 1) + 8 * v267);
        run = v85;
        StringRange = CTRunGetStringRange(v85);
        GlyphCount = CTRunGetGlyphCount(v85);
        v87 = CTRunGetAttributes(v85);
        v88 = v87;
        if (*(v337 + 24) == 1)
        {
          v89 = [(__CFDictionary *)v87 objectForKey:v257];
          v328(v327, v89);
          if (v337[3])
          {
            [-[TSWPLineFragment objectForKey:](v88 objectForKey:{v249), "floatValue"}];
            if (v90 != 0.0)
            {
              if ([(TSWPLineFragment *)v88 objectForKey:v247])
              {
                (v328)(v327);
              }
            }
          }
        }

        v91 = [*(a1 + 64) characterAtIndex:StringRange.location];
        *chars = 0x100000004;
        v289 = 0u;
        v290 = 0u;
        v291 = 0u;
        v292 = 0u;
        v293 = 0u;
        v294 = 0u;
        v295 = 0u;
        v296 = 0u;
        v297 = 0u;
        v298 = 0u;
        v299 = 0;
        v300 = *MEMORY[0x277CBF348];
        v301 = 0;
        CGColorRetain(0);
        if (v290)
        {
          CFRetain(v290);
        }

        v287 = *MEMORY[0x277CBF3A8];
        v286 = 0;
        v92 = [(TSWPLineFragment *)v88 objectForKeyedSubscript:@"emphasisMarks"];
        v93 = v92;
        if (v92)
        {
          v274 = 0;
          if ([(NSString *)v92 length]&& GlyphCount)
          {
            v274 = TSWPCoreTextTypesetter::pSetUpEmphasisMarkAdornments(a1, a3, chars, &run, v84, v93, &v286, &v287);
          }
        }

        else
        {
          v274 = 0;
        }

        if (v91 == 65532 || v91 == 14)
        {
          if (GlyphCount != 1)
          {
            v94 = [MEMORY[0x277D6C290] currentHandler];
            v95 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPCoreTextTypesetter::createLineRefsForLineFragment(TSWPLineFragment *, const TSWPLayoutState *, BOOL, TSWPLayoutFlags) const"}];
            [v94 handleFailureInFunction:v95 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 2783, @"Attachment or footnote spanning multiple characters"}];
          }

          v96 = [*(a1 + 64) attachmentOrFootnoteAtCharIndex:StringRange.location];
          v97 = [*(a1 + 64) charIndexMappedToStorage:StringRange.location];
          objc_opt_class();
          [TSUDynamicCast() drawable];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (![v96 isDrawable] || (objc_msgSend(v96, "isAnchored") & 1) != 0 || (objc_msgSend(v96, "isPartitioned") & 1) != 0)
          {
            if (([v96 elementKind] & 0x1E0) != 0)
            {
              v99 = [(TSWPLineFragment *)v88 objectForKeyedSubscript:kTSWPAttachmentMap];
              v100 = v99;
              if (v99)
              {
                if (![v99 lineRef])
                {
                  v101 = [MEMORY[0x277D6C290] currentHandler];
                  v102 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPCoreTextTypesetter::createLineRefsForLineFragment(TSWPLineFragment *, const TSWPLayoutState *, BOOL, TSWPLayoutFlags) const"}];
                  [v101 handleFailureInFunction:v102 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 2808, @"invalid nil value for '%s'", "attachmentMap.lineRef"}];
                }

                if ([v100 lineRef])
                {
                  v359.location = 0;
                  v359.length = 1;
                  CTRunGetPositions(v85, v359, &buffer.var0);
                  v103 = TSWPLineFragment::baselineAdjustAtCharIndex(v97, *(a1 + 16), *(a3 + 104), 0, [*(a3 + 104) scaleTextPercent]);
                  v104.f64[0] = v77 + v323;
                  v104.f64[1] = v103;
                  buffer.var0 = vaddq_f64(buffer.var0, v104);
                  v105 = [v100 lineRef];
                  *&v278.var0.x = v105;
                  *&v278.var0.y = buffer.var0;
                  v278.var2 = v97;
                  *&v278.var3 = 1;
                  v278.var4 = 0;
                  if (v105)
                  {
                    CFRetain(v105);
                  }

                  std::vector<TSWPLineRef>::push_back[abi:ne200100](v248, &v278);
                  if ([objc_msgSend(v100 "attachment")])
                  {
                    *(v84 + 6) |= 0x100000u;
                  }

                  if (*&v278.var0.x)
                  {
                    CFRelease(*&v278.var0.x);
                  }
                }
              }

              else
              {
                v112 = [MEMORY[0x277D6C290] currentHandler];
                v113 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPCoreTextTypesetter::createLineRefsForLineFragment(TSWPLineFragment *, const TSWPLayoutState *, BOOL, TSWPLayoutFlags) const"}];
                [v112 handleFailureInFunction:v113 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 2806, @"invalid nil value for '%s'", "attachmentMap"}];
              }
            }

            else if (([v96 elementKind] & 0x10) != 0)
            {
              v360.location = 0;
              v360.length = 1;
              CTRunGetPositions(v85, v360, &buffer.var0);
              buffer.var0.x = v323 + buffer.var0.x;
              objc_opt_class();
              v106 = COERCE_DOUBLE(TSUDynamicCast());
              *&v278.var0.y = buffer.var0;
              v278.var0.x = v106;
              v278.var2 = StringRange.location;
              if (v106 == 0.0)
              {
                v107 = [MEMORY[0x277D6C290] currentHandler];
                v108 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPUIAttachmentData::TSWPUIAttachmentData(TSWPUIGraphicalAttachment *, CGPoint &, CFIndex)"}];
                [v107 handleFailureInFunction:v108 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.h"), 58, @"invalid nil value for '%s'", "_attachment"}];
                v106 = v278.var0.x;
              }

              v109 = *&v106;
              v110 = *(v84 + 47);
              if (v110 >= *(v84 + 48))
              {
                v111 = std::vector<TSWPUIAttachmentData>::__emplace_back_slow_path<TSWPUIAttachmentData const&>(v84 + 368, &v278);
              }

              else
              {
                std::allocator_traits<std::allocator<TSWPUIAttachmentData>>::construct[abi:ne200100]<TSWPUIAttachmentData,TSWPUIAttachmentData const&,0>(v84 + 368, *(v84 + 47), &v278);
                v111 = v110 + 32;
                *(v84 + 47) = v110 + 32;
              }

              *(v84 + 47) = v111;
            }
          }

          else
          {
            v114 = TSWPLayoutChore::validatedLayoutForInlineAttachment(*(a1 + 8), v96, 0, 0);
            v115 = TSWPLineFragment::wpOffsetForCharIndex(v84, v97, 0, a4, 0);
            if (CTRunGetStatus(v85))
            {
              TSWPLineFragment::wpOffsetForInsertionPoint(v84, v97, 0, 1, 0);
              v115 = v116;
            }

            [v114 setAdjustedInterimPositionX:v115];
          }
        }

        else
        {
          isKindOfClass = 0;
        }

        v117 = [-[TSWPLineFragment objectForKeyedSubscript:](v88 objectForKeyedSubscript:{@"TSWPUnderline", "integerValue"}];
        v265 = [-[TSWPLineFragment objectForKeyedSubscript:](v88 objectForKeyedSubscript:{@"TSWPStrikethrough", "integerValue"}];
        v118 = [(TSWPLineFragment *)v88 objectForKeyedSubscript:@"TSWPTextBackgroundColor"];
        objc_opt_class();
        [(TSWPLineFragment *)v88 objectForKeyedSubscript:@"TSWPTextHighlightAuthorAttribute"];
        v262 = TSUDynamicCast();
        if (GlyphCount)
        {
          std::vector<long>::vector[abi:ne200100](v285, GlyphCount);
          v361.location = 0;
          v361.length = GlyphCount;
          CTRunGetStringIndices(v85, v361, v285[0]);
          std::vector<CGPoint>::vector[abi:ne200100](v284, GlyphCount);
          v362.location = 0;
          v362.length = GlyphCount;
          CTRunGetPositions(v85, v362, v284[0]);
          std::vector<CGSize>::vector[abi:ne200100](v283, GlyphCount);
          v363.location = 0;
          v363.length = GlyphCount;
          CTRunGetAdvances(v85, v363, v283[0]);
          if (*(*(a1 + 80) + 2 * *v285[0]) == kTateChuYokoDummySpaceCharacter && GlyphCount == 1 && (v119 = *(a1 + 232)) != 0)
          {
            TateChuYokoLineRefsForCharIndex = TSWPParagraphTypesetter::findTateChuYokoLineRefsForCharIndex(v119, *v285[0]);
            v121 = TateChuYokoLineRefsForCharIndex;
            ascent = 0.0;
            descent = 0.0;
            leading = 0.0;
            if (TateChuYokoLineRefsForCharIndex)
            {
              v122 = TateChuYokoLineRefsForCharIndex[4];
              ascent = TateChuYokoLineRefsForCharIndex[3] * 0.5;
              descent = ascent;
              v123 = v122 + TateChuYokoLineRefsForCharIndex[5] + TateChuYokoLineRefsForCharIndex[6];
              v273 = 1;
              goto LABEL_154;
            }
          }

          else
          {
            ascent = 0.0;
            descent = 0.0;
            leading = 0.0;
          }

          v364.location = 0;
          v364.length = 0;
          v123 = CTRunGetTypographicBounds(v85, v364, &ascent, &descent, &leading);
          v273 = 0;
          v121 = 0;
LABEL_154:
          Status = CTRunGetStatus(v85);
          v125 = *(a1 + 30);
          v126 = *(*(a1 + 120) + 104 * TSWPCoreTextTypesetter::pFindFontRunIndexForLocalCharIndex(a1, *v285[0]) + 24);
          v127 = [(TSWPLineFragment *)v88 objectForKeyedSubscript:v255];
          font = v127;
          v259 = v126;
          if (v127 != v126)
          {
            *(this + 6) |= 0x80u;
          }

          if ((v269 & 0x1000) != 0 || v266 != v252)
          {
            v129 = 0.0;
            if (((v266 == 0) & (v269 >> 12)) != 0)
            {
              v130 = v256;
            }

            else
            {
              v130 = 0.0;
            }
          }

          else
          {
            v129 = TSWPCoreTextTypesetter::pCalculateTrailingWhiteSpace(a1, v256, 0, *(a1 + 30), GlyphCount, v284[0], v283[0], v285[0]);
            v130 = 0.0;
          }

          v270 = *&v125 & ((Status & 4) >> 2);
          if (v270)
          {
            LOWORD(buffer.var0.x) = *(*(a1 + 80) + 2 * *v285[0]);
            glyphs = 0;
            v131 = this;
            if (CTFontGetGlyphsForCharacters(font, &buffer, &glyphs, 1))
            {
              CTFontGetVerticalTranslationsForGlyphs(font, &glyphs, &v278, 1);
              PositionForLocalCharIndex = v253 - v284[0]->y + v278.var0.y;
            }

            else
            {
              v133 = [MEMORY[0x277D6C290] currentHandler];
              v134 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPCoreTextTypesetter::createLineRefsForLineFragment(TSWPLineFragment *, const TSWPLayoutState *, BOOL, TSWPLayoutFlags) const"}];
              [v133 handleFailureInFunction:v134 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 2908, @"CTFontGetGlyphsForCharacters failed. Using fallback."}];
              PositionForLocalCharIndex = TSWPParagraphTypesetter::getPositionForLocalCharIndex(*(a1 + 232), this, StringRange.location);
            }
          }

          else
          {
            PositionForLocalCharIndex = v77 + v253 + v284[0]->x;
            v131 = this;
          }

          v135 = v123 - (v129 + v130);
          if ((*(v131 + 6) & 0x800002) != 0 && (LODWORD(StringRange.location) + LODWORD(StringRange.length)) == charIndex)
          {
            v135 = v250 + v135;
          }

          v136 = v130 + PositionForLocalCharIndex;
          v138 = v135 <= 0.0 && v265 != -1;
          if ((v138 | isKindOfClass))
          {
            v139 = v262;
          }

          else
          {
            if (v117)
            {
              v140 = [-[TSWPLineFragment objectForKeyedSubscript:](v88 objectForKeyedSubscript:{@"TSWPUnderlineColor", "CGColor"}];
              if (!v140)
              {
                v140 = [(TSWPLineFragment *)v88 objectForKeyedSubscript:v257];
              }

              v328(v327, v140);
              v141 = TSWPGetAdornmentLocation(*(a1 + 96), *(a1 + 30), 5);
              if (v141 != 1 || (v278.var0 = *MEMORY[0x277D6C268], *&v278.var0.x != *MEMORY[0x277D6C268]) || *&v278.var0.y != *(MEMORY[0x277D6C268] + 8) || (v127 = [*(a1 + 64) smartFieldAtCharIndex:*v285[0] attributeKind:7 effectiveRange:&v278]) == 0 || *v285[0] < *&v278.var0.x || *v285[0] - *&v278.var0.x >= *&v278.var0.y)
              {
                v142 = TSWPLineFragment::baselineShiftFromRunAttributes(v88, v128);
                v143 = 0;
                v144 = -v142;
                v145 = 1;
                do
                {
                  v146 = IsWhitespaceCharacter(*(*(a1 + 80) + 2 * v285[0][v143]));
                  v147 = v146;
                  v143 = v145;
                  if (GlyphCount > v145)
                  {
                    v148 = v146;
                  }

                  else
                  {
                    v148 = 0;
                  }

                  ++v145;
                }

                while ((v148 & 1) != 0);
                v149 = [(TSWPLineFragment *)v88 objectForKeyedSubscript:@"TSWPUnderlineWidthAttribute"];
                v131 = this;
                if (v149)
                {
                  [v149 floatValue];
                  v151 = v150;
                }

                else
                {
                  v151 = 0.0;
                }

                v152 = TSWPUnderlineAdornmentMetricsForFont(font, v259, v117, *(a1 + 30), *(a1 + 96), v141, v144, ascent, descent, leading, v151);
                if (v117 == 2)
                {
                  v155 = 2;
                }

                else
                {
                  v155 = 1;
                }

                v278.var0.x = v136;
                v278.var0.y = v152;
                v278.var1 = v135;
                v278.var2 = v140;
                v278.var3 = v153;
                v278.var4 = v155;
                v278.var5 = v117;
                v278.var6 = v141;
                v278.var7 = v154;
                v278.var8 = v147;
                v278.var9 = 0;
                CGColorRetain(v140);
                v156 = v278.var9;
                v157 = addAdornmentLine(this + 34, &v278);
                v158 = v274;
                if (v141 != *&chars[2])
                {
                  v158 = 0;
                }

                if (v158)
                {
                  *&v289 = *(v157 + 56);
                }

                CGColorRelease(v278.var2);
              }
            }

            v139 = v262;
            if (v265)
            {
              v159 = TSWPLineFragment::baselineShiftFromRunAttributes(v88, v128);
              v160 = [-[TSWPLineFragment objectForKeyedSubscript:](v88 objectForKeyedSubscript:{@"TSWPStrikethroughColor", "CGColor"}];
              if (!v160)
              {
                v160 = [(TSWPLineFragment *)v88 objectForKeyedSubscript:v257];
              }

              v328(v327, v160);
              TSWPStrikethroughAdornmentMetricsForFont(v259, -v159, ascent, descent, leading);
              v163 = v162;
              v164 = v161 - v162;
              if (v265 == 2)
              {
                v165 = v164;
              }

              else
              {
                v165 = v161;
              }

              if (v265 == -1)
              {
                v127 = [*(a1 + 64) characterAtIndex:StringRange.length + StringRange.location - 1];
                v166 = v127;
                if (v127 <= 0xC && ((1 << v127) & 0x1030) != 0)
                {
                  v135 = v340 - v136;
                }

                else
                {
                  v127 = IsParagraphBreakingCharacter(v127);
                  v167 = v127 ^ 1;
                  if (v166 == 8232)
                  {
                    v167 = 0;
                  }

                  v168 = v129;
                  if ((v167 & 1) == 0)
                  {
                    v169 = GlyphCount;
                    v170 = GlyphCount;
                    do
                    {
                      if (v169 <= 0)
                      {
                        v168 = v129;
                        goto LABEL_221;
                      }

                      v171 = v285[0][--v169];
                      --v170;
                    }

                    while (v171 != StringRange.length + StringRange.location - 1);
                    v168 = v129 - v283[0][v170].width + 7.0;
                  }

LABEL_221:
                  v172 = v135 + v168;
                  if (v340 - v136 >= v172)
                  {
                    v135 = v172;
                  }

                  else
                  {
                    v135 = v340 - v136;
                  }
                }

                LODWORD(v265) = 1;
              }

              if (v135 > 0.0)
              {
                v278.var0.x = v136;
                v278.var0.y = v165;
                v278.var1 = v135;
                v278.var2 = v160;
                v278.var3 = v163;
                v278.var6 = 0;
                v278.var4 = v265;
                v278.var5 = 0;
                v278.var7 = 0.0;
                v278.var8 = 0;
                v278.var9 = 0;
                CGColorRetain(v160);
                v173 = v278.var9;
                addAdornmentLine(v131 + 37, &v278);
                CGColorRelease(v278.var2);
              }
            }
          }

          if (v118)
          {
            v174 = [v118 CGColor];
            v175 = v129 + v135;
            v278.var0.x = v136;
            v278.var0.y = 0.0;
            v278.var1 = v129 + v135;
            v278.var2 = v174;
            v278.var7 = 0.0;
            v278.var8 = 0;
            v278.var9 = 0;
            memset(&v278.var3, 0, 20);
            CGColorRetain(v174);
            if (*(v131 + 8) - v136 < v129 + v135)
            {
              v175 = *(v131 + 8) - v136;
            }

            if (v175 > 0.0)
            {
              v176 = [v118 CGColor];
              buffer.var0.x = v136;
              buffer.var0.y = 0.0;
              buffer.var1 = v175;
              buffer.var2 = v176;
              buffer.var7 = 0.0;
              buffer.var8 = 0;
              buffer.var9 = 0;
              memset(&buffer.var3, 0, 20);
              CGColorRetain(v176);
              v177 = buffer.var9;
              addAdornmentLine(v131 + 40, &buffer);
              CGColorRelease(buffer.var2);
            }

            *(v337 + 24) = 0;
            CGColorRelease(v174);
          }

          if (v139 && v123 > 0.0)
          {
            TSWPCoreTextTypesetter::pAddHighlightAdornmentToLineFragment(v127, v131, v123, v136, v139);
          }

          v178 = 0;
          v179 = 0;
          while (2)
          {
            v180 = v121;
            v181 = 0;
            v182 = v285[0][v178];
            v183 = *(*(a1 + 80) + 2 * v182);
            v184 = 1;
            if (*(*(a1 + 80) + 2 * v182) > 0x205Eu)
            {
              if (*(*(a1 + 80) + 2 * v182) <= 0xFEFEu)
              {
                if (v183 != 8287 && v183 != 12288)
                {
LABEL_268:
                  v184 = 0;
                  goto LABEL_283;
                }

LABEL_248:
                v185 = v284[0][v178].x;
                v186 = v283[0][v178].width;
                v187 = (&gInvisibles + 40 * v181);
                if (*(v187 + 2) == 1)
                {
                  v188 = [MEMORY[0x277D6C290] currentHandler];
                  v189 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPCoreTextTypesetter::createLineRefsForLineFragment(TSWPLineFragment *, const TSWPLayoutState *, BOOL, TSWPLayoutFlags) const"}];
                  [v188 handleFailureInFunction:v189 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 3240, @"Shouldn't be handling invisible breaks here."}];
                }

                v190 = v187[1];
                v191 = v185 + (v186 - v190) * 0.5;
                if ((a4 & 1) == 0)
                {
                  if ((v269 & 0x1000) != 0)
                  {
                    if (v191 < -v323)
                    {
                      v191 = -v323;
                    }

                    v191 = v77 + v191;
                  }

                  else
                  {
                    v196 = *(this + 8) - v323 - v190;
                    if (v196 < v191)
                    {
                      v191 = v196;
                    }
                  }
                }

                v278.var0.x = v191;
                v278.var0.y = 0.0;
                std::vector<CGPoint>::push_back[abi:ne200100](&v350[1], &v278);
                std::vector<unsigned short>::push_back[abi:ne200100](&v347[1], v187 + 16);
                v197 = 0;
LABEL_284:
                v209 = v274 & (v197 | v273 & v184);
                v121 = v180;
                if (v209 == 1)
                {
                  v365.location = v178;
                  v365.length = v180;
                  TSWPCoreTextTypesetter::pAddEmphasisMarkGlyph(a1, chars, &v322, run, v365, v183, font, v284[0][v178].x, v284[0][v178].y, v283[0][v178].width, v283[0][v178].height, v287.width, v285[0][v178], v270, v286);
                }

                v178 = ++v179;
                if (GlyphCount <= v179)
                {
                  v84 = this;
                  v224 = CTFontCopyFamilyName(font);
                  if ([(__CFString *)v224 isEqualToString:@"Zapfino"])
                  {
                    *(this + 6) |= 0x40000u;
                  }

                  if (v283[0])
                  {
                    v283[1] = v283[0];
                    operator delete(v283[0]);
                  }

                  if (v284[0])
                  {
                    v284[1] = v284[0];
                    operator delete(v284[0]);
                  }

                  if (v285[0])
                  {
                    v285[1] = v285[0];
                    operator delete(v285[0]);
                  }

                  goto LABEL_317;
                }

                continue;
              }

              if (v183 != 65532)
              {
                if (v183 != 65279)
                {
                  goto LABEL_268;
                }

                goto LABEL_244;
              }

              if (![objc_msgSend(*(a1 + 64) attachmentAtCharIndex:{v285[0][v178]), "isAnchored"}])
              {
                goto LABEL_268;
              }

              v192 = [*(a1 + 64) charIndexMappedToStorage:v182];
              v193 = v77 + v284[0][v178].x;
              v194 = *(&__src + 1);
              if (*(&__src + 1) >= v318)
              {
                v198 = __src;
                v199 = *(&__src + 1) - __src;
                v200 = (*(&__src + 1) - __src) >> 4;
                v201 = v200 + 1;
                if ((v200 + 1) >> 60)
                {
                  std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
                }

                v202 = v318 - __src;
                if ((v318 - __src) >> 3 > v201)
                {
                  v201 = v202 >> 3;
                }

                v203 = v202 >= 0x7FFFFFFFFFFFFFF0;
                v204 = 0xFFFFFFFFFFFFFFFLL;
                if (!v203)
                {
                  v204 = v201;
                }

                if (v204)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(&__src, v204);
                }

                v205 = (*(&__src + 1) - __src) >> 4;
                v206 = 16 * v200;
                *v206 = v192;
                *(v206 + 8) = v193;
                v195 = 16 * v200 + 16;
                v207 = 16 * v200 - 16 * v205;
                memcpy((v206 - 16 * v205), v198, v199);
                v208 = __src;
                *&__src = v207;
                *(&__src + 1) = v195;
                *&v318 = 0;
                if (v208)
                {
                  operator delete(v208);
                }
              }

              else
              {
                **(&__src + 1) = v192;
                *(v194 + 8) = v193;
                v195 = v194 + 16;
              }

              v184 = 0;
              *(&__src + 1) = v195;
LABEL_283:
              v197 = 1;
              goto LABEL_284;
            }

            break;
          }

          if ((v183 - 0x2000) <= 0x2F)
          {
            if (((1 << v183) & 0xF7F) != 0)
            {
              goto LABEL_248;
            }

            if (((1 << v183) & 0x30000000000) == 0)
            {
              if (((1 << v183) & 0x800000000080) != 0)
              {
LABEL_244:
                v184 = 0;
                if ([*(a1 + 64) footnoteReferenceAtCharIndex:v285[0][v178]])
                {
                  goto LABEL_283;
                }

                v181 = 8;
                goto LABEL_248;
              }

              goto LABEL_263;
            }

LABEL_265:
            if ((v269 & 0x1000) == 0)
            {
              v264 = v284[0][v178].x;
              goto LABEL_268;
            }

            v184 = 0;
            v264 = v284[0][v178].x + v77 + v283[0][v178].width;
            goto LABEL_283;
          }

LABEL_263:
          if (v183 <= 0x20)
          {
            if (((1 << v183) & 0x3C30) != 0)
            {
              goto LABEL_265;
            }

            if (v183 == 9)
            {
              v210 = v284[0][v178].x;
              v211 = v210;
              if ((v269 & 0x1000) != 0)
              {
                v211 = v77 + v246 - (v210 + v283[0][v178].width);
              }

              v212 = [objc_msgSend(*(a3 + 392) tabAfterPosition:{v211), "leader"}];
              if ([v212 length])
              {
                v213 = v283[0][v178].width;
                v214 = CFDictionaryCreateMutableCopy(allocator, 0, [objc_msgSend(*(a1 + 64) paragraphStyleAtCharIndex:v182 effectiveRange:{0), "getTypesetterAttributes:scalePercent:isRightToLeft:", objc_msgSend(*(a1 + 64), "characterStyleAtCharIndex:effectiveRange:", v182, 0), objc_msgSend(*(a3 + 104), "scaleTextPercent"), objc_msgSend(*(a1 + 64), "isWritingDirectionRightToLeftForParagraphAtCharIndex:", v182)}]);
                if (v214)
                {
                  if (v213 > 0.0)
                  {
                    if (*(a3 + 333) == 1 && [v212 isEqualToString:{+[TSWPTab kTabStopLeaderStringArrow](TSWPTab, "kTabStopLeaderStringArrow")}])
                    {
                      v212 = +[TSWPTab kTabStopLeaderStringArrowRTL];
                    }

                    v215 = 0;
                    v216 = v77 + v210;
                    v217 = 0.0;
                    for (i = 1; ; ++i)
                    {
                      v219 = CFAttributedStringCreate(allocator, [&stru_287D36338 stringByPaddingToLength:i withString:v212 startingAtIndex:0], v214);
                      v220 = CTLineCreateWithAttributedString(v219);
                      v221 = CTLineGetTypographicBounds(v220, 0, 0, 0);
                      CFRelease(v219);
                      if (v221 > v213)
                      {
                        break;
                      }

                      if (v215)
                      {
                        CFRelease(v215);
                      }

                      v215 = v220;
                      v217 = v221;
                    }

                    if (v220)
                    {
                      CFRelease(v220);
                    }

                    if (v215)
                    {
                      *&v278.var0.x = v215;
                      v278.var0.y = v213 + v216 + v323 - v217;
                      v278.var1 = 0.0;
                      *&v278.var2 = *MEMORY[0x277D6C268];
                      v278.var4 = 0;
                      CFRetain(v215);
                      std::vector<TSWPLineRef>::push_back[abi:ne200100](v248, &v278);
                      CFRelease(v215);
                      if (*&v278.var0.x)
                      {
                        CFRelease(*&v278.var0.x);
                      }
                    }
                  }

                  CFRelease(v214);
                }

                else
                {
                  v222 = [MEMORY[0x277D6C290] currentHandler];
                  v223 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPCoreTextTypesetter::createLineRefsForLineFragment(TSWPLineFragment *, const TSWPLayoutState *, BOOL, TSWPLayoutFlags) const"}];
                  [v222 handleFailureInFunction:v223 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 3135, @"invalid nil value for '%s'", "tabLeaderAttrs"}];
                }
              }

              v184 = 0;
              v181 = 1;
              goto LABEL_248;
            }

            if (v183 == 32)
            {
              goto LABEL_248;
            }
          }

          if (v183 != 160)
          {
            goto LABEL_268;
          }

          goto LABEL_244;
        }

LABEL_317:
        if (*(&v295 + 1) != v295)
        {
          v226 = *(v84 + 56);
          if (v226 >= *(v84 + 57))
          {
            v227 = std::vector<TSWPAdornments>::__emplace_back_slow_path<TSWPAdornments const&>(v84 + 440, chars);
          }

          else
          {
            TSWPAdornments::TSWPAdornments(*(v84 + 56), chars);
            v227 = v226 + 200;
            *(v84 + 56) = v226 + 200;
          }

          *(v84 + 56) = v227;
        }

        CGColorRelease(*(&v289 + 1));
        if (v290)
        {
          CFRelease(v290);
        }

        if (*(&v296 + 1))
        {
          *&v297 = *(&v296 + 1);
          operator delete(*(&v296 + 1));
        }

        if (v295)
        {
          *(&v295 + 1) = v295;
          operator delete(v295);
        }

        if (*(&v293 + 1))
        {
          *&v294 = *(&v293 + 1);
          operator delete(*(&v293 + 1));
        }

        if (v292)
        {
          *(&v292 + 1) = v292;
          operator delete(v292);
        }

        if (*(&v290 + 1))
        {
          *&v291 = *(&v290 + 1);
          operator delete(*(&v290 + 1));
        }

        ++v266;
        ++v267;
      }

      while (v267 != v261);
      v83 = [(__CFArray *)obj countByEnumeratingWithState:&v303 objects:v342 count:16];
      if (!v83)
      {
LABEL_338:
        if ((*(v84 + 25) & 8) != 0)
        {
          TSWPCoreTextTypesetter::pAddInvisibleBreakToLineFragment(a1, a3, this, v242, v264, a4);
        }

        v228 = this;
        if (v351 != v350[1])
        {
          v229 = *(this + 56);
          if (v229 >= *(this + 57))
          {
            v230 = std::vector<TSWPAdornments>::__emplace_back_slow_path<TSWPAdornments const&>(this + 440, &attributes);
            v228 = this;
          }

          else
          {
            TSWPAdornments::TSWPAdornments(*(this + 56), &attributes);
            v230 = v229 + 200;
            *(this + 56) = v229 + 200;
          }

          *(v228 + 56) = v230;
        }

        if (*(&__src + 1) != __src)
        {
          v231 = *(v228 + 56);
          if (v231 >= *(v228 + 57))
          {
            v232 = std::vector<TSWPAdornments>::__emplace_back_slow_path<TSWPAdornments const&>(v228 + 440, v307);
            v228 = this;
          }

          else
          {
            TSWPAdornments::TSWPAdornments(*(v228 + 56), v307);
            v232 = v231 + 200;
            *(v228 + 56) = v231 + 200;
          }

          *(v228 + 56) = v232;
        }

        if (TSWPLineFragment::isHyphenated(v228))
        {
          OffsetForStringIndex = CTLineGetOffsetForStringIndex(v245, charIndex, 0);
          v234 = v323;
          v235 = TSWPLineFragment::baselineAdjustAtCharIndex(charIndex, *(a1 + 16), *(a3 + 104), 0, [*(a3 + 104) scaleTextPercent]);
          *chars = line;
          *&v289 = OffsetForStringIndex + v234;
          *(&v289 + 1) = v235;
          v290 = *MEMORY[0x277D6C268];
          LODWORD(v291) = 2;
          if (line)
          {
            CFRetain(line);
          }

          std::vector<TSWPLineRef>::push_back[abi:ne200100](v248, chars);
          if (line)
          {
            CFRelease(line);
          }

          if (*chars)
          {
            CFRelease(*chars);
          }
        }

        TSWPCoreTextTypesetter::pApplyChangeTrackingToLineFragment(a1, this);
        if ((*(this + 26) & 0x80) != 0)
        {
          if (v244)
          {
            v236 = CTLineGetOffsetForStringIndex(v245, charIndex, 0);
            v237 = CTLineGetTrailingWhitespaceWidth(v245);
            v238 = v323;
            v239 = TSWPLineFragment::baselineAdjustAtCharIndex(charIndex, *(a1 + 16), *(a3 + 104), 0, [*(a3 + 104) scaleTextPercent]);
            *chars = v244;
            *&v289 = v236 - v237 + v238;
            *(&v289 + 1) = v239;
            v290 = *MEMORY[0x277D6C268];
            LODWORD(v291) = 4;
            CFRetain(v244);
            std::vector<TSWPLineRef>::push_back[abi:ne200100](v248, chars);
            CFRelease(v244);
            if (*chars)
            {
              CFRelease(*chars);
            }
          }
        }

        CFRelease(v245);
        CGColorRelease(v309);
        if (v310)
        {
          CFRelease(v310);
        }

        v53 = this;
        if (__src)
        {
          *(&__src + 1) = __src;
          operator delete(__src);
        }

        if (*(&v315 + 1))
        {
          *&v316 = *(&v315 + 1);
          operator delete(*(&v315 + 1));
        }

        if (v314)
        {
          *(&v314 + 1) = v314;
          operator delete(v314);
        }

        if (*(&v312 + 1))
        {
          *&v313 = *(&v312 + 1);
          operator delete(*(&v312 + 1));
        }

        if (v311)
        {
          *(&v311 + 1) = v311;
          operator delete(v311);
        }

        CGColorRelease(v344);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v352[0])
        {
          v352[1] = v352[0];
          operator delete(v352[0]);
        }

        if (v350[1])
        {
          *&v351 = v350[1];
          operator delete(v350[1]);
        }

        if (v349[0])
        {
          v349[1] = v349[0];
          operator delete(v349[0]);
        }

        if (v347[1])
        {
          *&v348 = v347[1];
          operator delete(v347[1]);
        }

        if (v346[0])
        {
          v346[1] = v346[0];
          operator delete(v346[0]);
        }

        if (v322)
        {
          CFRelease(v322);
        }

        break;
      }
    }
  }

  v240 = *(v53 + 6);
  if (*(v337 + 24) == 1)
  {
    *(v53 + 6) = v240 | 0x8000000;
    v241 = v333[3];
  }

  else
  {
    v241 = 0;
    *(v53 + 6) = v240 & 0xF7FFFFFF;
  }

  TSWPLineFragment::setSingleColor(v53, v241);
  TSWPLineFragment::clearTypesetterState(v53);
  _Block_object_dispose(&v332, 8);
  _Block_object_dispose(&v336, 8);
}

void sub_26C983704(_Unwind_Exception *a1)
{
  TSWPLineRef::~TSWPLineRef(&STACK[0x470]);
  _Block_object_dispose(&STACK[0x4D0], 8);
  _Block_object_dispose(&STACK[0x4F0], 8);
  _Unwind_Resume(a1);
}

unint64_t TSWPCoreTextTypesetter::pNextCharIndex(TSWPCoreTextTypesetter *this, unint64_t a2)
{
  v2 = a2;
  v3 = *(*(this + 29) + 56);
  if ([v3 length] > a2)
  {
    v4 = [objc_msgSend(v3 "string")];
    return v4 + v5;
  }

  return v2;
}

uint64_t TSWPCoreTextTypesetter::pKinsokuCanBreak(TSWPCoreTextTypesetter *this, unint64_t *a2, _NSRange *a3)
{
  v6 = *a2;
  if (*a2)
  {
    v6 = [objc_msgSend(*(*(this + 29) + 56) "string")];
    v7 = *a2;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == *(this + 7))
  {
    return 1;
  }

  v8 = MEMORY[0x277D6C268];
  v27 = *MEMORY[0x277D6C268];
  objc_opt_class();
  [*(this + 8) smartFieldAtCharIndex:v7 attributeKind:7 effectiveRange:&v27];
  v9 = TSUDynamicCast();
  if (v9)
  {
    v26 = v27;
    location = v27.location;
    if (v7 + 1 == v27.length + v27.location)
    {
      v11 = *(*(this + 29) + 56);
      if ([v11 length] > v7)
      {
        v12 = [objc_msgSend(v11 "string")];
        v7 = v12 + v13;
      }

      objc_opt_class();
      [*(this + 8) smartFieldAtCharIndex:v7 attributeKind:7 effectiveRange:&v26];
      v14 = TSUDynamicCast() != 0;
      location = v26.location;
    }

    else
    {
      v14 = 1;
    }

    v15 = v7;
    if (v14)
    {
      v15 = v7;
      if (v7 == location)
      {
        v16 = *(*(this + 29) + 56);
        if ([v16 length] <= location)
        {
          v15 = location;
        }

        else
        {
          v17 = [objc_msgSend(v16 "string")];
          v15 = v17 + v18;
        }
      }
    }
  }

  else
  {
    v15 = v7;
  }

  v26 = *v8;
  objc_opt_class();
  [*(this + 8) smartFieldAtCharIndex:v6 attributeKind:7 effectiveRange:&v26];
  if (TSUDynamicCast())
  {
    v19 = v26.location;
    if (v6 == v26.location)
    {
      if (v6)
      {
        v20 = [objc_msgSend(*(*(this + 29) + 56) "string")];
      }

      else
      {
        v20 = 0;
      }

      objc_opt_class();
      [*(this + 8) smartFieldAtCharIndex:v20 attributeKind:7 effectiveRange:&v26];
      if (!TSUDynamicCast())
      {
        goto LABEL_28;
      }

      v19 = v26.location;
    }

    else
    {
      v20 = v6;
      v6 = v7;
    }

    if (v20 + 1 == v26.length + v19)
    {
      v7 = v6;
      if (v20)
      {
        v6 = [objc_msgSend(*(*(this + 29) + 56) "string")];
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_30;
    }

LABEL_28:
    v7 = v6;
    v6 = v20;
  }

LABEL_30:
  v21 = TSWPCoreTextTypesetter::pComposedCharacterAtIndex(this, v6);
  v22 = TSWPCoreTextTypesetter::pComposedCharacterAtIndex(this, v15);
  if (a3)
  {
    *a3 = *v8;
  }

  v23 = IsParagraphBreakingCharacter(v21);
  if (v21 == 8232 || (v23 & 1) != 0 || !KinsokuIllegalEndChar(v21) && !KinsokuIllegalStartChar(v22) && KinsokuAllowSplit(v21, v22))
  {
    if (a3)
    {
      *a3 = v27;
    }

    if (!v9 || (TSWPParagraphTypesetter::rubyLayoutIsDisabledForField(*(this + 29), v9) & 1) != 0 || v7 <= v27.location || v7 >= v27.length + v27.location)
    {
LABEL_43:
      *a2 = v7;
      return 1;
    }

    return 0;
  }

  result = IsWhitespaceCharacter(v21);
  if (result)
  {
    if (IsWhitespaceCharacter(v22))
    {
      return 0;
    }

    v25 = IsBreakingSpaceCharacter(*(*(this + 10) + 2 * v6));
    result = 0;
    if (v6 && !v25)
    {
      do
      {
        result = IsWhitespaceCharacter(*(*(this + 10) + 2 * v6));
        if (!result)
        {
          break;
        }

        if (IsBreakingSpaceCharacter(*(*(this + 10) + 2 * v6)))
        {
          goto LABEL_43;
        }

        v6 = [objc_msgSend(*(*(this + 29) + 56) "string")];
        result = 0;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t TSWPCoreTextTypesetter::pPrevCharIndex(TSWPCoreTextTypesetter *this, uint64_t a2)
{
  if (a2)
  {
    return [objc_msgSend(*(*(this + 29) + 56) "string")];
  }

  else
  {
    return 0;
  }
}

uint64_t TSWPCoreTextTypesetter::pCanBreakLineInRange(TSWPCoreTextTypesetter *this, unint64_t a2, unint64_t a3)
{
  v6 = a3 - a2;
  if (a3 <= a2 || *(this + 7) < a3)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSWPCoreTextTypesetter::pCanBreakLineInRange(TSWPCharIndex, TSWPCharIndex)"}];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 1904, @"Bad localMaxCharIndex"}];
  }

  v9 = TSWPCoreTextTypesetter::pCanBreakLineInRange(unsigned long,unsigned long)::sBreakPointCharacterSet;
  if (!TSWPCoreTextTypesetter::pCanBreakLineInRange(unsigned long,unsigned long)::sBreakPointCharacterSet)
  {
    Mutable = CFCharacterSetCreateMutable(0);
    TSWPCoreTextTypesetter::pCanBreakLineInRange(unsigned long,unsigned long)::sBreakPointCharacterSet = Mutable;
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
    CFCharacterSetUnion(Mutable, Predefined);
    v19.location = 8232;
    v19.length = 1;
    CFCharacterSetAddCharactersInRange(TSWPCoreTextTypesetter::pCanBreakLineInRange(unsigned long,unsigned long)::sBreakPointCharacterSet, v19);
    v20.location = 65532;
    v20.length = 1;
    CFCharacterSetAddCharactersInRange(TSWPCoreTextTypesetter::pCanBreakLineInRange(unsigned long,unsigned long)::sBreakPointCharacterSet, v20);
    v21.location = 45;
    v21.length = 1;
    CFCharacterSetAddCharactersInRange(TSWPCoreTextTypesetter::pCanBreakLineInRange(unsigned long,unsigned long)::sBreakPointCharacterSet, v21);
    v22.location = 160;
    v22.length = 1;
    CFCharacterSetRemoveCharactersInRange(TSWPCoreTextTypesetter::pCanBreakLineInRange(unsigned long,unsigned long)::sBreakPointCharacterSet, v22);
    v23.location = 8239;
    v23.length = 1;
    CFCharacterSetRemoveCharactersInRange(TSWPCoreTextTypesetter::pCanBreakLineInRange(unsigned long,unsigned long)::sBreakPointCharacterSet, v23);
    v24.location = 8199;
    v24.length = 1;
    CFCharacterSetRemoveCharactersInRange(TSWPCoreTextTypesetter::pCanBreakLineInRange(unsigned long,unsigned long)::sBreakPointCharacterSet, v24);
    v25.location = 65279;
    v25.length = 1;
    CFCharacterSetRemoveCharactersInRange(TSWPCoreTextTypesetter::pCanBreakLineInRange(unsigned long,unsigned long)::sBreakPointCharacterSet, v25);
    v9 = TSWPCoreTextTypesetter::pCanBreakLineInRange(unsigned long,unsigned long)::sBreakPointCharacterSet;
  }

  if (CFCharacterSetIsCharacterMember(v9, *(*(this + 10) + 2 * a3 - 2)))
  {
    return 1;
  }

  v13 = *(this + 27);
  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v14 = CFStringCreateWithCharactersNoCopy(0, *(this + 10), *(this + 7), *MEMORY[0x277CBED00]);
    v26.length = *(this + 7);
    v26.location = 0;
    v15 = CFStringTokenizerCreate(0, v14, v26, 3uLL, 0);
    v16 = v15;
    while (CFStringTokenizerAdvanceToNextToken(v15))
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v16);
      [v13 addIndex:CurrentTokenRange.location + CurrentTokenRange.length];
      v15 = v16;
    }

    CFRelease(v16);
    CFRelease(v14);
    *(this + 27) = v13;
  }

  return [v13 containsIndexesInRange:{a2, v6 + 1}];
}

BOOL TSWPCoreTextTypesetter::pRoomForHyphen(TSWPCoreTextTypesetter *this, CFRange a2, double a3, int a4, TSWPLineFragment *a5)
{
  length = a2.length;
  location = a2.location;
  FontRunIndexForLocalCharIndex = TSWPCoreTextTypesetter::pFindFontRunIndexForLocalCharIndex(this, a2.location + a2.length);
  TSWPLineFragment::setHyphenInfo(a5, *(*(this + 15) + 104 * FontRunIndexForLocalCharIndex + 32), a4);
  v12 = *(*(this + 15) + 104 * FontRunIndexForLocalCharIndex + 24);
  if ((a4 - 0x10000) >> 20)
  {
    v14 = 1;
    LOWORD(v13) = a4;
  }

  else
  {
    v13 = ((a4 - 0x10000) >> 10) | 0xFFFFD800;
    characters[1] = a4 & 0x3FF | 0xDC00;
    v14 = 2;
  }

  characters[0] = v13;
  CTFontGetGlyphsForCharacters(v12, characters, glyphs, v14);
  CTFontGetAdvancesForGlyphs(v12, kCTFontOrientationDefault, glyphs, &advances, 1);
  v15 = TSWPCoreTextTypesetter::pCTTypesetter(this);
  v28.location = location;
  v28.length = length;
  Line = CTTypesetterCreateLine(v15, v28);
  if (Line)
  {
    v17 = Line;
    TypographicBounds = CTLineGetTypographicBounds(Line, 0, 0, 0);
    TruncatedLine = CTLineCreateTruncatedLine(v17, a3 - advances.width, kCTLineTruncationEnd, 0);
    if (TruncatedLine)
    {
      v20 = TruncatedLine;
      v21 = CTLineGetTypographicBounds(TruncatedLine, 0, 0, 0);
      CFRelease(v20);
    }

    else
    {
      v21 = NAN;
    }

    CFRelease(v17);
  }

  else
  {
    v22 = [MEMORY[0x277D6C290] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSWPCoreTextTypesetter::pRoomForHyphen(CFRange, UTF32Char, CGFloat, TSWPLineFragment *)"}];
    [v22 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 3725, @"CTTypesetterCreateLine returned nil"}];
    TypographicBounds = 0.0;
    v21 = NAN;
  }

  return v21 == TypographicBounds;
}

uint64_t TSWPCoreTextTypesetter::pHyphenateLocalRange(id *this, CFRange *a2, const TSWPLayoutState *a3, double a4, TSWPLineFragment *a5)
{
  if (*(a3 + 52) >= a4)
  {
    return 0xFFFFFFFFLL;
  }

  location = a2->location;
  v11 = a2->length + a2->location;
  v12 = [this[8] wordAtCharIndex:v11 includePreviousWord:1];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = v13;
  v15 = v13 < *(a3 + 54) || v11 <= location;
  if (v15)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = v12;
  v36 = a5;
  v17 = 0;
  v37 = v12 + v13;
  while (1)
  {
    v38 = 0;
    v18 = *(a3 + 53);
    if (!v18)
    {
      v19 = [MEMORY[0x277D6C290] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPHyphenationResult TSWPCoreTextTypesetter::pHyphenateLocalRange(CFRange &, const TSWPLayoutState *, CGFloat, TSWPLineFragment *)"}];
      [v19 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 3629, @"invalid nil value for '%s'", "state->hyphenationLocale"}];
      v18 = *(a3 + 53);
    }

    v21 = [this[8] hyphenationLocationBeforeIndex:v11 inRange:v16 locale:v14 hyphenChar:{v18, &v38}];
    v22 = v21;
    if ((*(a3 + 55) + v16) <= v21 && v21 <= v37 - *(a3 + 56))
    {
      v23.location = a2->location;
      if (v11 <= v21 || v21 <= v23.location)
      {
        return 0xFFFFFFFFLL;
      }

      if (v21 != -1)
      {
        if (v21 < v16 || v21 - v16 >= v14)
        {
          v27 = [MEMORY[0x277D6C290] currentHandler];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPHyphenationResult TSWPCoreTextTypesetter::pHyphenateLocalRange(CFRange &, const TSWPLayoutState *, CGFloat, TSWPLineFragment *)"}];
          [v27 handleFailureInFunction:v28 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 3650, @"Bad hyphenation result"}];
          return 0xFFFFFFFFLL;
        }

        v23.length = v21 - v23.location;
        if (TSWPCoreTextTypesetter::pRoomForHyphen(this, v23, a4, v38, v36))
        {
          break;
        }
      }
    }

    v25 = v22 <= location || v17++ >= 0x13;
    v11 = v22;
    if (v25)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v29 = a2->location;
  v30 = v16 - a2->location;
  if (v30 >= 1)
  {
    v31 = TSWPCoreTextTypesetter::pCTTypesetter(this);
    v39.location = v29;
    v39.length = v30;
    Line = CTTypesetterCreateLine(v31, v39);
    if (Line)
    {
      v33 = Line;
      if (a4 - CTLineGetTypographicBounds(Line, 0, 0, 0) < *(a3 + 52))
      {
        a2->length = v16 - a2->location;
        CFRelease(v33);
        return 0xFFFFFFFFLL;
      }

      CFRelease(v33);
    }
  }

  v15 = v22 <= a2->location;
  a2->length = v22 - a2->location;
  if (v15)
  {
    v34 = [MEMORY[0x277D6C290] currentHandler];
    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPHyphenationResult TSWPCoreTextTypesetter::pHyphenateLocalRange(CFRange &, const TSWPLayoutState *, CGFloat, TSWPLineFragment *)"}];
    [v34 handleFailureInFunction:v35 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 3690, @"Bad hyphenation result range"}];
  }

  return 1;
}

void TSWPCoreTextTypesetter::pCalcHeightInfo(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = *(a3 + 200);
  v11 = *(a1 + 108);
  if (v11 > 1)
  {
    v12 = (*(a1 + 120) + 104);
    v13 = 1;
    while (1)
    {
      v14 = *v12;
      v12 += 13;
      if (v14 > a4)
      {
        break;
      }

      if (v11 == ++v13)
      {
        goto LABEL_7;
      }
    }

    LODWORD(v11) = v13;
  }

LABEL_7:
  v15 = v11 - 1;
  v16 = *(a2 + 520);
  v17 = *(a2 + 528);
  v18 = *(a2 + 544);
  if (*(a2 + 536) == 0.0)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = *(a2 + 536);
  }

  v20 = TSWPCoreTextTypesetter::pCalcStyleRunsHeightInfo(a1, a2, a3, v11 - 1, a4, a5, *(a2 + 520), *(a2 + 528), v19, *(a2 + 544));
  if ((*(v10 + 24) & 0x20) != 0)
  {
    v20 = TSWPCoreTextTypesetter::pCalcStyleRunsHeightInfo(a1, a2, a3, v15, a4, a5, v16, v17, v19, v18);
  }

  v24 = v20;
  v25 = v21;
  v26 = v22;
  v27 = v23;
  *(a1 + 184) = *(a3 + 192) - fmax(*(a1 + 168), *(a1 + 160));
  v28 = *(a1 + 152);
  v29 = *(a1 + 168);
  v30 = *(a1 + 200);
  *(v10 + 144) = *(a1 + 184);
  *(v10 + 160) = v30;
  *(v10 + 112) = v28;
  *(v10 + 128) = v29;
  v32.size.height = TSWPLineFragment::heightForHeightInfo(v10, *(a2 + 256), 0, *(a2 + 296));
  *(v10 + 72) = v32.size.height;
  v32.origin.x = *(v10 + 48);
  v32.origin.y = *(v10 + 56);
  v32.size.width = *(v10 + 64);
  v31.origin.x = v24;
  v31.origin.y = v25;
  v31.size.width = v26;
  v31.size.height = v27;
  *(v10 + 80) = CGRectUnion(v31, v32);
}

void TSWPCoreTextTypesetter::pAdjustEmphasisMarksForLineFragment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, double *a6)
{
  v10 = *(a4 + 440);
  v9 = *(a4 + 448);
  if (v9 != v10)
  {
    v11 = 0;
    v12 = 0x8F5C28F5C28F5C29 * ((v9 - v10) >> 3);
    v13 = 1;
    while (1)
    {
      v14 = (v10 + 200 * v11);
      if (*v14 == 4)
      {
        break;
      }

      v11 = v13;
      v15 = v12 > v13++;
      if (!v15)
      {
        v16 = 0;
        goto LABEL_10;
      }
    }

    v16 = v14[1];
    if (v16 == 1)
    {
      if (*(a4 + 232) != *(a4 + 224))
      {
        TSWPCoreTextTypesetter::pFilterEmphasisMarksForRuby(a1, a2, a4);
        v10 = *(a4 + 440);
        v9 = *(a4 + 448);
        v12 = 0x8F5C28F5C28F5C29 * ((v9 - v10) >> 3);
      }

      v16 = 1;
    }

LABEL_10:
    *a5 = 0.0;
    *a6 = 0.0;
    if (v9 != v10)
    {
      v17 = (v10 + 8);
      v18 = 0.0;
      v19 = 1;
      do
      {
        if (*(v17 - 2) == 4 && v18 < *v17)
        {
          v18 = *v17;
        }

        v17 += 25;
        v15 = v12 > v19++;
      }

      while (v15);
      if (v9 != v10)
      {
        v20 = 0;
        v21 = 1;
        do
        {
          v22 = v10 + 200 * v20;
          if (*v22 != 4)
          {
            goto LABEL_34;
          }

          v24 = *(v22 + 176);
          v23 = *(v22 + 184);
          *(v22 + 8) = v18;
          if (v24 != 0.0 || v23 != 0.0)
          {
            goto LABEL_34;
          }

          if ((*(a4 + 25) & 0x20) != 0)
          {
            v29 = *(a4 + 128);
            v27 = (v29 + *(a4 + 136)) * 0.5;
            if (v16 != 2)
            {
              v27 = -v27 - v18;
              v34 = v29 + v27 - *(v22 + 152);
              goto LABEL_30;
            }

            v30 = v16;
            v31 = [MEMORY[0x277D6C290] currentHandler];
            v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPCoreTextTypesetter::pAdjustEmphasisMarksForLineFragment(const TSWPLayoutState *, TSWPTypesetterParamBlock *, TSWPLineFragment *, CGFloat &, CGFloat &)"}];
            [v31 handleFailureInFunction:v32 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 4344, @"Vertical below is not currently supported."}];
            v16 = v30;
            v10 = *(a4 + 440);
            v9 = *(a4 + 448);
          }

          else
          {
            v25 = *(v22 + 152);
            if (v16 != 2)
            {
              v33 = *(a4 + 128);
              v27 = 0.0 - v33 - v18;
              v34 = v33 + v27 - v25;
LABEL_30:
              v35 = -v34;
              if (*a5 >= v35)
              {
                v35 = *a5;
              }

              *a5 = v35;
              goto LABEL_33;
            }

            v26 = *(a4 + 136);
            v27 = v25 + v18 + v26 + 0.0;
            v28 = *(v22 + 160) + v27 - v26;
            if (*a6 >= v28)
            {
              v28 = *a6;
            }

            *a6 = v28;
          }

LABEL_33:
          *(v22 + 176) = 0;
          *(v22 + 184) = v27;
LABEL_34:
          v20 = v21;
          v15 = 0x8F5C28F5C28F5C29 * ((v9 - v10) >> 3) > v21++;
        }

        while (v15);
      }
    }
  }

  v36 = *(a4 + 272);
  if (*(a4 + 280) != v36)
  {
    v37 = 0;
    v38 = 1;
    do
    {
      v39 = v36 + 80 * v37;
      v40 = *(v39 + 44);
      if (v40)
      {
        v41 = *(v39 + 32);
        if (v40 == 3)
        {
          if ((*(a4 + 25) & 0x20) == 0)
          {
            WavyLineHalfAmplitude = GetWavyLineHalfAmplitude(v41);
            v41 = WavyLineHalfAmplitude + WavyLineHalfAmplitude;
          }
        }

        else if (v40 == 2)
        {
          v41 = v41 * 3.0;
        }

        v42 = *(v39 + 8);
        v43 = *(v39 + 48);
        if (v43 == 1)
        {
          v49 = v42 + v41 * -0.5;
          v50 = *(a4 + 128);
          if (v49 < v50)
          {
            v46 = -(v49 + v50);
            v47 = a5;
            goto LABEL_49;
          }
        }

        else if (v43 == 2)
        {
          v44 = v42 + v41 * 0.5;
          v45 = *(a4 + 136);
          if (v44 > v45)
          {
            v46 = v44 - v45;
            v47 = a6;
LABEL_49:
            if (*v47 >= v46)
            {
              v46 = *v47;
            }

            *v47 = v46;
          }
        }
      }

      v37 = v38;
      v36 = *(a4 + 272);
      v15 = 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 280) - v36) >> 4) > v38++;
    }

    while (v15);
  }
}

void TSWPCoreTextTypesetter::pAdjustErasableBounds(TSWPCoreTextTypesetter *this, const TSWPLayoutState *a2, TSWPLineFragment *a3)
{
  x = *(a3 + 10);
  y = *(a3 + 11);
  width = *(a3 + 12);
  height = *(a3 + 13);
  __p = 0;
  v51 = 0;
  v52 = 0;
  if (*(a3 + 29) != *(a3 + 28))
  {
    v9 = TSWPCoreTextTypesetter::pMaxRubyHeightAboveLineFragment(this, a2, a3);
    v10 = *(a3 + 8);
    v11 = *(a3 + 9);
    v12 = v9 + v11;
    v13 = *(a3 + 7) + v11 - v12;
    *&v47 = *(a3 + 6);
    *(&v47 + 1) = v13;
    v48 = v10;
    v49 = v12;
    std::vector<CGRect>::push_back[abi:ne200100](&__p, &v47);
  }

  v49 = 0.0;
  v14 = *(a3 + 8);
  v47 = *(a3 + 3);
  v48 = v14;
  v15 = TSWPLayoutChore::calculateBaselineOffsetWithHeightInfo(a3 + 14, a2) + *(a3 + 7);
  if ((*(a3 + 25) & 0x20) != 0)
  {
    v17 = floor(v15 - *(a3 + 16));
    v16 = *&gSpellDotHeight;
    *(&v47 + 1) = v17 + *&gSpellDotHeight * -0.5;
  }

  else
  {
    v16 = floor(v15) + *&gSpellDotHeight + *&gSpellDotHeight * 0.5 - *(&v47 + 1);
  }

  v49 = v16;
  std::vector<CGRect>::push_back[abi:ne200100](&__p, &v47);
  v18 = TSWPLayoutChore::calculateBaselineOffsetWithHeightInfo(a3 + 14, a2);
  v19 = *(a3 + 7);
  v21 = *(a3 + 8);
  v20 = *(a3 + 9);
  *&v47 = *(a3 + 6);
  v48 = v21;
  v22 = *(a3 + 55);
  v23 = *(a3 + 56) - v22;
  if (v23)
  {
    v24 = 0x8F5C28F5C28F5C29 * (v23 >> 3);
    v25 = (v22 + 184);
    v26 = 0.0;
    v27 = 1;
    v28 = 0.0;
    v29 = 0.0;
    do
    {
      v30 = *(v25 - 46);
      if (v30 == 6)
      {
        v33 = *(*(v25 - 13) + 24) * 0.5;
        if (v29 < *v25 - v18 + *(v25 - 3) + v33)
        {
          v29 = *v25 - v18 + *(v25 - 3) + v33;
        }
      }

      else if (v30 == 4)
      {
        v31 = *v25;
        if (*(v25 - 45) == 1)
        {
          v32 = -(v18 + v31 - *(v25 - 4));
          if (v26 < v32)
          {
            v26 = v32;
          }
        }

        else
        {
          v34 = v31 - v18 + *(v25 - 3);
          if (v28 < v34)
          {
            v28 = v34;
          }
        }
      }

      v25 += 25;
    }

    while (v24 > v27++);
  }

  else
  {
    v29 = 0.0;
    v28 = 0.0;
    v26 = 0.0;
  }

  v36 = v20 + v26;
  v37 = v19 + v20 - (v20 + v26);
  if (v29 >= v28)
  {
    v38 = v29;
  }

  else
  {
    v38 = v28;
  }

  *(&v47 + 1) = v37;
  v49 = v36 + v38;
  std::vector<CGRect>::push_back[abi:ne200100](&__p, &v47);
  v40 = __p;
  v39 = v51;
  if (__p != v51)
  {
    do
    {
      v41 = v40[3];
      if (v41 != INFINITY)
      {
        v42 = *v40;
        v43 = *(v40 + 1);
        v44 = *(v40 + 2);
        v53.origin.x = x;
        v53.origin.y = y;
        v53.size.width = width;
        v53.size.height = height;
        v54 = CGRectUnion(v53, *(&v41 - 3));
        x = v54.origin.x;
        y = v54.origin.y;
        width = v54.size.width;
        height = v54.size.height;
        v39 = v51;
      }

      v40 += 4;
    }

    while (v40 != v39);
  }

  v45 = (*(a3 + 16) + *(a3 + 17)) * 0.25;
  if ((*(a3 + 6) & 0x40000) != 0)
  {
    v45 = v45 + 50.0;
  }

  v46 = -v45;
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  *(a3 + 80) = CGRectInset(v55, v46, v46);
  if (__p)
  {
    v51 = __p;
    operator delete(__p);
  }
}

void sub_26C984E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSWPCoreTextTypesetter::skipLine(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *a2 + *(*(a3 + 200) + 8);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  *(a3 + 216) = v5;
  if (v4)
  {
    v6 = [*(a1 + 16) characterAtIndex:?];
  }

  else
  {
    v6 = 0;
  }

  *(a3 + 208) = v6;
  return v4;
}

void TSWPCoreTextTypesetter::truncateLineFragment(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v9 = a4 & 0xC;
  v10 = a3 + 192;
  v11 = *(a3 + 192);
  *(a3 + 24) = *(a3 + 24) & 0xFF7FFFFD | 0x800000;
  for (i = *(a3 + 200); i != v11; std::allocator<TSWPLineRef>::destroy[abi:ne200100](v10, i))
  {
    i -= 6;
  }

  *(a3 + 200) = v11;
  std::vector<TSWPAdornmentLine>::__base_destruct_at_end[abi:ne200100](a3 + 272, *(a3 + 272));
  std::vector<TSWPAdornmentLine>::__base_destruct_at_end[abi:ne200100](a3 + 296, *(a3 + 296));
  std::vector<TSWPAdornmentLine>::__base_destruct_at_end[abi:ne200100](a3 + 320, *(a3 + 320));
  std::vector<TSWPAdornmentLine>::__base_destruct_at_end[abi:ne200100](a3 + 344, *(a3 + 344));
  TSWPCoreTextTypesetter::createLineRefsForLineFragment(a1, a3, a2, v9 != 0, a5);
  v13 = *(a3 + 192);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 200) - v13) >> 4) >= 2)
  {
    v14 = 2;
    v15 = 1;
    do
    {
      v16 = v13 + 48 * v15;
      v17 = *(v16 + 8);
      v20 = 0;
      ascent = 0.0;
      v18 = v17 + CTLineGetTypographicBounds(*v16, &ascent, &v20, 0);
      if (*(a3 + 216) >= v18)
      {
        v18 = *(a3 + 216);
      }

      *(a3 + 216) = v18;
      v15 = v14;
      v13 = *(a3 + 192);
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 200) - v13) >> 4) > v14++);
  }
}

double TSWPCoreTextTypesetter::pCalcStyleRunsHeightInfo(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  v86 = *(a3 + 200);
  if (*(a1 + 108) <= a4)
  {
    v15 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGRect TSWPCoreTextTypesetter::pCalcStyleRunsHeightInfo(const TSWPLayoutState *, TSWPTypesetterParamBlock *, CGRect, uint, NSRange)"}];
    [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 1998, @"Bad run index"}];
  }

  v17 = *(v86 + 192);
  if (*(v86 + 200) == v17)
  {
    GlyphRuns = 0;
  }

  else
  {
    GlyphRuns = CTLineGetGlyphRuns(*v17);
  }

  v81 = GlyphRuns;
  v19 = [(__CFArray *)GlyphRuns count];
  v20 = 0;
  key = *MEMORY[0x277CC4838];
  v85 = *MEMORY[0x277CC4AC8];
  v87 = v19;
  v21 = a4;
  x = a7;
  y = a8;
  width = a9;
  height = a10;
  do
  {
    while (1)
    {
      v26 = v20;
      if (v19 <= v20 || (*(v86 + 25) & 0x40) != 0)
      {
        v38 = 0;
        Attributes = 0;
        v37 = *(a1 + 120);
        LODWORD(v32) = v21;
        v30 = *(v37 + 104 * v21);
        v42 = 1;
      }

      else
      {
        v27 = [(__CFArray *)v81 objectAtIndexedSubscript:v20];
        Attributes = CTRunGetAttributes(v27);
        location = CTRunGetStringRange(v27).location;
        v30 = location;
        v31 = *(a1 + 108) - 1;
        if (a4 <= v31)
        {
          v32 = v31;
        }

        else
        {
          v32 = a4;
        }

        v21 = v32;
        v34 = 104 * a4 + 104;
        v33 = a4 - 1;
        while (v33 - v32 != -1)
        {
          v35 = *(*(a1 + 120) + v34);
          ++v33;
          v34 += 104;
          if (v35 > location)
          {
            LODWORD(v32) = v33;
            v21 = v33;
            break;
          }
        }

        v36 = CFDictionaryGetValue(Attributes, key);
        v37 = *(a1 + 120);
        if (v36 == *(v37 + 104 * v32 + 24))
        {
          v38 = 0;
          v42 = 0;
        }

        else
        {
          v38 = v36;
          value = 0;
          if (!CFDictionaryGetValueIfPresent(Attributes, v85, &value) || !CFBooleanGetValue(value))
          {
            GlyphCount = CTRunGetGlyphCount(v27);
            if (GlyphCount >= 1)
            {
              v40 = GlyphCount;
              std::vector<long>::vector[abi:ne200100](buffer, GlyphCount);
              v92.location = 0;
              v92.length = 0;
              CTRunGetStringIndices(v27, v92, buffer[0]);
              v41 = 0;
              while ((IsWhitespaceCharacter(*(*(a1 + 80) + 2 * buffer[0][v41])) & 1) != 0)
              {
                if (v40 == ++v41)
                {
                  v38 = 0;
                  break;
                }
              }

              if (buffer[0])
              {
                buffer[1] = buffer[0];
                operator delete(buffer[0]);
              }
            }
          }

          v42 = 0;
          v37 = *(a1 + 120);
        }
      }

      v43 = 0;
      buffer[0] = 0;
      if (*(a1 + 30) == 1 && Attributes)
      {
        if (CFDictionaryGetValueIfPresent(Attributes, v85, buffer))
        {
          v43 = CFBooleanGetValue(buffer[0]) != 0;
        }

        else
        {
          v43 = 0;
        }
      }

      v44 = v37 + 104 * v32;
      v45 = *v44;
      v47 = *v44 != a5 || a6 != 0;
      if (v45 >= a5 + a6 && v47)
      {
LABEL_62:
        v19 = v87;
        goto LABEL_63;
      }

      if ((*(v44 + 8) & 1) != 0 && v45 >= a5)
      {
        v48 = [*(a1 + 64) attachmentAtCharIndex:?];
        if (v48)
        {
          v49 = v48;
          if (![v48 isDrawable])
          {
            objc_opt_class();
            if (!TSUDynamicCast())
            {
              goto LABEL_55;
            }

            v79 = height;
            v51 = width;
            v52 = y;
            v53 = x;
            objc_opt_class();
            v54 = TSUDynamicCast();
            [v54 baselineOffset];
            v56 = v55;
            [v54 size];
            v58 = fmax(*(a1 + 160), v56 + fmax(v57, 1.0));
            *(a1 + 160) = v58;
            v59 = a3;
            if (v58 > *(a3 + 192))
            {
              *(a3 + 192) = v58;
              *(a1 + 184) = 0;
            }

            v60 = fmax(*(a1 + 176), -v56);
            *(a1 + 176) = v60;
            if (v60 > *(a3 + 104))
            {
              goto LABEL_52;
            }

LABEL_53:
            v50 = 4;
            x = v53;
            y = v52;
            width = v51;
            height = v79;
LABEL_54:
            *(v86 + 24) |= v50;
            goto LABEL_55;
          }

          if ([v49 isAnchored])
          {
            v50 = 8;
            goto LABEL_54;
          }

          if (([v49 isPartitioned] & 1) == 0)
          {
            v78 = a7;
            v79 = height;
            v51 = width;
            v52 = y;
            v53 = x;
            v68 = TSWPLayoutChore::validatedLayoutForInlineAttachment(*(a1 + 8), v49, 0, 0);
            [v49 descent];
            v70 = v69;
            TSWPResolveFloatPropertyForStyles(*(v44 + 16), *(a2 + 96), 33);
            v72 = v71;
            [v68 inlineVerticalOffset];
            v74 = v70 + v73;
            [TSWPLayoutChore::validatedLayoutForInlineAttachment(*(a1 + 8) v49];
            v76 = fmax(*(a1 + 160), v72 + fmax(v75, 1.0) - v74);
            *(a1 + 160) = v76;
            v59 = a3;
            if (v76 > *(a3 + 192))
            {
              *(a3 + 192) = v76;
              *(a1 + 184) = 0;
            }

            v60 = fmax(*(a1 + 176), v74 - v72);
            *(a1 + 176) = v60;
            a7 = v78;
            if (v60 <= *(a3 + 104))
            {
              goto LABEL_53;
            }

LABEL_52:
            *(v59 + 104) = v60;
            goto LABEL_53;
          }
        }
      }

LABEL_55:
      v61 = v30 < *(a1 + 56) - 1 || v30 == a5;
      if (v61 || (IsParagraphBreakingCharacter(*(*(a1 + 80) + 2 * v30)) & 1) == 0)
      {
        TSWPCoreTextTypesetter::pAdjustMaxHeightInfo(a1, a2, a3, v44, v38, v43);
      }

      if ((*(v44 + 8) & 4) == 0)
      {
        goto LABEL_62;
      }

      v62 = TSWPResolvePropertyForStyles(*(v44 + 16), *(a2 + 96), 40, 0);
      v19 = v87;
      if (v62)
      {
        v63 = v62;
        if ([v62 isEnabled])
        {
          [v63 shadowBoundsForRect:{a7, a8, a9, a10}];
          v95.origin.x = v64;
          v95.origin.y = v65;
          v95.size.width = v66;
          v95.size.height = v67;
          v93.origin.x = x;
          v93.origin.y = y;
          v93.size.width = width;
          v93.size.height = height;
          v94 = CGRectUnion(v93, v95);
          x = v94.origin.x;
          y = v94.origin.y;
          width = v94.size.width;
          height = v94.size.height;
          *(v86 + 24) |= 0x20u;
        }
      }

LABEL_63:
      v20 = v26 + 1;
      v21 += v42;
      if (!v19)
      {
        break;
      }

      if (v19 <= v20)
      {
        return x;
      }
    }
  }

  while (v21 < *(a1 + 108));
  return x;
}

void sub_26C9856E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSWPCoreTextTypesetter::pAdjustMaxHeightInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __CTFont *a5, char a6)
{
  v7 = a5;
  if (!a5)
  {
    v7 = *(a4 + 24);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  TSWPFontHeightInfoForFont(v7, &v26);
  v12 = TSWPResolveIntPropertyForStyles(*(a4 + 16), *(a2 + 96), 36, 0);
  v13 = v12 != 0;
  if (v12)
  {
    Size = CTFontGetSize(v7);
    CopyWithAttributes = CTFontCreateCopyWithAttributes(v7, Size * 1.5, 0, 0);
    TSWPFontHeightInfoForFont(CopyWithAttributes, v25);
    v26 = v25[0];
    v27 = v25[1];
    v28 = v25[2];
    v29 = v25[3];
  }

  else
  {
    CopyWithAttributes = 0;
  }

  TSWPResolveFloatPropertyForStyles(*(a4 + 16), *(a2 + 96), 33);
  if (v16 != 0.0)
  {
    v17 = v16;
    if (v12 == 2)
    {
      if (v16 >= 0.0)
      {
        Descent = CTFontGetDescent(CopyWithAttributes);
        v22 = v17 + CTFontGetDescent(v7) - Descent;
        if (v22 <= 0.0)
        {
          goto LABEL_21;
        }

        v23 = v22 + *&v27;
LABEL_17:
        *&v27 = v23;
        goto LABEL_21;
      }
    }

    else
    {
      if (v12 == 1)
      {
        if (v16 <= 0.0)
        {
          Ascent = CTFontGetAscent(CopyWithAttributes);
          v19 = CTFontGetAscent(v7) - Ascent - v17;
          if (v19 > 0.0)
          {
            v20 = v19 + *(&v27 + 1);
LABEL_20:
            *(&v27 + 1) = v20;
          }

LABEL_21:
          v13 = 1;
          goto LABEL_22;
        }

        goto LABEL_16;
      }

      if (v16 > 0.0)
      {
LABEL_16:
        v23 = v16 + *&v27;
        goto LABEL_17;
      }

      if (v16 >= 0.0)
      {
        goto LABEL_21;
      }
    }

    v20 = *(&v27 + 1) - v16;
    goto LABEL_20;
  }

LABEL_22:
  if (CopyWithAttributes)
  {
    CFRelease(CopyWithAttributes);
  }

  if (v13)
  {
    *(*(a3 + 200) + 24) |= 0x400u;
  }

  return TSWPCoreTextTypesetter::pAdjustMaxHeightInfoForHeightInfo(a1, &v26, a3, a6);
}

uint64_t TSWPCoreTextTypesetter::pAdjustMaxHeightInfoForHeightInfo(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (*(result + 30) != 1 || (a4 & 1) != 0)
  {
    *(result + 168) = vmaxnmq_f64(*(result + 168), *(a2 + 16));
    v4 = 0.0;
  }

  else
  {
    v4 = (*(a2 + 16) + *(a2 + 24)) * 0.5;
    v5 = (*(result + 168) + *(result + 176)) * 0.5;
    if (v5 < v4)
    {
      v5 = (*(a2 + 16) + *(a2 + 24)) * 0.5;
    }

    *(result + 168) = v5;
    *(result + 176) = v5;
  }

  *(result + 152) = fmax(*(result + 152), *a2);
  *(result + 192) = vmaxnmq_f64(*(result + 192), *(a2 + 40));
  *(result + 208) = fmax(*(result + 208), *(a2 + 56));
  if (v4 == 0.0)
  {
    v4 = *(a2 + 16);
  }

  v6 = v4 + *(a2 + 32);
  if (*(a3 + 192) >= v6)
  {
    v6 = *(a3 + 192);
  }

  *(a3 + 192) = v6;
  return result;
}

double TSWPCoreTextTypesetter::pMaxRubyHeightAboveLineFragment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0.0;
  if (*(a3 + 232) != *(a3 + 224))
  {
    v5 = TSWPLayoutChore::calculateBaselineOffsetWithHeightInfo((a3 + 112), a2);
    v6 = *(a3 + 224);
    if (*(a3 + 232) != v6)
    {
      v7 = v5;
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = v6 + 48 * v8;
        ascent = 0.0;
        CTLineGetTypographicBounds(*v10, &ascent, 0, 0);
        if (v3 <= -(v7 + *(v10 + 16) - ascent))
        {
          v3 = -(v7 + *(v10 + 16) - ascent);
        }

        v8 = v9;
        v6 = *(a3 + 224);
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 232) - v6) >> 4) > v9++);
    }
  }

  return v3;
}

uint64_t ___ZNK22TSWPCoreTextTypesetter29createLineRefsForLineFragmentEP16TSWPLineFragmentPK15TSWPLayoutStateb15TSWPLayoutFlags_block_invoke(uint64_t result, CGColorRef color2)
{
  if (color2)
  {
    v2 = result;
    if (*(*(*(result + 32) + 8) + 24))
    {
      v4 = *(*(result + 40) + 8);
      result = *(v4 + 24);
      if (!result)
      {
LABEL_6:
        *(v4 + 24) = color2;
        return result;
      }

      result = CGColorEqualToColor(result, color2);
      if (result)
      {
        v4 = *(*(v2 + 40) + 8);
        goto LABEL_6;
      }

      *(*(*(v2 + 32) + 8) + 24) = 0;
    }
  }

  return result;
}

double TSWPCoreTextTypesetter::pAdditionalOffsetForLineFragment(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  if ((a4 & 0x20000) != 0)
  {
    return 0.0;
  }

  v6 = [*(a1 + 64) charRangeMappedFromStorage:{*a3, a3[1]}];
  v8 = v7;
  v9 = [*(a1 + 64) attachmentAtCharIndex:v6];
  if (![v9 isDrawable] || (objc_msgSend(v9, "isAnchored") & 1) != 0 || (objc_msgSend(v9, "isPartitioned") & 1) != 0)
  {
    return 0.0;
  }

  v10 = *(a1 + 48);
  if (v10 == 1)
  {
    v11 = 0;
  }

  else
  {
    if (v10 != 2)
    {
      return 0.0;
    }

    v11 = IsParagraphBreakingCharacter(*(*(a1 + 80) + 2 * v6 + 2 * v8 - 2)) ^ 1;
  }

  if (*(a2 + 388) != 2 || (v11 & 1) != 0)
  {
    return 0.0;
  }

  v12 = TSWPLayoutChore::validatedLayoutForInlineAttachment(*(a1 + 8), v9, 0, 0);

  [v12 inlineCenteredAlignmentOffset];
  return result;
}

double TSWPCoreTextTypesetter::pLineRefStartForLineFragment(TSWPCoreTextTypesetter *this, id *a2, const TSWPLineFragment *a3, double a4)
{
  v5 = *(a3 + 6);
  [a2[13] wpBounds];
  v7 = a4 - (v5 - v6);
  if (v7 < 0.0)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSWPCoreTextTypesetter::pLineRefStartForLineFragment(const TSWPLayoutState *, const TSWPLineFragment *, CGFloat) const"}];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 4481, @"Negative lineRef start position"}];
  }

  return v7;
}

BOOL TSWPCoreTextTypesetter::pSetUpEmphasisMarkAdornments(id *this, const TSWPLayoutState *a2, TSWPAdornments *a3, CTRunRef *a4, TSWPLineFragment *a5, NSString *a6, unsigned __int16 *a7, CGSize *a8)
{
  buffer[1] = *MEMORY[0x277D85DE8];
  v15 = [this[8] characterStyleAtCharIndex:CTRunGetStringRange(*a4).location effectiveRange:0];
  [TSWPResolvePropertyForStyles(v15 *(a2 + 12)];
  v17 = v16;
  Attributes = CTRunGetAttributes(*a4);
  GlyphCount = CTRunGetGlyphCount(*a4);
  if (![(__CFDictionary *)Attributes objectForKeyedSubscript:*MEMORY[0x277CC4A00]])
  {
    goto LABEL_8;
  }

  v41.location = 0;
  v41.length = 1;
  CTRunGetStringIndices(*a4, v41, buffer);
  if (*(this[10] + buffer[0]) == kTateChuYokoDummySpaceCharacter && GlyphCount == 1 && (v20 = this[29]) != 0)
  {
    TateChuYokoLineRefsForCharIndex = TSWPParagraphTypesetter::findTateChuYokoLineRefsForCharIndex(v20, buffer[0]);
    v22 = TateChuYokoLineRefsForCharIndex != 0;
    if (v15 && TateChuYokoLineRefsForCharIndex)
    {
      [TSWPResolvePropertyForStyles(0 *(a2 + 12)];
      v17 = v23;
LABEL_8:
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = CTFontCreateWithName(@"HiraMinProN-W3", v17 * ([*(a2 + 13) scaleTextPercent] / 100.0) / 3.0, 0);
  if (v24)
  {
    v25 = v24;
    if (v22)
    {
      v26 = [(__CFDictionary *)Attributes objectForKeyedSubscript:*MEMORY[0x277CC49C0]];
      CFRetain(v25);
      v27 = *(a3 + 3);
      if (v27)
      {
        CFRelease(v27);
      }

      *(a3 + 3) = v25;
      CGColorRetain(v26);
      CGColorRelease(*(a3 + 2));
      *(a3 + 2) = v26;
      v28 = [(NSString *)a6 characterAtIndex:0];
      LOWORD(buffer[0]) = v28;
      v29 = TSWPGetAdornmentLocation(this[12], *(this + 30), 4);
      v30 = TSWPCJKLanguageForInputLanguageString(this[12]);
      if (v28 == 65093)
      {
        if (v29 == 2 || v30 == 1)
        {
          v31 = 0;
          LOWORD(buffer[0]) = 8226;
        }

        else
        {
          v31 = 1;
        }
      }

      else
      {
        v31 = 0;
      }

      *(a3 + 192) = v31 & (*(a5 + 6) >> 13);
      GlyphsForCharacters = CTFontGetGlyphsForCharacters(v25, buffer, a7, 1);
      if (GlyphsForCharacters)
      {
        CTFontGetAdvancesForGlyphs(*(a3 + 3), kCTFontOrientationDefault, a7, a8, 1);
        Ascent = CTFontGetAscent(v25);
        Descent = CTFontGetDescent(v25);
        width = a8->width;
        *(a3 + 19) = Ascent;
        *(a3 + 20) = Descent;
        *(a3 + 21) = width;
        *(a3 + 1) = v29;
      }
    }

    else
    {
      GlyphsForCharacters = 0;
    }

    CFRelease(v25);
  }

  else
  {
    v32 = [MEMORY[0x277D6C290] currentHandler];
    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSWPCoreTextTypesetter::pSetUpEmphasisMarkAdornments(const TSWPLayoutState *, TSWPAdornments &, const CTRunRef &, TSWPLineFragment *, NSString *, CGGlyph &, CGSize &) const"}];
    [v32 handleFailureInFunction:v33 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 4153, @"Emphasis marks, no font."}];
    return 0;
  }

  return GlyphsForCharacters;
}

void *TSWPCoreTextTypesetter::pFindTateRun(TSWPCoreTextTypesetter *this, uint64_t a2, uint64_t a3)
{
  if (*(*(this + 10) + 2 * a2) == kTateChuYokoDummySpaceCharacter && a3 == 1 && (v3 = *(this + 29)) != 0)
  {
    return TSWPParagraphTypesetter::findTateChuYokoLineRefsForCharIndex(v3, a2);
  }

  else
  {
    return 0;
  }
}

double TSWPCoreTextTypesetter::pCalculateTrailingWhiteSpace(TSWPCoreTextTypesetter *this, double result, int a3, char a4, uint64_t a5, const CGPoint *a6, const CGSize *a7, uint64_t *a8)
{
  if ((a4 & 1) == 0 && a6 && !a3 && a7 && a8 && result > 0.0 && a5 && a5 - 1 >= 0)
  {
    v8 = a6[a5 - 1].x + a7[a5 - 1].width;
    v9 = 16 * a5 - 16;
    v10 = (&a7->width + v9);
    v11 = (&a6->x + v9);
    do
    {
      v12 = v8 - (*v11 + *v10);
      if (v12 >= result)
      {
        break;
      }

      if (*(*(this + 10) + 2 * a8[a5 - 1]) == 9)
      {
        if (v12 >= 0.0)
        {
          return v8 - (*v11 + *v10);
        }

        return result;
      }

      --a5;
      v10 -= 2;
      v11 -= 2;
    }

    while (a5 >= 1);
  }

  return result;
}

unint64_t addAdornmentLine(uint64_t *a1, TSWPAdornmentLine *a2)
{
  v4 = a1[1];
  if (v4 == *a1 || (v5 = TSWPAdornmentLine::merge((v4 - 80), a2), v4 = a1[1], !v5))
  {
    if (v4 >= a1[2])
    {
      v4 = std::vector<TSWPAdornmentLine>::__emplace_back_slow_path<TSWPAdornmentLine const&>(a1, a2);
    }

    else
    {
      std::allocator_traits<std::allocator<TSWPAdornmentLine>>::construct[abi:ne200100]<TSWPAdornmentLine,TSWPAdornmentLine const&,0>(a1, v4, a2);
      v4 += 80;
      a1[1] = v4;
    }

    a1[1] = v4;
  }

  return v4 - 80;
}

void TSWPCoreTextTypesetter::pAddHighlightAdornmentToLineFragment(TSWPCoreTextTypesetter *this, TSWPLineFragment *a2, double a3, CGFloat a4, TSKAnnotationAuthor *a5)
{
  v8 = [[TSKAnnotationAuthorTextHighlightColorProvider alloc] initWithAnnotationAuthor:a5];
  v10.var0.x = a4;
  v10.var0.y = 0.0;
  v10.var1 = a3;
  v10.var7 = 0.0;
  v10.var8 = 0;
  memset(&v10.var2, 0, 28);
  v10.var9 = v8;
  CGColorRetain(0);
  v9 = v8;
  addAdornmentLine(a2 + 43, &v10);

  CGColorRelease(v10.var2);
}

void TSWPCoreTextTypesetter::pAddEmphasisMarkGlyph(uint64_t a1, TSWPAdornments *a2, uint64_t a3, CTRunRef run, CFRange range, uint64_t a6, const __CTFont *a7, CGFloat a8, double a9, double a10, double a11, double a12, unint64_t charIndex, char a14, unsigned __int16 a15)
{
  length = range.length;
  location = range.location;
  if (range.length || (IsWordBoundaryCharacter(a6) & 1) == 0 && ([objc_msgSend(MEMORY[0x277CCA900] "punctuationCharacterSet")] & 1) == 0)
  {
    if (*(a2 + 1) != 1 || ((v36.origin = *MEMORY[0x277D6C268], *&v36.origin.x == *MEMORY[0x277D6C268]) ? (v26 = *&v36.origin.y == *(MEMORY[0x277D6C268] + 8)) : (v26 = 0), !v26 || ![*(a1 + 64) smartFieldAtCharIndex:charIndex attributeKind:7 effectiveRange:&v36] || charIndex < *&v36.origin.x || charIndex - *&v36.origin.x >= *&v36.origin.y))
    {
      v27 = *(MEMORY[0x277CBF3A0] + 16);
      v36.origin = *MEMORY[0x277CBF3A0];
      v36.size = v27;
      if (length)
      {
        width = *(length + 32);
        v29 = *(a3 + 8);
        v30 = v29 + CTLineGetOffsetForStringIndex(*a3, charIndex, 0);
        v31 = 0.5;
        v32 = width * 0.5 + v30;
      }

      else
      {
        LOWORD(v35.x) = 0;
        v37.location = location;
        v37.length = 1;
        CTRunGetGlyphs(run, v37, &v35);
        if (a14)
        {
          v34 = kCTFontOrientationVertical;
        }

        else
        {
          v34 = kCTFontOrientationDefault;
        }

        BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(a7, v34, &v35, 0, 1);
        if (!a14)
        {
          v35.x = a8 + (a10 - a12) * 0.5;
          v35.y = 0.0;
          v36.origin.x = a8;
          width = a10;
          goto LABEL_22;
        }

        width = BoundingRectsForGlyphs.size.width;
        v30 = -a9;
        v31 = 0.5;
        v32 = -a9 - BoundingRectsForGlyphs.size.width * 0.5;
      }

      v35.x = v32 - a12 * v31;
      v35.y = 0.0;
      v36.origin.x = v30;
LABEL_22:
      v36.origin.y = 0.0;
      v36.size.width = width;
      v36.size.height = 1.0;
      TSWPAdornments::add(a2, [*(a1 + 64) charIndexMappedToStorage:{charIndex, *&v35.x, *&v35.y, *&v36.origin.x, 0, *&width, 0x3FF0000000000000}], &v35, &a15, &v36);
    }
  }
}

void TSWPCoreTextTypesetter::pAddInvisibleBreakToLineFragment(id *this, const TSWPLayoutState *a2, TSWPLineFragment *a3, int a4, double a5, char a6)
{
  v12 = [this[8] charRangeMappedFromStorage:{*a3, *(a3 + 1)}];
  v14 = *(*(a3 + 24) + 8);
  if (a4 > 11)
  {
    if (a4 > 8231)
    {
      if (a4 == 8232)
      {
        v16 = 0.0;
        v17 = 2;
        goto LABEL_23;
      }

      if (a4 != 8233)
      {
        return;
      }
    }

    else
    {
      if (a4 == 12)
      {
        v16 = 1.0;
        v17 = 4;
        goto LABEL_23;
      }

      if (a4 != 13)
      {
        return;
      }
    }

    goto LABEL_17;
  }

  if ((a4 - 10) < 2)
  {
LABEL_17:
    v18 = [this[8] hasColumnStyleForParagraphBreakAtCharIndex:v13 + v12 - 1];
    if (v18)
    {
      v16 = 1.0;
    }

    else
    {
      v16 = 0.0;
    }

    if (v18)
    {
      v17 = 5;
    }

    else
    {
      v17 = 3;
    }

    goto LABEL_23;
  }

  if (a4 == 4)
  {
    v16 = 2.0;
    v17 = 7;
  }

  else
  {
    if (a4 != 5)
    {
      return;
    }

    v15 = [this[8] hasColumnStyleForParagraphBreakAtCharIndex:v13 + v12 - 1];
    if (v15)
    {
      v16 = 1.0;
    }

    else
    {
      v16 = 2.0;
    }

    if (v15)
    {
      v17 = 5;
    }

    else
    {
      v17 = 6;
    }
  }

LABEL_23:
  v19 = v14 + a5;
  if (TSWPParagraphEnumerator::paragraphTextRange((a2 + 24)) != *(a3 + 2))
  {
    v20 = [MEMORY[0x277D6C290] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPCoreTextTypesetter::pAddInvisibleBreakToLineFragment(const TSWPLayoutState *, TSWPLineFragment *, unichar, CGFloat, BOOL) const"}];
    [v20 handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 3419, @"line fragment isn't from the current paragraph"}];
  }

  v22 = (&gInvisibles + 40 * v17);
  v23 = v22[1];
  v24 = *(a3 + 6);
  if (fabs(v19) == INFINITY)
  {
    if ((v24 & 0x1000) == 0)
    {
      v19 = *(a3 + 27) + 0.0;
      goto LABEL_37;
    }

    v25 = 0.0;
    goto LABEL_36;
  }

  if ((v24 & 0x1000) != 0)
  {
    v25 = 0.0;
    if (v19 >= 0.0)
    {
      v25 = v19;
    }

LABEL_36:
    v19 = v25 - v23;
    goto LABEL_37;
  }

  if ((a6 & 1) == 0 && *(a3 + 8) < v19)
  {
    v19 = *(a3 + 8);
  }

LABEL_37:
  v26 = MEMORY[0x277CBF348];
  v50 = *MEMORY[0x277CBF348];
  if (*(v22 + 2) == 1)
  {
    if ((v24 & 0x1000) != 0)
    {
      v28 = fmin(v19, 0.0);
      *&v50 = v28;
      v29 = v23 + v19 - (v23 + v28);
    }

    else
    {
      v27 = *(a3 + 8) - v23;
      if (v27 >= v19)
      {
        v28 = v27;
      }

      else
      {
        v28 = v19;
      }

      v29 = v28 - v19;
      if (v28 - v19 < 0.0)
      {
        goto LABEL_52;
      }
    }

    if (v29 > 0.0)
    {
      if (v16 <= 0.0)
      {
        v30 = [MEMORY[0x277D6C290] currentHandler];
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPCoreTextTypesetter::pAddInvisibleBreakToLineFragment(const TSWPLayoutState *, TSWPLineFragment *, unichar, CGFloat, BOOL) const"}];
        [v30 handleFailureInFunction:v31 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 3477, @"break line has no thickness"}];
      }

      if (!TSWPCoreTextTypesetter::pAddInvisibleBreakToLineFragment(TSWPLayoutState const*,TSWPLineFragment *,unsigned short,double,BOOL)const::invisiblesColor)
      {
        TSWPCoreTextTypesetter::pAddInvisibleBreakToLineFragment(TSWPLayoutState const*,TSWPLineFragment *,unsigned short,double,BOOL)const::invisiblesColor = CGColorRetain([objc_msgSend(MEMORY[0x277D6C2A8] colorWithRed:0.180392161 green:0.533333361 blue:0.921568632 alpha:{1.0), "CGColor"}]);
      }

      operator new();
    }

    goto LABEL_52;
  }

  v28 = (7.0 - v23) * 0.5 + v19;
  *&v50 = v28;
LABEL_52:
  *&v50 = v28 - v14;
  v32 = +[TSWPRenderer invisiblesFont];
  v36[0] = 0x100000002;
  v36[1] = 0;
  color = 0;
  cf = v32;
  *v39 = 0u;
  *v40 = 0u;
  v41 = 0u;
  *v42 = 0u;
  *v43 = 0u;
  v44 = 0u;
  *__p = 0u;
  v46 = 0u;
  v33 = *v26;
  v47 = 0u;
  v48 = v33;
  v49 = 0;
  CGColorRetain(0);
  if (v32)
  {
    CFRetain(v32);
  }

  std::vector<CGPoint>::push_back[abi:ne200100](&v43[1], &v50);
  std::vector<unsigned short>::push_back[abi:ne200100](&v40[1], v22 + 16);
  v34 = *(a3 + 56);
  if (v34 >= *(a3 + 57))
  {
    v35 = std::vector<TSWPAdornments>::__emplace_back_slow_path<TSWPAdornments const&>(a3 + 440, v36);
  }

  else
  {
    TSWPAdornments::TSWPAdornments(*(a3 + 56), v36);
    v35 = v34 + 200;
    *(a3 + 56) = v34 + 200;
  }

  *(a3 + 56) = v35;
  TSWPLineFragment::adjustBreakLine(a3);
  CGColorRelease(color);
  if (cf)
  {
    CFRelease(cf);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v43[1])
  {
    *&v44 = v43[1];
    operator delete(v43[1]);
  }

  if (v42[0])
  {
    v42[1] = v42[0];
    operator delete(v42[0]);
  }

  if (v40[1])
  {
    *&v41 = v40[1];
    operator delete(v40[1]);
  }

  if (v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
  }
}

void TSWPCoreTextTypesetter::pApplyChangeTrackingToLineFragment(id *this, TSWPLineFragment *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if ([this[2] hasTrackedChanges])
  {
    *(v21 + 15) = 65793;
    v21[0] = xmmword_26CA66F78;
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    memset(&v17[3], 0, 64);
    v5 = *a2;
    v4 = *(a2 + 1);
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v6 = v4 + v5;
    memset(v17, 0, 48);
    do
    {
      [this[2] attributesAtCharIndex:v5 attributesOfInterest:v21 attributesTable:v17 effectiveRange:&v15];
      if (!v16 && v5 != *(a2 + 1) + *a2)
      {
        v7 = [MEMORY[0x277D6C290] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPCoreTextTypesetter::pApplyChangeTrackingToLineFragment(TSWPLineFragment *) const"];
        [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 4574, @"Empty effectiveRange"}];
      }

      v10 = *(&v18 + 1);
      v9 = v19;
      if (*(&v18 + 1) && ![*(&v18 + 1) showsMarkup])
      {
        v10 = 0;
      }

      if (v9)
      {
        if (![v9 isHidden] || (objc_msgSend(v9, "showsMarkup") & 1) != 0)
        {
          v11 = v10 != 0;
          v12 = 1;
LABEL_18:
          *(a2 + 6) |= 0x80000u;
          if (v11 && v12)
          {
            if (![objc_msgSend(v10 "changeAdornmentsColor")])
            {
              v13 = 0;
              goto LABEL_26;
            }

LABEL_23:
            v14 = v10;
          }

          else
          {
            if (v11)
            {
              goto LABEL_23;
            }

            v14 = v9;
          }

          v13 = [v14 changeAdornmentsColor];
LABEL_26:
          if (!TSWPLineFragment::markupColorIsDefault(a2) && ![v13 isEqual:TSWPLineFragment::changeAdornmentMarkupColor(a2)])
          {
            v13 = 0;
          }

          TSWPLineFragment::setChangeAdornmentMarkupColor(a2, v13);
          if (v12 && ([v9 showsMarkup] & 1) == 0)
          {
            TSWPCoreTextTypesetter::pAddHiddenDeletionForLineFragment(this, a2, [v9 changeAdornmentsColor], v16 + v15);
          }

          goto LABEL_32;
        }

        if (![v9 showsHiddenDeletionMarkup])
        {
          v9 = 0;
        }
      }

      v11 = v10 != 0;
      v12 = v9 != 0;
      if (v10 | v9)
      {
        goto LABEL_18;
      }

LABEL_32:
      if (v16)
      {
        v5 = v15 + v16;
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < v6);
  }
}

uint64_t TSWPCoreTextTypesetter::pComposedCharacterAtIndex(id *this, unint64_t a2)
{
  v4 = [this[8] length];
  if (v4 <= a2)
  {
    return 0;
  }

  v5 = v4;
  v6 = this[10];
  result = v6[a2];
  if (a2 + 1 < v5)
  {
    v8 = v6[a2 + 1];
    if ((result & 0xFC00) == 0xD800 && (v8 & 0xFC00) == 56320)
    {
      return (v8 + (result << 10) - 56613888);
    }
  }

  return result;
}

void TSWPAdornments::add(TSWPAdornments *this, uint64_t a2, CGPoint *a3, unsigned __int16 *a4, CGRect *a5)
{
  v11 = *(this + 5);
  v10 = *(this + 6);
  if (v11 >= v10)
  {
    v13 = *(this + 4);
    v14 = v11 - v13;
    v15 = (v11 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v17 = v10 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    v18 = v17 >= 0x7FFFFFFFFFFFFFF8;
    v19 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v18)
    {
      v19 = v16;
    }

    if (v19)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(this + 32, v19);
    }

    v20 = (v11 - v13) >> 3;
    v21 = (8 * v15);
    v22 = (8 * v15 - 8 * v20);
    *v21 = a2;
    v12 = v21 + 1;
    memcpy(v22, v13, v14);
    v23 = *(this + 4);
    *(this + 4) = v22;
    *(this + 5) = v12;
    *(this + 6) = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    *v11 = a2;
    v12 = v11 + 8;
  }

  *(this + 5) = v12;
  std::vector<CGPoint>::push_back[abi:ne200100](this + 104, a3);
  std::vector<unsigned short>::push_back[abi:ne200100](this + 7, a4);

  std::vector<CGRect>::push_back[abi:ne200100](this + 80, a5);
}

void TSWPCoreTextTypesetter::pFilterEmphasisMarksForRuby(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[55];
  v3 = a3[56];
  if (v3 != v4)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = v4 + 200 * v6;
      v9 = *(v8 + 80);
      v10 = *(v8 + 88);
      v11 = (v8 + 80);
      v12 = v10 - v9;
      if (v12)
      {
        v13 = v12 >> 5;
        do
        {
          --v13;
          v14 = a3[28];
          if (a3[29] != v14)
          {
            v15 = 0;
            v16 = *v11 + 32 * v13;
            v17 = *(v16 + 8);
            v18 = *v16 + *(a3[24] + 8);
            v20 = *(v16 + 16);
            v19 = *(v16 + 24);
            v21 = 1;
            while (1)
            {
              v22 = v14 + 48 * v15;
              v42.size.width = CTLineGetTypographicBounds(*v22, 0, 0, 0);
              v42.origin.x = *(v22 + 8);
              v42.origin.y = 0.0;
              v42.size.height = 1.0;
              v41.origin.x = v18;
              v41.origin.y = v17;
              v41.size.width = v20;
              v41.size.height = v19;
              if (CGRectIntersectsRect(v41, v42))
              {
                break;
              }

              v15 = v21;
              v14 = a3[28];
              if (0xAAAAAAAAAAAAAAABLL * ((a3[29] - v14) >> 4) <= v21++)
              {
                goto LABEL_26;
              }
            }

            v24 = (a3[55] + 200 * v6);
            v26 = v24[4];
            v25 = v24[5];
            if (v13 < (v25 - v26) >> 3)
            {
              v27 = v26 + 8 * v13;
              v28 = v25 - (v27 + 8);
              if (v25 != v27 + 8)
              {
                memmove((v26 + 8 * v13), (v27 + 8), v25 - (v27 + 8));
              }

              v24[5] = v27 + v28;
            }

            v30 = v24[7];
            v29 = v24[8];
            if (v13 < (v29 - v30) >> 1)
            {
              v31 = v30 + 2 * v13;
              v32 = v29 - (v31 + 2);
              if (v29 != v31 + 2)
              {
                memmove((v30 + 2 * v13), (v31 + 2), v29 - (v31 + 2));
              }

              v24[8] = v31 + v32;
            }

            v34 = v24[10];
            v33 = v24[11];
            if (v13 < (v33 - v34) >> 5)
            {
              v35 = v34 + 32 * v13;
              v36 = v33 - (v35 + 32);
              if (v33 != v35 + 32)
              {
                memmove((v34 + 32 * v13), (v35 + 32), v33 - (v35 + 32));
              }

              v24[11] = v35 + v36;
            }

            v38 = v24[13];
            v37 = v24[14];
            if (v13 < (v37 - v38) >> 4)
            {
              v39 = v38 + 16 * v13;
              v40 = v37 - (v39 + 16);
              if (v37 != v39 + 16)
              {
                memmove((v38 + 16 * v13), (v39 + 16), v37 - (v39 + 16));
              }

              v24[14] = v39 + v40;
            }
          }

LABEL_26:
          ;
        }

        while (v13);
        v4 = a3[55];
        v3 = a3[56];
      }

      v6 = ++v7;
    }

    while (0x8F5C28F5C28F5C29 * ((v3 - v4) >> 3) > v7);
  }
}

void TSWPCoreTextTypesetter::pAddHiddenDeletionForLineFragment(TSWPCoreTextTypesetter *this, TSWPLineFragment *a2, TSUColor *a3, const TSWPLineRef *a4, double a5)
{
  v9 = +[TSWPRenderer invisiblesFont];
  v19[0] = 0x100000006;
  v19[1] = 0;
  color = 0;
  cf = v9;
  *v22 = 0u;
  *v23 = 0u;
  v24 = 0u;
  *v25 = 0u;
  *v26 = 0u;
  v27 = 0u;
  *__p = 0u;
  v29 = 0u;
  v10 = *MEMORY[0x277CBF348];
  v30 = 0u;
  v31 = v10;
  v32 = 0;
  CGColorRetain(0);
  if (v9)
  {
    CFRetain(v9);
  }

  if (a3)
  {
    v11 = [(TSUColor *)a3 CGColor];
    CGColorRetain(v11);
    CGColorRelease(color);
    color = v11;
  }

  BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(v9, kCTFontOrientationDefault, word_280CDBBA0, 0, 1);
  v18 = BoundingRectsForGlyphs;
  v12 = a5 + *&qword_280CDBB88 * -0.5;
  if ((*(a2 + 25) & 0x10) != 0)
  {
    v13 = -*(a4 + 1);
    v14 = v12 < v13;
  }

  else
  {
    v13 = *(a2 + 8) - *(a4 + 1) - *&qword_280CDBB88;
    v14 = v13 < v12;
  }

  if (v14)
  {
    v12 = v13;
  }

  v17.x = v12;
  v17.y = BoundingRectsForGlyphs.size.height * -0.5;
  TSWPAdornments::add(v19, 0, &v17, word_280CDBBA0, &v18);
  if (v27 != v26[1])
  {
    v15 = *(a2 + 56);
    if (v15 >= *(a2 + 57))
    {
      v16 = std::vector<TSWPAdornments>::__emplace_back_slow_path<TSWPAdornments const&>(a2 + 440, v19);
    }

    else
    {
      TSWPAdornments::TSWPAdornments(*(a2 + 56), v19);
      v16 = v15 + 200;
      *(a2 + 56) = v15 + 200;
    }

    *(a2 + 56) = v16;
  }

  CGColorRelease(color);
  if (cf)
  {
    CFRelease(cf);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v26[1])
  {
    *&v27 = v26[1];
    operator delete(v26[1]);
  }

  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  if (v23[1])
  {
    *&v24 = v23[1];
    operator delete(v23[1]);
  }

  if (v22[0])
  {
    v22[1] = v22[0];
    operator delete(v22[0]);
  }
}

void sub_26C987218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, CGColorRef a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *__p)
{
  *(v32 + 448) = v33;
  TSWPAdornments::~TSWPAdornments(&a16);
  _Unwind_Resume(a1);
}

void TSWPCoreTextTypesetter::pAddHiddenDeletionForLineFragment(id *this, TSWPLineFragment *a2, TSUColor *a3, uint64_t a4)
{
  v6 = [this[8] charIndexMappedFromStorage:a4];
  v7 = *(a2 + 24);
  v8 = *v7;
  v11 = v8;
  v12 = *(v7 + 8);
  v13 = *(v7 + 24);
  v14 = *(v7 + 40);
  if (v8)
  {
    CFRetain(v8);
  }

  OffsetForStringIndex = CTLineGetOffsetForStringIndex(v8, v6, 0);
  TSWPCoreTextTypesetter::pAddHiddenDeletionForLineFragment(v10, a2, a3, &v11, OffsetForStringIndex);
  if (v8)
  {
    CFRelease(v8);
  }
}

double TSWPMeasureTextualAttachment(TSWPTypesetterAttachmentMap *a1)
{
  v3 = 0;
  v4 = 0;
  if ([(TSWPTypesetterAttachmentMap *)a1 lineRef])
  {
    return CTLineGetTypographicBounds([(TSWPTypesetterAttachmentMap *)a1 lineRef], &v3, &v4, 0);
  }

  else
  {
    return 0.0;
  }
}

double TSWPRunDelegateGetAscentCallback(TSWPTypesetterAttachmentMap *a1)
{
  v2 = [(TSWPTypesetterAttachmentMap *)a1 attachment];
  v3 = [(TSWPTypesetterAttachmentMap *)a1 layout];
  v4 = 0.0;
  if (v2)
  {
    v5 = v3;
    if (![(TSWPAttachment *)v2 isPartitioned])
    {
      if ([(TSWPAttachment *)v2 isDrawable])
      {
        [v5 alignmentFrame];
        v7 = v6;
        [(TSWPAttachment *)v2 descent];
        return v7 - v8;
      }

      else
      {
        objc_opt_class();
        v9 = TSUDynamicCast();
        if (v9)
        {
          v10 = v9;
          [v9 size];
          v12 = v11;
          [v10 baselineOffset];
          v4 = v12 + v13;
        }

        objc_opt_class();
        if (TSUDynamicCast())
        {
          TSWPMeasureTextualAttachment(a1);
          return v14;
        }
      }
    }
  }

  return v4;
}

double TSWPRunDelegateGetDescentCallback(TSWPTypesetterAttachmentMap *a1)
{
  v2 = [(TSWPTypesetterAttachmentMap *)a1 attachment];
  v3 = 0.0;
  if (!v2)
  {
    return v3;
  }

  v4 = v2;
  if ([(TSWPAttachment *)v2 isPartitioned])
  {
    return v3;
  }

  if (![(TSWPAttachment *)v4 isDrawable])
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    if (v6)
    {
      [v6 baselineOffset];
      v3 = -v7;
    }

    objc_opt_class();
    if (TSUDynamicCast())
    {
      TSWPMeasureTextualAttachment(a1);
      return v8;
    }

    return v3;
  }

  [(TSWPAttachment *)v4 descent];
  return result;
}

double TSWPRunDelegateGetWidthCallback(TSWPTypesetterAttachmentMap *a1)
{
  v2 = [(TSWPTypesetterAttachmentMap *)a1 attachment];
  v3 = 0.0;
  if (v2)
  {
    v4 = v2;
    if ([(TSWPAttachment *)v2 isDrawable])
    {
      if ([(TSWPAttachment *)v4 isPartitioned])
      {
        return 16000.0;
      }

      else if (![(TSWPAttachment *)v4 isAnchored])
      {
        [(TSDAbstractLayout *)[(TSWPTypesetterAttachmentMap *)a1 layout] alignmentFrame];
        return v7;
      }
    }

    else
    {
      objc_opt_class();
      v5 = TSUDynamicCast();
      if (v5)
      {
        [v5 size];
        v3 = v6;
      }

      objc_opt_class();
      if (TSUDynamicCast())
      {
        return TSWPMeasureTextualAttachment(a1);
      }
    }
  }

  return v3;
}

void std::vector<TSWPLineRef>::assign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a2)
  {
    std::vector<TSWPLineRef>::__vdeallocate(a1);
    if (a2 <= 0x555555555555555)
    {
      v7 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
      if (v7 <= a2)
      {
        v7 = a2;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v8 = 0x555555555555555;
      }

      else
      {
        v8 = v7;
      }

      std::vector<TSWPLineRef>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  v9 = (*(a1 + 8) - v6) >> 4;
  v10 = 0xAAAAAAAAAAAAAAABLL * v9;
  if (0xAAAAAAAAAAAAAAABLL * v9 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * v9;
  }

  for (; v11; --v11)
  {
    if (*a3)
    {
      CFRetain(*a3);
    }

    if (*v6)
    {
      CFRelease(*v6);
    }

    *v6 = *a3;
    *(v6 + 10) = *(a3 + 40);
    *(v6 + 1) = *(a3 + 8);
    *(v6 + 3) = *(a3 + 24);
    v6 += 6;
  }

  if (a2 <= v10)
  {
    v16 = *(a1 + 8);
    v17 = *a1 + 48 * a2;
    while (v16 != v17)
    {
      v16 -= 6;
      std::allocator<TSWPLineRef>::destroy[abi:ne200100](a1, v16);
    }

    *(a1 + 8) = v17;
  }

  else
  {
    v12 = *(a1 + 8);
    v13 = v12 + 48 * (a2 - v10);
    v14 = 48 * a2 - 48 * v10;
    do
    {
      v15 = *a3;
      *v12 = *a3;
      *(v12 + 8) = *(a3 + 8);
      *(v12 + 24) = *(a3 + 24);
      *(v12 + 40) = *(a3 + 40);
      if (v15)
      {
        CFRetain(v15);
      }

      v12 += 48;
      v14 -= 48;
    }

    while (v14);
    *(a1 + 8) = v13;
  }
}

uint64_t std::vector<TSWPLineRef>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<TSWPLineRef>::__emplace_back_slow_path<TSWPLineRef const&>(a1, a2);
  }

  else
  {
    std::vector<TSWPLineRef>::__construct_one_at_end[abi:ne200100]<TSWPLineRef const&>(a1, a2);
    result = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

CFTypeRef std::vector<TSWPLineRef>::__construct_one_at_end[abi:ne200100]<TSWPLineRef const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *a2;
  *v3 = *a2;
  *(v3 + 8) = *(a2 + 8);
  *(v3 + 24) = *(a2 + 24);
  *(v3 + 40) = *(a2 + 40);
  if (result)
  {
    result = CFRetain(result);
  }

  *(a1 + 8) = v3 + 48;
  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TSWPLineRef>,TSWPLineRef*>(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *a4 = *v7;
      *(a4 + 8) = *(v7 + 1);
      *(a4 + 24) = *(v7 + 3);
      *(a4 + 40) = *(v7 + 10);
      if (v8)
      {
        CFRetain(v8);
        a4 = v13;
      }

      v7 += 6;
      a4 += 48;
      v13 = a4;
    }

    while (v7 != a3);
    v11 = 1;
    while (v5 != a3)
    {
      std::allocator<TSWPLineRef>::destroy[abi:ne200100](a1, v5);
      v5 += 6;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TSWPLineRef>,TSWPLineRef*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

void std::__split_buffer<TSWPLineRef>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<TSWPLineRef>::destroy[abi:ne200100](v4, (i - 48));
  }
}

uint64_t std::vector<TSWPAdornmentLine>::__emplace_back_slow_path<TSWPAdornmentLine const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TSWPAdornmentLine>>(a1, v6);
  }

  v13 = 0;
  v14 = 80 * v2;
  std::allocator_traits<std::allocator<TSWPAdornmentLine>>::construct[abi:ne200100]<TSWPAdornmentLine,TSWPAdornmentLine const&,0>(a1, 80 * v2, a2);
  v15 = 80 * v2 + 80;
  v7 = a1[1];
  v8 = 80 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TSWPAdornmentLine>,TSWPAdornmentLine*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<TSWPAdornmentLine>::~__split_buffer(&v13);
  return v12;
}

void sub_26C987B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TSWPAdornmentLine>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

id std::allocator_traits<std::allocator<TSWPAdornmentLine>>::construct[abi:ne200100]<TSWPAdornmentLine,TSWPAdornmentLine const&,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 16) = *(a3 + 16);
  v4 = *(a3 + 24);
  *(a2 + 24) = v4;
  *(a2 + 32) = *(a3 + 32);
  *(a2 + 40) = *(a3 + 40);
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 56) = *(a3 + 56);
  *(a2 + 64) = *(a3 + 64);
  *(a2 + 72) = *(a3 + 72);
  CGColorRetain(v4);
  v5 = *(a2 + 72);

  return v5;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TSWPAdornmentLine>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TSWPAdornmentLine>,TSWPAdornmentLine*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<TSWPAdornmentLine>>::construct[abi:ne200100]<TSWPAdornmentLine,TSWPAdornmentLine const&,0>(a1, a4, v7);
      v7 += 80;
      a4 = v12 + 80;
      v12 += 80;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<TSWPAdornmentLine>>::destroy[abi:ne200100]<TSWPAdornmentLine,0>(a1, v5);
      v5 += 80;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TSWPAdornmentLine>,TSWPAdornmentLine*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TSWPAdornmentLine>,TSWPAdornmentLine*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<TSWPAdornmentLine>,TSWPAdornmentLine*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<TSWPAdornmentLine>,TSWPAdornmentLine*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 80;
      std::allocator_traits<std::allocator<TSWPAdornmentLine>>::destroy[abi:ne200100]<TSWPAdornmentLine,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<TSWPAdornmentLine>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<TSWPAdornmentLine>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<TSWPAdornmentLine>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 80;
    std::allocator_traits<std::allocator<TSWPAdornmentLine>>::destroy[abi:ne200100]<TSWPAdornmentLine,0>(v5, v4 - 80);
  }
}

void std::vector<unsigned short>::push_back[abi:ne200100](const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}