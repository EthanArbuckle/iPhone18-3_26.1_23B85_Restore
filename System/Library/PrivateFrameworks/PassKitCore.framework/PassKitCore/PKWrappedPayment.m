@interface PKWrappedPayment
- (PKWrappedPayment)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKWrappedPayment

- (PKWrappedPayment)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKWrappedPayment;
  v5 = [(PKWrappedPayment *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionIdentifier"];
    [(PKWrappedPayment *)v5 setTransactionIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionData"];
    [(PKWrappedPayment *)v5 setTransactionData:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionInstructionsSignature"];
    [(PKWrappedPayment *)v5 setTransactionInstructionsSignature:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"certificates"];
    [(PKWrappedPayment *)v5 setCertificates:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantCountryCode"];
    [(PKWrappedPayment *)v5 setMerchantCountryCode:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kextBlacklistVersion"];
    [(PKWrappedPayment *)v5 setKextBlacklistVersion:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enrollmentSignature"];
    [(PKWrappedPayment *)v5 setEnrollmentSignature:v12];

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"SEPCertificates"];
    [(PKWrappedPayment *)v5 setSEPCertificates:v16];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confirmationBlobHash"];
    [(PKWrappedPayment *)v5 setConfirmationBlobHash:v17];

    -[PKWrappedPayment setConfirmationBlobVersion:](v5, "setConfirmationBlobVersion:", [v4 decodeIntegerForKey:@"confirmationBlobVersion"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v4 = [(PKWrappedPayment *)self transactionIdentifier];
  [v13 encodeObject:v4 forKey:@"transactionIdentifier"];

  v5 = [(PKWrappedPayment *)self transactionData];
  [v13 encodeObject:v5 forKey:@"transactionData"];

  v6 = [(PKWrappedPayment *)self transactionInstructionsSignature];
  [v13 encodeObject:v6 forKey:@"transactionInstructionsSignature"];

  v7 = [(PKWrappedPayment *)self certificates];
  [v13 encodeObject:v7 forKey:@"certificates"];

  v8 = [(PKWrappedPayment *)self merchantCountryCode];
  [v13 encodeObject:v8 forKey:@"merchantCountryCode"];

  v9 = [(PKWrappedPayment *)self kextBlacklistVersion];
  [v13 encodeObject:v9 forKey:@"kextBlacklistVersion"];

  v10 = [(PKWrappedPayment *)self enrollmentSignature];
  [v13 encodeObject:v10 forKey:@"enrollmentSignature"];

  v11 = [(PKWrappedPayment *)self SEPCertificates];
  [v13 encodeObject:v11 forKey:@"SEPCertificates"];

  v12 = [(PKWrappedPayment *)self confirmationBlobHash];
  [v13 encodeObject:v12 forKey:@"confirmationBlobHash"];

  [v13 encodeInteger:-[PKWrappedPayment confirmationBlobVersion](self forKey:{"confirmationBlobVersion"), @"confirmationBlobVersion"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = [(PKWrappedPayment *)self transactionIdentifier];
  v6 = [(PKWrappedPayment *)self transactionData];
  v7 = [v6 length];
  v8 = [(PKWrappedPayment *)self certificates];
  v9 = [v3 stringWithFormat:@"<%@: %p transactionId = %@; transactionData = %tu bytes; certificates = %@;", v4, self, v5, v7, v8];;

  v10 = [(PKWrappedPayment *)self SEPCertificates];
  [v9 appendFormat:@" SEPCertificates = %@;", v10];

  v11 = [(PKWrappedPayment *)self confirmationBlobHash];
  [v9 appendFormat:@" confirmationBlobHash = %@;", v11];

  [v9 appendFormat:@" confirmationBlobVersion: %d", -[PKWrappedPayment confirmationBlobVersion](self, "confirmationBlobVersion")];
  v12 = [(PKWrappedPayment *)self transactionInstructionsSignature];

  if (v12)
  {
    v13 = [(PKWrappedPayment *)self transactionInstructionsSignature];
    [v9 appendFormat:@" transactionInstructionsSignature = %tu bytes;", objc_msgSend(v13, "length")];
  }

  v14 = [(PKWrappedPayment *)self enrollmentSignature];

  if (v14)
  {
    v15 = [(PKWrappedPayment *)self enrollmentSignature];
    [v9 appendFormat:@" enrollmentSignature: %@;", v15];
  }

  [v9 appendString:@">"];
  v16 = [v9 copy];

  return v16;
}

@end