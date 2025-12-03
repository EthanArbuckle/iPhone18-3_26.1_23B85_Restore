@interface CRCoderArchiver
+ (id)encodedDataWithDocument:(id)document;
- (id).cxx_construct;
- (id)encodeDocument:(id)document;
- (int)indexForKey:(id)key;
- (unint64_t)encodeUUIDIndexFromUUID:(id)d;
- (void)currentCustomObjectForEncoding;
- (void)encodeDouble:(double)double forKey:(id)key;
- (void)encodeInt32:(int)int32 forKey:(id)key;
- (void)encodeInt64:(int64_t)int64 forKey:(id)key;
- (void)encodeObject:(id)object forKey:(id)key;
- (void)encodeObject:(id)object forObjectID:(void *)d;
- (void)encodeString:(id)string forKey:(id)key;
- (void)encodeUInt32:(unsigned int)int32 forKey:(id)key;
- (void)encodeUInt64:(unint64_t)int64 forKey:(id)key;
- (void)encodeUUID:(id)d forKey:(id)key;
- (void)mutableObjectIDForKey:(id)key;
- (void)setTypeIndexForCurrentCustomObjectIfNecessary:(id)necessary;
@end

@implementation CRCoderArchiver

+ (id)encodedDataWithDocument:(id)document
{
  documentCopy = document;
  v5 = objc_alloc_init(self);
  v6 = [v5 encodeDocument:documentCopy];

  return v6;
}

- (id)encodeDocument:(id)document
{
  v5 = *MEMORY[0x1E69E9840];
  documentCopy = document;
  operator new();
}

- (void)setTypeIndexForCurrentCustomObjectIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v4 = [(CRCoder *)self typeIndexForClass:objc_opt_class()];
  v5 = v4;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentCustomObjectForEncoding = [(CRCoderArchiver *)self currentCustomObjectForEncoding];
    currentCustomObjectForEncoding[8] |= 1u;
    currentCustomObjectForEncoding[16] = v5;
  }
}

- (void)encodeObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (objectCopy)
  {
    [(CRCoderArchiver *)self encodeObject:objectCopy forObjectID:[(CRCoderArchiver *)self mutableObjectIDForKey:keyCopy]];
  }
}

- (void)encodeObject:(id)object forObjectID:(void *)d
{
  objectCopy = object;
  encodedObjects = [(CRCoderArchiver *)self encodedObjects];
  v8 = [MEMORY[0x1E696B098] valueWithNonretainedObject:objectCopy];
  v9 = [encodedObjects indexOfObject:v8];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = *([(CRCoderArchiver *)self currentDocument]+ 64);
    if (*(d + 12) != 6)
    {
      CRDT::ObjectID::clear_contents(d);
      *(d + 12) = 6;
    }

    *(d + 10) = v10;
    currentDocument = [(CRCoderArchiver *)self currentDocument];
    v12 = *(currentDocument + 17);
    v13 = *(currentDocument + 16);
    if (v13 >= v12)
    {
      if (v12 == *(currentDocument + 18))
      {
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(currentDocument + 7, v12 + 1);
      }

      google::protobuf::internal::GenericTypeHandler<CRDT::Document_DocObject>::New();
    }

    v14 = currentDocument[7];
    *(currentDocument + 16) = v13 + 1;
    v17 = *(v14 + 8 * v13);
    std::vector<CRDT::Document_DocObject *>::push_back[abi:ne200100](&self->currentDocObjectEncodingStack, &v17);
    encodedObjects2 = [(CRCoderArchiver *)self encodedObjects];
    v16 = [MEMORY[0x1E696B098] valueWithNonretainedObject:objectCopy];
    [encodedObjects2 addObject:v16];

    [(CRCoderArchiver *)self setTypeIndexForCurrentCustomObjectIfNecessary:objectCopy];
    [objectCopy encodeWithCRCoder:self];
    --self->currentDocObjectEncodingStack.__end_;
  }

  else
  {
    if (*(d + 12) != 6)
    {
      CRDT::ObjectID::clear_contents(d);
      *(d + 12) = 6;
    }

    *(d + 10) = v9;
  }
}

- (void)encodeString:(id)string forKey:(id)key
{
  stringCopy = string;
  v7 = [(CRCoderArchiver *)self mutableObjectIDForKey:key];
  std::string::basic_string[abi:ne200100]<0>(&__str, [stringCopy UTF8String]);
  if (*(v7 + 12) != 4)
  {
    CRDT::ObjectID::clear_contents(v7);
    *(v7 + 12) = 4;
    operator new();
  }

  std::string::operator=(*(v7 + 5), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

- (void)encodeUUID:(id)d forKey:(id)key
{
  keyCopy = key;
  uUIDString = [d UUIDString];
  [(CRCoderArchiver *)self encodeString:uUIDString forKey:keyCopy];
}

- (void)encodeDouble:(double)double forKey:(id)key
{
  keyCopy = key;
  v6 = [(CRCoderArchiver *)self mutableObjectIDForKey:?];
  v7 = v6;
  if (v6[12] != 3)
  {
    CRDT::ObjectID::clear_contents(v6);
    *(v7 + 12) = 3;
  }

  v7[5] = double;
}

- (void)encodeInt32:(int)int32 forKey:(id)key
{
  keyCopy = key;
  v6 = [(CRCoderArchiver *)self mutableObjectIDForKey:?];
  v7 = v6;
  if (v6[12] != 1)
  {
    CRDT::ObjectID::clear_contents(v6);
    v7[12] = 1;
  }

  *(v7 + 5) = int32;
}

- (void)encodeInt64:(int64_t)int64 forKey:(id)key
{
  keyCopy = key;
  v6 = [(CRCoderArchiver *)self mutableObjectIDForKey:?];
  v7 = v6;
  if (v6[12] != 1)
  {
    CRDT::ObjectID::clear_contents(v6);
    v7[12] = 1;
  }

  *(v7 + 5) = int64;
}

- (void)encodeUInt32:(unsigned int)int32 forKey:(id)key
{
  keyCopy = key;
  v6 = [(CRCoderArchiver *)self mutableObjectIDForKey:?];
  v7 = v6;
  if (v6[12] != 2)
  {
    CRDT::ObjectID::clear_contents(v6);
    v7[12] = 2;
  }

  *(v7 + 5) = int32;
}

- (void)encodeUInt64:(unint64_t)int64 forKey:(id)key
{
  keyCopy = key;
  v6 = [(CRCoderArchiver *)self mutableObjectIDForKey:?];
  v7 = v6;
  if (v6[12] != 2)
  {
    CRDT::ObjectID::clear_contents(v6);
    v7[12] = 2;
  }

  *(v7 + 5) = int64;
}

- (unint64_t)encodeUUIDIndexFromUUID:(id)d
{
  dCopy = d;
  uuidSet = [(CRCoderArchiver *)self uuidSet];
  v6 = [uuidSet indexOfObject:dCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    uuidSet2 = [(CRCoderArchiver *)self uuidSet];
    v6 = [uuidSet2 count];

    uuidSet3 = [(CRCoderArchiver *)self uuidSet];
    [uuidSet3 addObject:dCopy];
  }

  return v6;
}

- (void)mutableObjectIDForKey:(id)key
{
  keyCopy = key;
  currentCustomObjectForEncoding = [(CRCoderArchiver *)self currentCustomObjectForEncoding];
  v6 = *(currentCustomObjectForEncoding + 13);
  v7 = *(currentCustomObjectForEncoding + 12);
  if (v7 >= v6)
  {
    if (v6 == *(currentCustomObjectForEncoding + 14))
    {
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(currentCustomObjectForEncoding + 5, v6 + 1);
    }

    google::protobuf::internal::GenericTypeHandler<CRDT::Document_CustomObject_MapEntry>::New();
  }

  v8 = currentCustomObjectForEncoding[5];
  *(currentCustomObjectForEncoding + 12) = v7 + 1;
  v9 = *(v8 + 8 * v7);
  v10 = [(CRCoderArchiver *)self indexForKey:keyCopy];
  v11 = *(v9 + 32);
  *(v9 + 48) = v10;
  *(v9 + 32) = v11 | 3;
  v12 = *(v9 + 40);
  if (!v12)
  {
    operator new();
  }

  return v12;
}

- (void)currentCustomObjectForEncoding
{
  currentDocumentObjectForEncoding = [(CRCoderArchiver *)self currentDocumentObjectForEncoding];
  v3 = currentDocumentObjectForEncoding;
  if (*(currentDocumentObjectForEncoding + 12) != 13)
  {
    CRDT::Document_DocObject::clear_contents(currentDocumentObjectForEncoding);
    *(v3 + 12) = 13;
    operator new();
  }

  return currentDocumentObjectForEncoding[5];
}

- (int)indexForKey:(id)key
{
  keyCopy = key;
  keySet = [(CRCoderArchiver *)self keySet];
  v6 = [keySet indexOfObject:keyCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    keySet2 = [(CRCoderArchiver *)self keySet];
    LODWORD(v6) = [keySet2 count];

    keySet3 = [(CRCoderArchiver *)self keySet];
    [keySet3 addObject:keyCopy];
  }

  return v6;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  return self;
}

@end