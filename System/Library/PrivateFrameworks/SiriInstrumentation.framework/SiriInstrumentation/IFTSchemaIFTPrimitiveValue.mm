@interface IFTSchemaIFTPrimitiveValue
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTApp)app;
- (IFTSchemaIFTCurrencyAmount)currencyAmount;
- (IFTSchemaIFTDateComponents)primitiveDateComponents;
- (IFTSchemaIFTFile)file;
- (IFTSchemaIFTMeasurement)measurement;
- (IFTSchemaIFTPaymentMethod)paymentMethod;
- (IFTSchemaIFTPerson)person;
- (IFTSchemaIFTPlacemark)placemark;
- (IFTSchemaIFTPrimitiveValue)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTPrimitiveValue)initWithJSON:(id)n;
- (NSData)jsonData;
- (NSString)primitiveDecimal;
- (double)primitiveDouble;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int64_t)primitiveInt;
- (unint64_t)hash;
- (void)deleteApp;
- (void)deleteCurrencyAmount;
- (void)deleteFile;
- (void)deleteMeasurement;
- (void)deletePaymentMethod;
- (void)deletePerson;
- (void)deletePlacemark;
- (void)deletePrimitiveBool;
- (void)deletePrimitiveDateComponents;
- (void)deletePrimitiveDecimal;
- (void)deletePrimitiveDouble;
- (void)deletePrimitiveInt;
- (void)deletePrimitiveNull;
- (void)setApp:(id)app;
- (void)setCurrencyAmount:(id)amount;
- (void)setFile:(id)file;
- (void)setMeasurement:(id)measurement;
- (void)setPaymentMethod:(id)method;
- (void)setPerson:(id)person;
- (void)setPlacemark:(id)placemark;
- (void)setPrimitiveBool:(BOOL)bool;
- (void)setPrimitiveDateComponents:(id)components;
- (void)setPrimitiveDecimal:(id)decimal;
- (void)setPrimitiveDouble:(double)double;
- (void)setPrimitiveInt:(int64_t)int;
- (void)setPrimitiveNull:(BOOL)null;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTPrimitiveValue

- (IFTSchemaIFTPrimitiveValue)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = IFTSchemaIFTPrimitiveValue;
  v5 = [(IFTSchemaIFTPrimitiveValue *)&v37 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"primitiveNull"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTPrimitiveValue setPrimitiveNull:](v5, "setPrimitiveNull:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"primitiveBool"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTPrimitiveValue setPrimitiveBool:](v5, "setPrimitiveBool:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"primitiveInt"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTPrimitiveValue setPrimitiveInt:](v5, "setPrimitiveInt:", [v8 longLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"primitiveDouble"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      [(IFTSchemaIFTPrimitiveValue *)v5 setPrimitiveDouble:?];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"primitiveDecimal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(IFTSchemaIFTPrimitiveValue *)v5 setPrimitiveDecimal:v11];
    }

    v33 = v10;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"primitiveDateComponents"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[IFTSchemaIFTDateComponents alloc] initWithDictionary:v12];
      [(IFTSchemaIFTPrimitiveValue *)v5 setPrimitiveDateComponents:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"measurement"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[IFTSchemaIFTMeasurement alloc] initWithDictionary:v14];
      [(IFTSchemaIFTPrimitiveValue *)v5 setMeasurement:v15];
    }

    v36 = v6;
    v16 = [dictionaryCopy objectForKeyedSubscript:{@"currencyAmount", v14}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[IFTSchemaIFTCurrencyAmount alloc] initWithDictionary:v16];
      [(IFTSchemaIFTPrimitiveValue *)v5 setCurrencyAmount:v17];
    }

    v35 = v7;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"paymentMethod"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[IFTSchemaIFTPaymentMethod alloc] initWithDictionary:v18];
      [(IFTSchemaIFTPrimitiveValue *)v5 setPaymentMethod:v19];
    }

    v32 = v12;
    v34 = v8;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"placemark"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[IFTSchemaIFTPlacemark alloc] initWithDictionary:v20];
      [(IFTSchemaIFTPrimitiveValue *)v5 setPlacemark:v21];
    }

    v22 = v9;
    v23 = [dictionaryCopy objectForKeyedSubscript:@"person"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[IFTSchemaIFTPerson alloc] initWithDictionary:v23];
      [(IFTSchemaIFTPrimitiveValue *)v5 setPerson:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"file"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[IFTSchemaIFTFile alloc] initWithDictionary:v25];
      [(IFTSchemaIFTPrimitiveValue *)v5 setFile:v26];
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"app"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[IFTSchemaIFTApp alloc] initWithDictionary:v27];
      [(IFTSchemaIFTPrimitiveValue *)v5 setApp:v28];
    }

    v29 = v5;
  }

  return v5;
}

- (IFTSchemaIFTPrimitiveValue)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTPrimitiveValue *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTPrimitiveValue *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_app)
  {
    v4 = [(IFTSchemaIFTPrimitiveValue *)self app];
    dictionaryRepresentation = [v4 dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"app"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"app"];
    }
  }

  if (self->_currencyAmount)
  {
    currencyAmount = [(IFTSchemaIFTPrimitiveValue *)self currencyAmount];
    dictionaryRepresentation2 = [currencyAmount dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"currencyAmount"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"currencyAmount"];
    }
  }

  if (self->_file)
  {
    file = [(IFTSchemaIFTPrimitiveValue *)self file];
    dictionaryRepresentation3 = [file dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"file"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"file"];
    }
  }

  if (self->_measurement)
  {
    measurement = [(IFTSchemaIFTPrimitiveValue *)self measurement];
    dictionaryRepresentation4 = [measurement dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"measurement"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"measurement"];
    }
  }

  if (self->_paymentMethod)
  {
    paymentMethod = [(IFTSchemaIFTPrimitiveValue *)self paymentMethod];
    dictionaryRepresentation5 = [paymentMethod dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"paymentMethod"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"paymentMethod"];
    }
  }

  if (self->_person)
  {
    person = [(IFTSchemaIFTPrimitiveValue *)self person];
    dictionaryRepresentation6 = [person dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"person"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"person"];
    }
  }

  if (self->_placemark)
  {
    placemark = [(IFTSchemaIFTPrimitiveValue *)self placemark];
    dictionaryRepresentation7 = [placemark dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"placemark"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"placemark"];
    }
  }

  if (self->_whichOneof_Primitivevalue == 2)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTPrimitiveValue primitiveBool](self, "primitiveBool")}];
    [dictionary setObject:v25 forKeyedSubscript:@"primitiveBool"];
  }

  if (self->_primitiveDateComponents)
  {
    primitiveDateComponents = [(IFTSchemaIFTPrimitiveValue *)self primitiveDateComponents];
    dictionaryRepresentation8 = [primitiveDateComponents dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"primitiveDateComponents"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"primitiveDateComponents"];
    }
  }

  if (self->_primitiveDecimal)
  {
    primitiveDecimal = [(IFTSchemaIFTPrimitiveValue *)self primitiveDecimal];
    v30 = [primitiveDecimal copy];
    [dictionary setObject:v30 forKeyedSubscript:@"primitiveDecimal"];
  }

  whichOneof_Primitivevalue = self->_whichOneof_Primitivevalue;
  if (whichOneof_Primitivevalue == 4)
  {
    v32 = MEMORY[0x1E696AD98];
    [(IFTSchemaIFTPrimitiveValue *)self primitiveDouble];
    v33 = [v32 numberWithDouble:?];
    [dictionary setObject:v33 forKeyedSubscript:@"primitiveDouble"];

    whichOneof_Primitivevalue = self->_whichOneof_Primitivevalue;
  }

  if (whichOneof_Primitivevalue == 3)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IFTSchemaIFTPrimitiveValue primitiveInt](self, "primitiveInt")}];
    [dictionary setObject:v34 forKeyedSubscript:@"primitiveInt"];

    whichOneof_Primitivevalue = self->_whichOneof_Primitivevalue;
  }

  if (whichOneof_Primitivevalue == 1)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTPrimitiveValue primitiveNull](self, "primitiveNull")}];
    [dictionary setObject:v35 forKeyedSubscript:@"primitiveNull"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v5 = 0;
  whichOneof_Primitivevalue = self->_whichOneof_Primitivevalue;
  if (whichOneof_Primitivevalue > 2)
  {
    if (whichOneof_Primitivevalue == 3)
    {
      v5 = 2654435761 * self->_primitiveInt;
    }

    else if (whichOneof_Primitivevalue == 4)
    {
      primitiveDouble = self->_primitiveDouble;
      if (primitiveDouble < 0.0)
      {
        primitiveDouble = -primitiveDouble;
      }

      *v2.i64 = floor(primitiveDouble + 0.5);
      v9 = (primitiveDouble - *v2.i64) * 1.84467441e19;
      *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
      v10.f64[0] = NAN;
      v10.f64[1] = NAN;
      v5 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v3, v2).i64;
      if (v9 >= 0.0)
      {
        if (v9 > 0.0)
        {
          v5 += v9;
        }
      }

      else
      {
        v5 -= fabs(v9);
      }
    }
  }

  else
  {
    if (whichOneof_Primitivevalue == 1)
    {
      v7 = 8;
      goto LABEL_12;
    }

    if (whichOneof_Primitivevalue == 2)
    {
      v7 = 9;
LABEL_12:
      v5 = 2654435761 * *(&self->super.super.super.isa + v7);
    }
  }

  v11 = [(NSString *)self->_primitiveDecimal hash]^ v5;
  v12 = [(IFTSchemaIFTDateComponents *)self->_primitiveDateComponents hash];
  v13 = v11 ^ v12 ^ [(IFTSchemaIFTMeasurement *)self->_measurement hash];
  v14 = [(IFTSchemaIFTCurrencyAmount *)self->_currencyAmount hash];
  v15 = v14 ^ [(IFTSchemaIFTPaymentMethod *)self->_paymentMethod hash];
  v16 = v13 ^ v15 ^ [(IFTSchemaIFTPlacemark *)self->_placemark hash];
  v17 = [(IFTSchemaIFTPerson *)self->_person hash];
  v18 = v17 ^ [(IFTSchemaIFTFile *)self->_file hash];
  return v16 ^ v18 ^ [(IFTSchemaIFTApp *)self->_app hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  whichOneof_Primitivevalue = self->_whichOneof_Primitivevalue;
  if (whichOneof_Primitivevalue != [equalCopy whichOneof_Primitivevalue])
  {
    goto LABEL_52;
  }

  primitiveNull = self->_primitiveNull;
  if (primitiveNull != [equalCopy primitiveNull])
  {
    goto LABEL_52;
  }

  primitiveBool = self->_primitiveBool;
  if (primitiveBool != [equalCopy primitiveBool])
  {
    goto LABEL_52;
  }

  primitiveInt = self->_primitiveInt;
  if (primitiveInt != [equalCopy primitiveInt])
  {
    goto LABEL_52;
  }

  primitiveDouble = self->_primitiveDouble;
  [equalCopy primitiveDouble];
  if (primitiveDouble != v10)
  {
    goto LABEL_52;
  }

  primitiveDecimal = [(IFTSchemaIFTPrimitiveValue *)self primitiveDecimal];
  primitiveDecimal2 = [equalCopy primitiveDecimal];
  if ((primitiveDecimal != 0) == (primitiveDecimal2 == 0))
  {
    goto LABEL_51;
  }

  primitiveDecimal3 = [(IFTSchemaIFTPrimitiveValue *)self primitiveDecimal];
  if (primitiveDecimal3)
  {
    v14 = primitiveDecimal3;
    primitiveDecimal4 = [(IFTSchemaIFTPrimitiveValue *)self primitiveDecimal];
    primitiveDecimal5 = [equalCopy primitiveDecimal];
    v17 = [primitiveDecimal4 isEqual:primitiveDecimal5];

    if (!v17)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  primitiveDecimal = [(IFTSchemaIFTPrimitiveValue *)self primitiveDateComponents];
  primitiveDecimal2 = [equalCopy primitiveDateComponents];
  if ((primitiveDecimal != 0) == (primitiveDecimal2 == 0))
  {
    goto LABEL_51;
  }

  primitiveDateComponents = [(IFTSchemaIFTPrimitiveValue *)self primitiveDateComponents];
  if (primitiveDateComponents)
  {
    v19 = primitiveDateComponents;
    primitiveDateComponents2 = [(IFTSchemaIFTPrimitiveValue *)self primitiveDateComponents];
    primitiveDateComponents3 = [equalCopy primitiveDateComponents];
    v22 = [primitiveDateComponents2 isEqual:primitiveDateComponents3];

    if (!v22)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  primitiveDecimal = [(IFTSchemaIFTPrimitiveValue *)self measurement];
  primitiveDecimal2 = [equalCopy measurement];
  if ((primitiveDecimal != 0) == (primitiveDecimal2 == 0))
  {
    goto LABEL_51;
  }

  measurement = [(IFTSchemaIFTPrimitiveValue *)self measurement];
  if (measurement)
  {
    v24 = measurement;
    measurement2 = [(IFTSchemaIFTPrimitiveValue *)self measurement];
    measurement3 = [equalCopy measurement];
    v27 = [measurement2 isEqual:measurement3];

    if (!v27)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  primitiveDecimal = [(IFTSchemaIFTPrimitiveValue *)self currencyAmount];
  primitiveDecimal2 = [equalCopy currencyAmount];
  if ((primitiveDecimal != 0) == (primitiveDecimal2 == 0))
  {
    goto LABEL_51;
  }

  currencyAmount = [(IFTSchemaIFTPrimitiveValue *)self currencyAmount];
  if (currencyAmount)
  {
    v29 = currencyAmount;
    currencyAmount2 = [(IFTSchemaIFTPrimitiveValue *)self currencyAmount];
    currencyAmount3 = [equalCopy currencyAmount];
    v32 = [currencyAmount2 isEqual:currencyAmount3];

    if (!v32)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  primitiveDecimal = [(IFTSchemaIFTPrimitiveValue *)self paymentMethod];
  primitiveDecimal2 = [equalCopy paymentMethod];
  if ((primitiveDecimal != 0) == (primitiveDecimal2 == 0))
  {
    goto LABEL_51;
  }

  paymentMethod = [(IFTSchemaIFTPrimitiveValue *)self paymentMethod];
  if (paymentMethod)
  {
    v34 = paymentMethod;
    paymentMethod2 = [(IFTSchemaIFTPrimitiveValue *)self paymentMethod];
    paymentMethod3 = [equalCopy paymentMethod];
    v37 = [paymentMethod2 isEqual:paymentMethod3];

    if (!v37)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  primitiveDecimal = [(IFTSchemaIFTPrimitiveValue *)self placemark];
  primitiveDecimal2 = [equalCopy placemark];
  if ((primitiveDecimal != 0) == (primitiveDecimal2 == 0))
  {
    goto LABEL_51;
  }

  placemark = [(IFTSchemaIFTPrimitiveValue *)self placemark];
  if (placemark)
  {
    v39 = placemark;
    placemark2 = [(IFTSchemaIFTPrimitiveValue *)self placemark];
    placemark3 = [equalCopy placemark];
    v42 = [placemark2 isEqual:placemark3];

    if (!v42)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  primitiveDecimal = [(IFTSchemaIFTPrimitiveValue *)self person];
  primitiveDecimal2 = [equalCopy person];
  if ((primitiveDecimal != 0) == (primitiveDecimal2 == 0))
  {
    goto LABEL_51;
  }

  person = [(IFTSchemaIFTPrimitiveValue *)self person];
  if (person)
  {
    v44 = person;
    person2 = [(IFTSchemaIFTPrimitiveValue *)self person];
    person3 = [equalCopy person];
    v47 = [person2 isEqual:person3];

    if (!v47)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  primitiveDecimal = [(IFTSchemaIFTPrimitiveValue *)self file];
  primitiveDecimal2 = [equalCopy file];
  if ((primitiveDecimal != 0) == (primitiveDecimal2 == 0))
  {
    goto LABEL_51;
  }

  file = [(IFTSchemaIFTPrimitiveValue *)self file];
  if (file)
  {
    v49 = file;
    file2 = [(IFTSchemaIFTPrimitiveValue *)self file];
    file3 = [equalCopy file];
    v52 = [file2 isEqual:file3];

    if (!v52)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  primitiveDecimal = [(IFTSchemaIFTPrimitiveValue *)self app];
  primitiveDecimal2 = [equalCopy app];
  if ((primitiveDecimal != 0) != (primitiveDecimal2 == 0))
  {
    v53 = [(IFTSchemaIFTPrimitiveValue *)self app];
    if (!v53)
    {

LABEL_55:
      v58 = 1;
      goto LABEL_53;
    }

    v54 = v53;
    v55 = [(IFTSchemaIFTPrimitiveValue *)self app];
    v56 = [equalCopy app];
    v57 = [v55 isEqual:v56];

    if (v57)
    {
      goto LABEL_55;
    }
  }

  else
  {
LABEL_51:
  }

LABEL_52:
  v58 = 0;
LABEL_53:

  return v58;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  whichOneof_Primitivevalue = self->_whichOneof_Primitivevalue;
  if (whichOneof_Primitivevalue == 1)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Primitivevalue = self->_whichOneof_Primitivevalue;
  }

  if (whichOneof_Primitivevalue == 2)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Primitivevalue = self->_whichOneof_Primitivevalue;
  }

  if (whichOneof_Primitivevalue == 3)
  {
    PBDataWriterWriteInt64Field();
    whichOneof_Primitivevalue = self->_whichOneof_Primitivevalue;
  }

  if (whichOneof_Primitivevalue == 4)
  {
    PBDataWriterWriteDoubleField();
  }

  primitiveDecimal = [(IFTSchemaIFTPrimitiveValue *)self primitiveDecimal];

  if (primitiveDecimal)
  {
    PBDataWriterWriteStringField();
  }

  primitiveDateComponents = [(IFTSchemaIFTPrimitiveValue *)self primitiveDateComponents];

  if (primitiveDateComponents)
  {
    primitiveDateComponents2 = [(IFTSchemaIFTPrimitiveValue *)self primitiveDateComponents];
    PBDataWriterWriteSubmessage();
  }

  measurement = [(IFTSchemaIFTPrimitiveValue *)self measurement];

  if (measurement)
  {
    measurement2 = [(IFTSchemaIFTPrimitiveValue *)self measurement];
    PBDataWriterWriteSubmessage();
  }

  currencyAmount = [(IFTSchemaIFTPrimitiveValue *)self currencyAmount];

  if (currencyAmount)
  {
    currencyAmount2 = [(IFTSchemaIFTPrimitiveValue *)self currencyAmount];
    PBDataWriterWriteSubmessage();
  }

  paymentMethod = [(IFTSchemaIFTPrimitiveValue *)self paymentMethod];

  if (paymentMethod)
  {
    paymentMethod2 = [(IFTSchemaIFTPrimitiveValue *)self paymentMethod];
    PBDataWriterWriteSubmessage();
  }

  placemark = [(IFTSchemaIFTPrimitiveValue *)self placemark];

  if (placemark)
  {
    placemark2 = [(IFTSchemaIFTPrimitiveValue *)self placemark];
    PBDataWriterWriteSubmessage();
  }

  person = [(IFTSchemaIFTPrimitiveValue *)self person];

  if (person)
  {
    person2 = [(IFTSchemaIFTPrimitiveValue *)self person];
    PBDataWriterWriteSubmessage();
  }

  file = [(IFTSchemaIFTPrimitiveValue *)self file];

  if (file)
  {
    file2 = [(IFTSchemaIFTPrimitiveValue *)self file];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(IFTSchemaIFTPrimitiveValue *)self app];

  v21 = toCopy;
  if (v20)
  {
    v22 = [(IFTSchemaIFTPrimitiveValue *)self app];
    PBDataWriterWriteSubmessage();

    v21 = toCopy;
  }
}

- (void)deleteApp
{
  if (self->_whichOneof_Primitivevalue == 17)
  {
    self->_whichOneof_Primitivevalue = 0;
    self->_app = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTApp)app
{
  if (self->_whichOneof_Primitivevalue == 17)
  {
    v3 = self->_app;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setApp:(id)app
{
  appCopy = app;
  self->_primitiveNull = 0;
  self->_primitiveBool = 0;
  self->_primitiveInt = 0;
  self->_primitiveDouble = 0.0;
  primitiveDecimal = self->_primitiveDecimal;
  self->_primitiveDecimal = 0;

  primitiveDateComponents = self->_primitiveDateComponents;
  self->_primitiveDateComponents = 0;

  measurement = self->_measurement;
  self->_measurement = 0;

  currencyAmount = self->_currencyAmount;
  self->_currencyAmount = 0;

  paymentMethod = self->_paymentMethod;
  self->_paymentMethod = 0;

  placemark = self->_placemark;
  self->_placemark = 0;

  person = self->_person;
  self->_person = 0;

  file = self->_file;
  self->_file = 0;

  v13 = 17;
  if (!appCopy)
  {
    v13 = 0;
  }

  self->_whichOneof_Primitivevalue = v13;
  app = self->_app;
  self->_app = appCopy;
}

- (void)deleteFile
{
  if (self->_whichOneof_Primitivevalue == 16)
  {
    self->_whichOneof_Primitivevalue = 0;
    self->_file = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTFile)file
{
  if (self->_whichOneof_Primitivevalue == 16)
  {
    v3 = self->_file;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFile:(id)file
{
  fileCopy = file;
  self->_primitiveNull = 0;
  self->_primitiveBool = 0;
  self->_primitiveInt = 0;
  self->_primitiveDouble = 0.0;
  primitiveDecimal = self->_primitiveDecimal;
  self->_primitiveDecimal = 0;

  primitiveDateComponents = self->_primitiveDateComponents;
  self->_primitiveDateComponents = 0;

  measurement = self->_measurement;
  self->_measurement = 0;

  currencyAmount = self->_currencyAmount;
  self->_currencyAmount = 0;

  paymentMethod = self->_paymentMethod;
  self->_paymentMethod = 0;

  placemark = self->_placemark;
  self->_placemark = 0;

  person = self->_person;
  self->_person = 0;

  app = self->_app;
  self->_app = 0;

  self->_whichOneof_Primitivevalue = 16 * (fileCopy != 0);
  file = self->_file;
  self->_file = fileCopy;
}

- (void)deletePerson
{
  if (self->_whichOneof_Primitivevalue == 15)
  {
    self->_whichOneof_Primitivevalue = 0;
    self->_person = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTPerson)person
{
  if (self->_whichOneof_Primitivevalue == 15)
  {
    v3 = self->_person;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPerson:(id)person
{
  personCopy = person;
  self->_primitiveNull = 0;
  self->_primitiveBool = 0;
  self->_primitiveInt = 0;
  self->_primitiveDouble = 0.0;
  primitiveDecimal = self->_primitiveDecimal;
  self->_primitiveDecimal = 0;

  primitiveDateComponents = self->_primitiveDateComponents;
  self->_primitiveDateComponents = 0;

  measurement = self->_measurement;
  self->_measurement = 0;

  currencyAmount = self->_currencyAmount;
  self->_currencyAmount = 0;

  paymentMethod = self->_paymentMethod;
  self->_paymentMethod = 0;

  placemark = self->_placemark;
  self->_placemark = 0;

  file = self->_file;
  self->_file = 0;

  app = self->_app;
  self->_app = 0;

  v13 = 15;
  if (!personCopy)
  {
    v13 = 0;
  }

  self->_whichOneof_Primitivevalue = v13;
  person = self->_person;
  self->_person = personCopy;
}

- (void)deletePlacemark
{
  if (self->_whichOneof_Primitivevalue == 14)
  {
    self->_whichOneof_Primitivevalue = 0;
    self->_placemark = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTPlacemark)placemark
{
  if (self->_whichOneof_Primitivevalue == 14)
  {
    v3 = self->_placemark;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPlacemark:(id)placemark
{
  placemarkCopy = placemark;
  self->_primitiveNull = 0;
  self->_primitiveBool = 0;
  self->_primitiveInt = 0;
  self->_primitiveDouble = 0.0;
  primitiveDecimal = self->_primitiveDecimal;
  self->_primitiveDecimal = 0;

  primitiveDateComponents = self->_primitiveDateComponents;
  self->_primitiveDateComponents = 0;

  measurement = self->_measurement;
  self->_measurement = 0;

  currencyAmount = self->_currencyAmount;
  self->_currencyAmount = 0;

  paymentMethod = self->_paymentMethod;
  self->_paymentMethod = 0;

  person = self->_person;
  self->_person = 0;

  file = self->_file;
  self->_file = 0;

  app = self->_app;
  self->_app = 0;

  v13 = 14;
  if (!placemarkCopy)
  {
    v13 = 0;
  }

  self->_whichOneof_Primitivevalue = v13;
  placemark = self->_placemark;
  self->_placemark = placemarkCopy;
}

- (void)deletePaymentMethod
{
  if (self->_whichOneof_Primitivevalue == 13)
  {
    self->_whichOneof_Primitivevalue = 0;
    self->_paymentMethod = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTPaymentMethod)paymentMethod
{
  if (self->_whichOneof_Primitivevalue == 13)
  {
    v3 = self->_paymentMethod;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPaymentMethod:(id)method
{
  methodCopy = method;
  self->_primitiveNull = 0;
  self->_primitiveBool = 0;
  self->_primitiveInt = 0;
  self->_primitiveDouble = 0.0;
  primitiveDecimal = self->_primitiveDecimal;
  self->_primitiveDecimal = 0;

  primitiveDateComponents = self->_primitiveDateComponents;
  self->_primitiveDateComponents = 0;

  measurement = self->_measurement;
  self->_measurement = 0;

  currencyAmount = self->_currencyAmount;
  self->_currencyAmount = 0;

  placemark = self->_placemark;
  self->_placemark = 0;

  person = self->_person;
  self->_person = 0;

  file = self->_file;
  self->_file = 0;

  app = self->_app;
  self->_app = 0;

  v13 = 13;
  if (!methodCopy)
  {
    v13 = 0;
  }

  self->_whichOneof_Primitivevalue = v13;
  paymentMethod = self->_paymentMethod;
  self->_paymentMethod = methodCopy;
}

- (void)deleteCurrencyAmount
{
  if (self->_whichOneof_Primitivevalue == 12)
  {
    self->_whichOneof_Primitivevalue = 0;
    self->_currencyAmount = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTCurrencyAmount)currencyAmount
{
  if (self->_whichOneof_Primitivevalue == 12)
  {
    v3 = self->_currencyAmount;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCurrencyAmount:(id)amount
{
  amountCopy = amount;
  self->_primitiveNull = 0;
  self->_primitiveBool = 0;
  self->_primitiveInt = 0;
  self->_primitiveDouble = 0.0;
  primitiveDecimal = self->_primitiveDecimal;
  self->_primitiveDecimal = 0;

  primitiveDateComponents = self->_primitiveDateComponents;
  self->_primitiveDateComponents = 0;

  measurement = self->_measurement;
  self->_measurement = 0;

  paymentMethod = self->_paymentMethod;
  self->_paymentMethod = 0;

  placemark = self->_placemark;
  self->_placemark = 0;

  person = self->_person;
  self->_person = 0;

  file = self->_file;
  self->_file = 0;

  app = self->_app;
  self->_app = 0;

  v13 = 12;
  if (!amountCopy)
  {
    v13 = 0;
  }

  self->_whichOneof_Primitivevalue = v13;
  currencyAmount = self->_currencyAmount;
  self->_currencyAmount = amountCopy;
}

- (void)deleteMeasurement
{
  if (self->_whichOneof_Primitivevalue == 11)
  {
    self->_whichOneof_Primitivevalue = 0;
    self->_measurement = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTMeasurement)measurement
{
  if (self->_whichOneof_Primitivevalue == 11)
  {
    v3 = self->_measurement;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMeasurement:(id)measurement
{
  measurementCopy = measurement;
  self->_primitiveNull = 0;
  self->_primitiveBool = 0;
  self->_primitiveInt = 0;
  self->_primitiveDouble = 0.0;
  primitiveDecimal = self->_primitiveDecimal;
  self->_primitiveDecimal = 0;

  primitiveDateComponents = self->_primitiveDateComponents;
  self->_primitiveDateComponents = 0;

  currencyAmount = self->_currencyAmount;
  self->_currencyAmount = 0;

  paymentMethod = self->_paymentMethod;
  self->_paymentMethod = 0;

  placemark = self->_placemark;
  self->_placemark = 0;

  person = self->_person;
  self->_person = 0;

  file = self->_file;
  self->_file = 0;

  app = self->_app;
  self->_app = 0;

  v13 = 11;
  if (!measurementCopy)
  {
    v13 = 0;
  }

  self->_whichOneof_Primitivevalue = v13;
  measurement = self->_measurement;
  self->_measurement = measurementCopy;
}

- (void)deletePrimitiveDateComponents
{
  if (self->_whichOneof_Primitivevalue == 8)
  {
    self->_whichOneof_Primitivevalue = 0;
    self->_primitiveDateComponents = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTDateComponents)primitiveDateComponents
{
  if (self->_whichOneof_Primitivevalue == 8)
  {
    v3 = self->_primitiveDateComponents;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPrimitiveDateComponents:(id)components
{
  componentsCopy = components;
  self->_primitiveNull = 0;
  self->_primitiveBool = 0;
  self->_primitiveInt = 0;
  self->_primitiveDouble = 0.0;
  primitiveDecimal = self->_primitiveDecimal;
  self->_primitiveDecimal = 0;

  measurement = self->_measurement;
  self->_measurement = 0;

  currencyAmount = self->_currencyAmount;
  self->_currencyAmount = 0;

  paymentMethod = self->_paymentMethod;
  self->_paymentMethod = 0;

  placemark = self->_placemark;
  self->_placemark = 0;

  person = self->_person;
  self->_person = 0;

  file = self->_file;
  self->_file = 0;

  app = self->_app;
  self->_app = 0;

  self->_whichOneof_Primitivevalue = 8 * (componentsCopy != 0);
  primitiveDateComponents = self->_primitiveDateComponents;
  self->_primitiveDateComponents = componentsCopy;
}

- (void)deletePrimitiveDecimal
{
  if (self->_whichOneof_Primitivevalue == 5)
  {
    self->_whichOneof_Primitivevalue = 0;
    self->_primitiveDecimal = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NSString)primitiveDecimal
{
  if (self->_whichOneof_Primitivevalue == 5)
  {
    v3 = self->_primitiveDecimal;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPrimitiveDecimal:(id)decimal
{
  self->_primitiveNull = 0;
  self->_primitiveBool = 0;
  self->_primitiveInt = 0;
  self->_primitiveDouble = 0.0;
  primitiveDateComponents = self->_primitiveDateComponents;
  self->_primitiveDateComponents = 0;
  decimalCopy = decimal;

  measurement = self->_measurement;
  self->_measurement = 0;

  currencyAmount = self->_currencyAmount;
  self->_currencyAmount = 0;

  paymentMethod = self->_paymentMethod;
  self->_paymentMethod = 0;

  placemark = self->_placemark;
  self->_placemark = 0;

  person = self->_person;
  self->_person = 0;

  file = self->_file;
  self->_file = 0;

  app = self->_app;
  self->_app = 0;

  v12 = 5;
  if (!decimalCopy)
  {
    v12 = 0;
  }

  self->_whichOneof_Primitivevalue = v12;
  v13 = [decimalCopy copy];
  primitiveDecimal = self->_primitiveDecimal;
  self->_primitiveDecimal = v13;
}

- (void)deletePrimitiveDouble
{
  if (self->_whichOneof_Primitivevalue == 4)
  {
    self->_whichOneof_Primitivevalue = 0;
    self->_primitiveDouble = 0.0;
  }
}

- (double)primitiveDouble
{
  result = 0.0;
  if (self->_whichOneof_Primitivevalue == 4)
  {
    return self->_primitiveDouble;
  }

  return result;
}

- (void)setPrimitiveDouble:(double)double
{
  self->_primitiveNull = 0;
  self->_primitiveBool = 0;
  self->_primitiveInt = 0;
  primitiveDecimal = self->_primitiveDecimal;
  self->_primitiveDecimal = 0;

  primitiveDateComponents = self->_primitiveDateComponents;
  self->_primitiveDateComponents = 0;

  measurement = self->_measurement;
  self->_measurement = 0;

  currencyAmount = self->_currencyAmount;
  self->_currencyAmount = 0;

  paymentMethod = self->_paymentMethod;
  self->_paymentMethod = 0;

  placemark = self->_placemark;
  self->_placemark = 0;

  person = self->_person;
  self->_person = 0;

  file = self->_file;
  self->_file = 0;

  app = self->_app;
  self->_app = 0;

  self->_whichOneof_Primitivevalue = 4;
  self->_primitiveDouble = double;
}

- (void)deletePrimitiveInt
{
  if (self->_whichOneof_Primitivevalue == 3)
  {
    self->_whichOneof_Primitivevalue = 0;
    self->_primitiveInt = 0;
  }
}

- (int64_t)primitiveInt
{
  if (self->_whichOneof_Primitivevalue == 3)
  {
    return self->_primitiveInt;
  }

  else
  {
    return 0;
  }
}

- (void)setPrimitiveInt:(int64_t)int
{
  self->_primitiveNull = 0;
  self->_primitiveBool = 0;
  self->_primitiveDouble = 0.0;
  primitiveDecimal = self->_primitiveDecimal;
  self->_primitiveDecimal = 0;

  primitiveDateComponents = self->_primitiveDateComponents;
  self->_primitiveDateComponents = 0;

  measurement = self->_measurement;
  self->_measurement = 0;

  currencyAmount = self->_currencyAmount;
  self->_currencyAmount = 0;

  paymentMethod = self->_paymentMethod;
  self->_paymentMethod = 0;

  placemark = self->_placemark;
  self->_placemark = 0;

  person = self->_person;
  self->_person = 0;

  file = self->_file;
  self->_file = 0;

  app = self->_app;
  self->_app = 0;

  self->_whichOneof_Primitivevalue = 3;
  self->_primitiveInt = int;
}

- (void)deletePrimitiveBool
{
  if (self->_whichOneof_Primitivevalue == 2)
  {
    self->_whichOneof_Primitivevalue = 0;
    self->_primitiveBool = 0;
  }
}

- (void)setPrimitiveBool:(BOOL)bool
{
  self->_primitiveNull = 0;
  self->_primitiveInt = 0;
  self->_primitiveDouble = 0.0;
  primitiveDecimal = self->_primitiveDecimal;
  self->_primitiveDecimal = 0;

  primitiveDateComponents = self->_primitiveDateComponents;
  self->_primitiveDateComponents = 0;

  measurement = self->_measurement;
  self->_measurement = 0;

  currencyAmount = self->_currencyAmount;
  self->_currencyAmount = 0;

  paymentMethod = self->_paymentMethod;
  self->_paymentMethod = 0;

  placemark = self->_placemark;
  self->_placemark = 0;

  person = self->_person;
  self->_person = 0;

  file = self->_file;
  self->_file = 0;

  app = self->_app;
  self->_app = 0;

  self->_whichOneof_Primitivevalue = 2;
  self->_primitiveBool = bool;
}

- (void)deletePrimitiveNull
{
  if (self->_whichOneof_Primitivevalue == 1)
  {
    self->_whichOneof_Primitivevalue = 0;
    self->_primitiveNull = 0;
  }
}

- (void)setPrimitiveNull:(BOOL)null
{
  self->_primitiveBool = 0;
  self->_primitiveInt = 0;
  self->_primitiveDouble = 0.0;
  primitiveDecimal = self->_primitiveDecimal;
  self->_primitiveDecimal = 0;

  primitiveDateComponents = self->_primitiveDateComponents;
  self->_primitiveDateComponents = 0;

  measurement = self->_measurement;
  self->_measurement = 0;

  currencyAmount = self->_currencyAmount;
  self->_currencyAmount = 0;

  paymentMethod = self->_paymentMethod;
  self->_paymentMethod = 0;

  placemark = self->_placemark;
  self->_placemark = 0;

  person = self->_person;
  self->_person = 0;

  file = self->_file;
  self->_file = 0;

  app = self->_app;
  self->_app = 0;

  self->_whichOneof_Primitivevalue = 1;
  self->_primitiveNull = null;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v31.receiver = self;
  v31.super_class = IFTSchemaIFTPrimitiveValue;
  v5 = [(SISchemaInstrumentationMessage *)&v31 applySensitiveConditionsPolicy:policyCopy];
  primitiveDateComponents = [(IFTSchemaIFTPrimitiveValue *)self primitiveDateComponents];
  v7 = [primitiveDateComponents applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTPrimitiveValue *)self deletePrimitiveDateComponents];
  }

  measurement = [(IFTSchemaIFTPrimitiveValue *)self measurement];
  v10 = [measurement applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTPrimitiveValue *)self deleteMeasurement];
  }

  currencyAmount = [(IFTSchemaIFTPrimitiveValue *)self currencyAmount];
  v13 = [currencyAmount applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(IFTSchemaIFTPrimitiveValue *)self deleteCurrencyAmount];
  }

  paymentMethod = [(IFTSchemaIFTPrimitiveValue *)self paymentMethod];
  v16 = [paymentMethod applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(IFTSchemaIFTPrimitiveValue *)self deletePaymentMethod];
  }

  placemark = [(IFTSchemaIFTPrimitiveValue *)self placemark];
  v19 = [placemark applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(IFTSchemaIFTPrimitiveValue *)self deletePlacemark];
  }

  person = [(IFTSchemaIFTPrimitiveValue *)self person];
  v22 = [person applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(IFTSchemaIFTPrimitiveValue *)self deletePerson];
  }

  file = [(IFTSchemaIFTPrimitiveValue *)self file];
  v25 = [file applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(IFTSchemaIFTPrimitiveValue *)self deleteFile];
  }

  v27 = [(IFTSchemaIFTPrimitiveValue *)self app];
  v28 = [v27 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(IFTSchemaIFTPrimitiveValue *)self deleteApp];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end