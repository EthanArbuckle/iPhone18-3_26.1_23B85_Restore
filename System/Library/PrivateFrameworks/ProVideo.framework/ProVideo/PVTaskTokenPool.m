@interface PVTaskTokenPool
- (PVTaskTokenPool)initWithOffset:(unint64_t)a3;
- (PVTaskTokenPoolDelegate)delegate;
- (id).cxx_construct;
- (id)getToken;
- (void)returnToken:(id)a3;
@end

@implementation PVTaskTokenPool

- (PVTaskTokenPool)initWithOffset:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PVTaskTokenPool;
  result = [(PVTaskTokenPool *)&v5 init];
  if (result)
  {
    *(result + 1) = a3;
  }

  return result;
}

- (id)getToken
{
  std::mutex::lock(self + 1);
  v3 = *(self + 7);
  if (v3)
  {
    v4 = v3 - 1;
    v5 = *(*(*(self + 3) + (((*(self + 6) + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(self + 6) + v4) & 0x1FF));
    *(self + 7) = v4;
    std::deque<unsigned long>::__maybe_remove_back_spare[abi:ne200100](self + 2, 1);
  }

  else
  {
    v5 = *(self + 1);
    *(self + 1) = v5 + 1;
  }

  v6 = [[PVTaskToken alloc] initWithPool:self tokenId:v5];
  v7 = [(PVTaskTokenPool *)self delegate];

  if (v7)
  {
    v8 = [(PVTaskTokenPool *)self delegate];
    [v8 tokenTaken:v6];
  }

  std::mutex::unlock(self + 1);

  return v6;
}

- (void)returnToken:(id)a3
{
  v4 = a3;
  if (([v4 returned] & 1) == 0)
  {
    std::mutex::lock(self + 1);
    v7 = [v4 tokenId];
    std::deque<unsigned long>::push_back(self + 2, &v7);
    [v4 setReturned:1];
    v5 = [(PVTaskTokenPool *)self delegate];

    if (v5)
    {
      v6 = [(PVTaskTokenPool *)self delegate];
      [v6 tokenReturned:v4];
    }

    std::mutex::unlock(self + 1);
  }
}

- (PVTaskTokenPoolDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(self + 16);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 1) = 0u;
  *(self + 8) = 850045863;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 15) = 0;
  return self;
}

@end